require "rails_helper"

RSpec.feature "Appointments", type: :feature do
  let(:convict) { FactoryBot.create(:convict) }

  before do
    Timecop.freeze(Time.local(2022, 1, 5, 10, 0, 0))
    login_as(convict, scope: :convict)
  end

  around do |example|
    VCR.use_cassette("mon_suivi_justice/convict") { example.run }
  end

  after do
    Timecop.return
  end

  describe "index" do
    it "displays the correct content" do
      visit appointments_path

      within('#next-appointment') do
        expect(page).to have_content("Dans 55 jours")
        expect(page).to have_content("mardi 1 mars à 10h00")
        expect(page).to have_content("1 rue de la Poste, 05100 Briançon")
      end

      within('#future-appointments') do
        expect(page).to have_content("lundi 25 avril à 11h00")
      end

      within('#past-appointments') do
        expect(page).to have_content("lundi 20 décembre à 14h00")
      end
    end
  end
end
