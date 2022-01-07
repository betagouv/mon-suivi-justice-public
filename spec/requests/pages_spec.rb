require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  subject { response }

  before { get path }

  describe 'GET root' do
    let(:path) { root_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /landing' do
    let(:path) { landing_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /comprendre_ma_peine' do
    let(:path) { comprendre_ma_peine_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /regles_essentielles' do
    let(:path) { regles_essentielles_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /obligations_personnelles' do
    let(:path) { obligations_personnelles_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /sursis_probatoire' do
    let(:path) { sursis_probatoire_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /travail_interet_general' do
    let(:path) { travail_interet_general_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /suivi_socio_judiciaire' do
    let(:path) { suivi_socio_judiciaire_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /stage' do
    let(:path) { stage_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /amenagements_de_peine' do
    let(:path) { amenagements_de_peine_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /preparer_mon_rdv' do
    let(:path) { preparer_mon_rdv_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /preparer_spip92' do
    let(:path) { preparer_spip92_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /preparer_sap_nanterre' do
    let(:path) { preparer_sap_nanterre_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /preparer_spip28' do
    let(:path) { preparer_spip28_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /preparer_sap_chartres' do
    let(:path) { preparer_sap_chartres_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /ma_reinsertion' do
    let(:path) { ma_reinsertion_path }

    it { is_expected.to be_successful }
  end

  describe 'GET /donnees_personnelles' do
    let(:path) { donnees_personnelles_path }

    it { is_expected.to be_successful }
  end

  # get :landing
  #   get :comprendre_ma_peine
  #   get :regles_essentielles
  #   get :obligations_personnelles
  #   get :sursis_probatoire
  #   get :travail_interet_general
  #   get :suivi_socio_judiciaire
  #   get :stage
  #   get :amenagements_de_peine
  #   get :preparer_mon_rdv
  #   get :preparer_spip92
  #   get :preparer_sap_nanterre
  #   get :preparer_spip28
  #   get :preparer_sap_chartres
  #   get :ma_reinsertion
  #   get :donnees_personnelles
end
