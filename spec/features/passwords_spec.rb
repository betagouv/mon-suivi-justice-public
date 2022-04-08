require "rails_helper"

RSpec.feature "Password", type: :feature do
  before do
    FactoryBot.create(:account)
    FactoryBot.create(:convict, phone: "+33666666666", password: "exampleE1.", password_confirmation: "exampleE1.")
    ActiveJob::Base.queue_adapter = :test
  end

  describe "#new" do
    it "enqueues a password reminder" do
      visit new_convict_password_path

      fill_in "convict_phone", with: "+33666666666"

      expect { click_button "Envoyez-moi des instructions pour réinitialiser mon mot de passe" }.to have_enqueued_job(SmsSenderJob).once
      expect(page).to have_content("Un SMS avec un lien de réinitialisation de votre mot de passe vous a été envoyé")
    end
  end
end
