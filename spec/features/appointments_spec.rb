require "rails_helper"

RSpec.feature "Appointments", type: :feature do
  with_env("MSJ_API_URL", "https://agents.mon-suivi-justice.incubateur.net/api/v1")

  let(:convict) { FactoryBot.create(:convict, msj_id: 1) }

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

      within("#next-appointment") do
        expect(page).to have_content("Dans 55 jours")
        expect(page).to have_content("Mardi 1 mars à 10h00")
        expect(page).to have_content("1 rue de la Poste, 05100 Briançon")
      end

      within("#future-appointments") do
        expect(page).to have_content("Lundi 25 avril à 11h00")
      end

      within("#past-appointments") do
        expect(page).to have_content("Lundi 20 décembre à 14h00")
      end
    end
  end

  describe "show" do
    it "displays the correct content" do
      visit appointment_path(convict.next_appointment.id)

      expect(page).to have_content("Dans 55 jours")
      expect(page).to have_content("Mardi 1 mars à 10h00")
      expect(page).to have_content("1 rue de la Poste, 05100 Briançon")
      expect(page).to have_content("Planifié")
      expect(page).to have_content("RDV de suivi SPIP")
    end
  end
end
