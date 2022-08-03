class InvestirPageGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  def copy_template
    copy_file "investir_template.html.erb", "app/views/pages/#{name}.html.erb"
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

  def edit_spec
    inject_into_file 'spec/requests/pages_spec.rb', after: "get path\n  end\n\n" do
      "  describe 'GET /#{name}' do\n"\
      "    let(:path) { #{name}_path }\n\n"\
      "    it { is_expected.to be_successful }\n"\
      "  end\n\n"
    end
  end

  def edit_config_file
    title = name.gsub('_', ' ').titleize

    inject_into_file 'config/initializers/themes/default.rb', after: "theme.view_templates = [\n" do
      "    {name: '#{name}', title: '#{title}', parts: %w[main_title main_description rich_collapse]},\n"
    end
    inject_into_file 'config/initializers/themes/default.rb', after: "theme.custom_pages = [\n" do
      "    {name: '#{name}', title: '#{title}', view_template: '#{name}'},\n"
    end
  end
end
