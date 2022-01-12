desc "Setup basic content for the site"
task content_setup: :environment do
  content = JSON.parse(File.read("lib/tasks/assets/site-content.json"))
  Spina::Page.all.each do |page|
    content.dig(page.name)&.each do |part_name, content|
      page.find_part(part_name)&.content = content
    end
    page.save
  end
end
