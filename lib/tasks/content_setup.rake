require "highline"

desc "Setup seed content for the site"
task content_setup: :environment do
  if ENV["IS_REVIEW_APP"] != "true"
    answer = HighLine.new.ask("Cette action va détruire votre contenu existant. Souhaitez-vous continuer? oui ou non")
    next unless answer == "oui"
  end

  clean_spina_db
  Rake::Task["spina:first_deploy"].execute
  # setup_pages_content
  # setup_footer
end

def clean_spina_db
  Spina::Account.destroy_all
  Spina::Page.destroy_all
end

def setup_pages_content
  Spina::Page.all.each do |page|
    next unless File.exist? Rails.root.join(page_path(page))

    page.update(page_params(page))
  end
end

def setup_footer
  Spina::Account.first.update({fr_content_attributes: layout_parts})
end

def theme
  @theme ||= Spina::Theme.find_by_name("default")
end

def page_params(page)
  {fr_content_attributes: page_parts(page)}
end

def page_path(page)
  "lib/tasks/site_content_seed/#{page.name}.json"
end

# Merge the seed_parts (from the json seed file) with the parts from the theme
def page_parts(page)
  seed_parts = JSON.parse(File.read(page_path(page)))

  page_theme_parts(page).map do |part|
    correct_seed_part = seed_parts.find { |p| p["name"].to_s == part[:name].to_s }

    {name: part.dig(:name), type: part.dig(:part_type),
     title: part.dig(:title), content: correct_seed_part["content"] || "",
     content_attributes: correct_seed_part["content_attributes"] || []}
  end
end

# Build parts from the default.rb theme setup file
def page_theme_parts(page)
  parts = theme.view_templates.find do |view_template|
    view_template[:name].to_s == page.view_template.to_s
  end&.dig(:parts) || []

  parts.map { |part| theme.parts.find { |p| p[:name].to_s == part.to_s } }
end

def layout_parts
  seed_parts = JSON.parse(File.read("lib/tasks/site_content_seed/layout.json"))

  layout_theme_parts.map do |part|
    correct_seed_part = seed_parts.find { |p| p["name"].to_s == part[:name].to_s }

    {name: part.dig(:name), type: part.dig(:part_type),
     title: part.dig(:title), content: correct_seed_part["content"]}
  end
end

def layout_theme_parts
  theme.layout_parts.map { |part| theme.parts.find { |p| p[:name].to_s == part.to_s } }
end
