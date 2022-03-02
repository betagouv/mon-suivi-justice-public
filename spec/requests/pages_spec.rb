require "rails_helper"

RSpec.describe "Pages", type: :request do
  subject { response }

  before do
    FactoryBot.create(:account)
    get path
  end

  describe "GET root" do
    let(:path) { root_path }

    it { is_expected.to be_successful }
  end

  describe "GET /landing" do
    let(:path) { landing_path }

    it { is_expected.to be_successful }
  end

  describe "GET /comprendre_ma_peine" do
    let(:path) { comprendre_ma_peine_path }

    it { is_expected.to be_successful }
  end

  describe "GET /regles_essentielles" do
    let(:path) { regles_essentielles_path }

    it { is_expected.to be_successful }
  end

  describe "GET /obligations_personnelles" do
    let(:path) { obligations_personnelles_path }

    it { is_expected.to be_successful }
  end

  describe "GET /sursis_probatoire" do
    let(:path) { sursis_probatoire_path }

    it { is_expected.to be_successful }
  end

  describe "GET /travail_interet_general" do
    let(:path) { travail_interet_general_path }

    it { is_expected.to be_successful }
  end

  describe "GET /suivi_socio_judiciaire" do
    let(:path) { suivi_socio_judiciaire_path }

    it { is_expected.to be_successful }
  end

  describe "GET /stage" do
    let(:path) { stage_path }

    it { is_expected.to be_successful }
  end

  describe "GET /amenagements_de_peine" do
    let(:path) { amenagements_de_peine_path }

    it { is_expected.to be_successful }
  end

  describe "GET /preparer_mon_rdv" do
    let(:path) { preparer_mon_rdv_path }

    it { is_expected.to be_successful }
  end

  describe "GET /preparer_spip92" do
    let(:path) { preparer_spip92_path }

    it { is_expected.to be_successful }
  end

  describe "GET /preparer_sap_nanterre" do
    let(:path) { preparer_sap_nanterre_path }

    it { is_expected.to be_successful }
  end

  describe "GET /preparer_spip28" do
    let(:path) { preparer_spip28_path }

    it { is_expected.to be_successful }
  end

  describe "GET /preparer_sap_chartres" do
    let(:path) { preparer_sap_chartres_path }

    it { is_expected.to be_successful }
  end

  describe "GET /investir_ma_reinsertion" do
    let(:path) { investir_ma_reinsertion_path }

    it { is_expected.to be_successful }
  end

  describe "GET /donnees_personnelles" do
    let(:path) { donnees_personnelles_path }

    it { is_expected.to be_successful }
  end

  describe "GET /qui_sommes_nous" do
    let(:path) { qui_sommes_nous_path }

    it { is_expected.to be_successful }
  end

  describe "GET /peine_emprisonnement" do
    let(:path) { peine_emprisonnement_path }

    it { is_expected.to be_successful }
  end
end
