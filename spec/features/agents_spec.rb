require "rails_helper"

RSpec.feature "Agent", type: :feature do
  let(:convict) { FactoryBot.create(:convict) }

  before do
    login_as(convict, scope: :convict)
  end

  context "when the Agent is present" do
    around do |example|
      VCR.use_cassette("mon_suivi_justice/convict") { example.run }
    end

    describe "show" do
      it "displays the correct content" do
        visit agent_path

        expect(page).to have_content("Contact CPIP")
        expect(page).to have_content("Meilleure Cpip")
        expect(page).to have_content("SPIP A")
        expect(page).to have_content("+33777777777")
        expect(page).to have_content("cpip@justice.fr")
      end
    end
  end

  context "when the Agent is absent" do
    around do |example|
      VCR.use_cassette("mon_suivi_justice/convict_no_agent") { example.run }
    end

    describe "show" do
      it "displays the correct content" do
        visit agent_path

        expect(page).not_to have_content("Contact CPIP")
      end
    end
  end
end
