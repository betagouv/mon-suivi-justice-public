require 'rails_helper'

RSpec.feature 'Accessibility', type: :feature do
  describe 'pages#preparer_sap_chalon_sur_saone', js: true do
    it 'is accessible' do
      visit preparer_sap_chalon_sur_saone_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#ma_reinsertion_vienne', js: true do
    it 'is accessible' do
      visit ma_reinsertion_vienne_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#preparer_spip05', js: true do
    it 'is accessible' do
      visit preparer_spip05_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#landing', js: true do
    it 'is accessible' do
      visit landing_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#comprendre_ma_peine', js: true do
    it 'is accessible' do
      visit comprendre_ma_peine_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#peine_emprisonnement', js: true do
    it 'is accessible' do
      visit peine_emprisonnement_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#regles_essentielles', js: true do
    it 'is accessible' do
      visit regles_essentielles_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#obligations_personnelles', js: true do
    it 'is accessible' do
      visit obligations_personnelles_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#mes_interlocuteurs', js: true do
    it 'is accessible' do
      visit mes_interlocuteurs_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#sursis_probatoire', js: true do
    it 'is accessible' do
      visit sursis_probatoire_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#travail_interet_general', js: true do
    it 'is accessible' do
      visit travail_interet_general_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#suivi_socio_judiciaire', js: true do
    it 'is accessible' do
      visit suivi_socio_judiciaire_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#jour_amende', js: true do
    it 'is accessible' do
      visit jour_amende_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#stage', js: true do
    it 'is accessible' do
      visit stage_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#amenagements_de_peine', js: true do
    it 'is accessible' do
      visit amenagements_de_peine_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#preparer_ma_convocation', js: true do
    it 'is accessible' do
      visit preparer_ma_convocation_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#investir_ma_reinsertion', js: true do
    it 'is accessible' do
      visit investir_ma_reinsertion_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#donnees_personnelles', js: true do
    it 'is accessible' do
      visit donnees_personnelles_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#qui_sommes_nous', js: true do
    it 'is accessible' do
      visit qui_sommes_nous_path
      expect(page).to be_axe_clean
    end
  end

  describe 'pages#mentions_legales', js: true do
    it 'is accessible' do
      visit mentions_legales_path
      expect(page).to be_axe_clean
    end
  end
end