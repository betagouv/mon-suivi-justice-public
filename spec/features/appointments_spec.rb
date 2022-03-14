require "rails_helper"

RSpec.feature "Appointments", type: :feature do
  let(:convict) { FactoryBot.create(:convict) }

  before do
    login_as(convict, scope: :convict)
  end

  around do |example|
    VCR.use_cassette("mon_suivi_justice/convict") { example.run }
  end

  describe "index" do
    it "displays the correct content" do
      visit appointments_path
      expect(page).to have_content("test")
    end
  end
end
