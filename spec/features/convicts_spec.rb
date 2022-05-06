require "rails_helper"

RSpec.feature "Convict", type: :feature do
  with_env("MSJ_API_URL", "https://agents.mon-suivi-justice.incubateur.net/api/v1")

  let(:convict) { FactoryBot.create(:convict, msj_id: 1) }

  before do
    login_as(convict, scope: :convict)
  end

  around do |example|
    VCR.use_cassette("mon_suivi_justice/convict") { example.run }
  end

  describe "show" do
    it "displays the correct content" do
      visit convict_path

      expect(page).to have_content("Super Convict")
      expect(page).to have_content("06 66 66 66 66")
    end
  end
end
