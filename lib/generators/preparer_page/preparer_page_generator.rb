class PreparerPageGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  class_option :image_name, type: :string
  class_option :department, type: :string

  def edit_spec
    inject_into_file 'spec/requests/pages_spec.rb', after: "get path\n  end\n\n" do
      "  describe 'GET /#{name}' do\n"\
      "    let(:path) { #{name}_path }\n\n"\
      "    it { is_expected.to be_successful }\n"\
      "  end\n\n"
    end
  end

  def edit_routes
    inject_into_file 'config/routes.rb', after: "scope controller: :pages do\n" do
      "    get :#{name}\n"
    end
  end

  def edit_controller
    inject_into_file 'app/controllers/pages_controller.rb', after: "include Spina::Api::Paginable\n" do
      "\n  def #{name}\n  end \n"
    end
  end

  def copy_template
    copy_file "preparer_template.html.erb", "app/views/pages/#{name}.html.erb"
    gsub_file "app/views/pages/#{name}.html.erb", 'placeholder.jpg', "#{options.image_name}"
  end

  def edit_config_file
    title = name.gsub('_', ' ').titleize

    inject_into_file 'config/initializers/themes/default.rb', after: "theme.view_templates = [\n" do
      "    {name: '#{name}', title: '#{title}', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},\n"
    end

    inject_into_file 'config/initializers/themes/default.rb', after: "theme.custom_pages = [\n" do
      "    {name: '#{name}', title: '#{title}', view_template: '#{name}'},\n"
    end

    line = IO.readlines("config/initializers/themes/default.rb")[6]
    current_zipcodes = line[15..-10].gsub('"', '').split(', ')

    return if current_zipcodes.include?(options.department)

    current_zipcodes << options.department
    new_config_line = "ZIP_CODES ||= #{current_zipcodes}.freeze\n"
    gsub_file "config/initializers/themes/default.rb", line, new_config_line
  end
end
