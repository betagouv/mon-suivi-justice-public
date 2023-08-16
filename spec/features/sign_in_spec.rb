require "rails_helper"

RSpec.feature "Sign In", type: :feature do
  with_env("MSJ_API_URL", "https://agents.mon-suivi-justice.incubateur.net/api/v1")

  let!(:convict) do
    FactoryBot.create(:convict, phone: "+33666666666", password: "exampleE1.", password_confirmation: "exampleE1.")
  end

  around do |example|
    VCR.use_cassette("mon_suivi_justice/convict") { example.run }
  end

  it "Signs in with correct phone" do
    visit new_convict_session_path

    fill_in "convict_phone", with: "+33666666666"
    fill_in "convict_password", with: "exampleE1."
    click_button "Je me connecte"
    expect(page).to have_content("Connecté")
    expect(page).to have_content("Vos convocations")
  end

  it "Signs in with phone without country code" do
    visit new_convict_session_path

    fill_in "convict_phone", with: "0666666666"
    fill_in "convict_password", with: "exampleE1."
    click_button "Je me connecte"
    expect(page).to have_content("Connecté")
    expect(page).to have_content("Vos convocations")
  end

  it "Signs in with phone with spaces" do
    visit new_convict_session_path

    fill_in "convict_phone", with: "06 66 66 66 66"
    fill_in "convict_password", with: "exampleE1."
    click_button "Je me connecte"
    expect(page).to have_content("Connecté")
    expect(page).to have_content("Vos convocations")
  end

  it "Does not sign in with wrong phone" do
    visit new_convict_session_path

    fill_in "convict_phone", with: "+33666666667"
    fill_in "convict_password", with: "exampleE1."
    click_button "Je me connecte"
    expect(page).to have_content("Numéro de téléphone ou mot de passe incorrect")
  end
end
