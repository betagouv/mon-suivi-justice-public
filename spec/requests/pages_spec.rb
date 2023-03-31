require "rails_helper"

RSpec.describe "Pages", type: :request do
  subject { response }

  before(:all) do
    FactoryBot.create(:account)
  end

  describe 'GET /preparer_sap_privas' do
    let(:path) { preparer_sap_privas_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_spip41_loir_et_cher' do
    let(:path) { preparer_spip41_loir_et_cher_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_spip95_val_doise' do
    let(:path) { preparer_spip95_val_doise_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_preparer_spip_reims' do
    let(:path) { preparer_preparer_spip_reims_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_preparer_sap_gap' do
    let(:path) { preparer_preparer_sap_gap_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_sap_orleans' do
    let(:path) { preparer_sap_orleans_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_spip_loiret_montargis' do
    let(:path) { preparer_spip_loiret_montargis_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_spip31_toulouse' do
    let(:path) { preparer_spip31_toulouse_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_spip31_saint_gaudens' do
    let(:path) { preparer_spip31_saint_gaudens_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_spip_45' do
    let(:path) { preparer_spip_45_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_spip_51' do
    let(:path) { preparer_spip_51_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  describe 'GET /preparer_spip48_lozere' do
    let(:path) { preparer_spip48_lozere_path }

    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip74_annecy' do
    let(:path) { preparer_spip74_annecy_path }

    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip_charleville_mezieres' do
    let(:path) { preparer_spip_charleville_mezieres_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_TJ_bayonne' do
    let(:path) { preparer_TJ_bayonne_path }

    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_TJ_coutances' do
    let(:path) { preparer_TJ_coutances_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_tj_lyon' do
    let(:path) { preparer_tj_lyon_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip62' do
    let(:path) { preparer_spip62_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip37' do
    let(:path) { preparer_spip37_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  
  describe 'GET /preparer_SPIP_53' do
    let(:path) { preparer_SPIP_53_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end
  
  describe 'GET /preparer_spip_71_macon' do
    let(:path) { preparer_spip_71_macon_path }
                
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip_66' do
    let(:path) { preparer_spip_66_path }
            
    it do
      get path
      is_expected.to be_successful
    end
  end
  
  describe 'GET /preparer_spip71_chalon_sur_saone' do
    let(:path) { preparer_spip71_chalon_sur_saone_path }
        
    it do
      get path
      is_expected.to be_successful
    end
  end
  
  describe 'GET /preparer_sap_blois' do
    let(:path) { preparer_sap_blois_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_sables_d_olonne' do
    let(:path) { preparer_sap_sables_d_olonne_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_poitiers' do
    let(:path) { preparer_sap_poitiers_path }

    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_dax' do
    let(:path) { preparer_sap_dax_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip21' do
    let(:path) { preparer_spip21_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_chalons_en_champagne' do
    let(:path) { preparer_sap_chalons_en_champagne_path }
    
    it do
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip972' do
    let(:path) { preparer_spip972_path }
    
    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip91' do
    let(:path) { preparer_spip91_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip61_alencon' do
    let(:path) { preparer_spip61_alencon_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /ma_reinsertion_yvelines' do
    let(:path) { ma_reinsertion_yvelines_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip78' do
    let(:path) { preparer_spip78_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_versailles' do
    let(:path) { preparer_sap_versailles_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip61_argentan' do
    let(:path) { preparer_spip61_argentan_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_bourges' do
    let(:path) { preparer_sap_bourges_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_marseille' do
    let(:path) { preparer_sap_marseille_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_boulogne_sur_mer' do
    let(:path) { preparer_sap_boulogne_sur_mer_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_avesnes_sur_helpe' do
    let(:path) { preparer_sap_avesnes_sur_helpe_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_meaux' do
    let(:path) { preparer_sap_meaux_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_melun' do
    let(:path) { preparer_sap_melun_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_caen' do
    let(:path) { preparer_sap_caen_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_villefranche_sur_saone' do
    let(:path) { preparer_sap_villefranche_sur_saone_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_pontoise' do
    let(:path) { preparer_sap_pontoise_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_nantes' do
    let(:path) { preparer_sap_nantes_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_argentan' do
    let(:path) { preparer_sap_argentan_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_le_mans' do
    let(:path) { preparer_sap_le_mans_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_montlucon' do
    let(:path) { preparer_sap_montlucon_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_alencon' do
    let(:path) { preparer_sap_alencon_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip_st_quentin' do
    let(:path) { preparer_spip_st_quentin_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip_laon' do
    let(:path) { preparer_spip_laon_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip_soissons' do
    let(:path) { preparer_spip_soissons_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_annecy' do
    let(:path) { preparer_sap_annecy_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip_lorient' do
    let(:path) { preparer_spip_lorient_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip_vannes' do
    let(:path) { preparer_spip_vannes_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_bourgoin_jallieu' do
    let(:path) { preparer_sap_bourgoin_jallieu_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /ma_reinsertion_morbihan' do
    let(:path) { ma_reinsertion_morbihan_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_sap_nevers' do
    let(:path) { preparer_sap_nevers_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /ma_reinsertion_rhone' do
    let(:path) { ma_reinsertion_rhone_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip_58' do
    let(:path) { preparer_spip_58_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /ma_reinsertion_nievre' do
    let(:path) { ma_reinsertion_nievre_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /ma_reinsertion_seine_st_denis' do
    let(:path) { ma_reinsertion_seine_st_denis_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe 'GET /preparer_spip93' do
    let(:path) { preparer_spip93_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET root" do
    let(:path) { root_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /landing" do
    let(:path) { landing_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /comprendre_ma_peine" do
    let(:path) { comprendre_ma_peine_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /regles_essentielles" do
    let(:path) { regles_essentielles_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /obligations_personnelles" do
    let(:path) { obligations_personnelles_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /mes_interlocuteurs" do
    let(:path) { mes_interlocuteurs_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /sursis_probatoire" do
    let(:path) { sursis_probatoire_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /travail_interet_general" do
    let(:path) { travail_interet_general_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /suivi_socio_judiciaire" do
    let(:path) { suivi_socio_judiciaire_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /stage" do
    let(:path) { stage_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /amenagements_de_peine" do
    let(:path) { amenagements_de_peine_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_mon_rdv" do
    let(:path) { preparer_mon_rdv_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip92" do
    let(:path) { preparer_spip92_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_nanterre" do
    let(:path) { preparer_sap_nanterre_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip28" do
    let(:path) { preparer_spip28_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_chartres" do
    let(:path) { preparer_sap_chartres_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /investir_ma_reinsertion" do
    let(:path) { investir_ma_reinsertion_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /donnees_personnelles" do
    let(:path) { donnees_personnelles_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /qui_sommes_nous" do
    let(:path) { qui_sommes_nous_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /peine_emprisonnement" do
    let(:path) { peine_emprisonnement_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /jour_amende" do
    let(:path) { jour_amende_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip75" do
    let(:path) { preparer_spip75_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_paris" do
    let(:path) { preparer_sap_paris_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_metz" do
    let(:path) { preparer_sap_metz_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_angers" do
    let(:path) { preparer_sap_angers_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_thionville" do
    let(:path) { preparer_sap_thionville_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_mulhouse" do
    let(:path) { preparer_sap_mulhouse_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_reims" do
    let(:path) { preparer_sap_reims_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_saverne" do
    let(:path) { preparer_sap_saverne_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_val_de_briey" do
    let(:path) { preparer_sap_val_de_briey_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_chaumont" do
    let(:path) { preparer_sap_chaumont_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_grasse" do
    let(:path) { preparer_sap_grasse_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_agen" do
    let(:path) { preparer_sap_agen_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_bordeaux" do
    let(:path) { preparer_sap_bordeaux_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_niort" do
    let(:path) { preparer_sap_niort_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_digne_les_bains" do
    let(:path) { preparer_sap_digne_les_bains_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_nice" do
    let(:path) { preparer_sap_nice_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_bergerac" do
    let(:path) { preparer_sap_bergerac_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_gueret" do
    let(:path) { preparer_sap_gueret_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_draguignan" do
    let(:path) { preparer_sap_draguignan_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_libourne" do
    let(:path) { preparer_sap_libourne_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_dijon" do
    let(:path) { preparer_sap_dijon_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_toulon" do
    let(:path) { preparer_sap_toulon_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_tours" do
    let(:path) { preparer_sap_tours_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_montbeliard" do
    let(:path) { preparer_sap_montbeliard_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_sap_saintes" do
    let(:path) { preparer_sap_saintes_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip18" do
    let(:path) { preparer_spip18_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip49" do
    let(:path) { preparer_spip49_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip32" do
    let(:path) { preparer_spip32_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip69" do
    let(:path) { preparer_spip69_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip77" do
    let(:path) { preparer_spip77_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip36" do
    let(:path) { preparer_spip36_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip54_val_de_briey" do
    let(:path) { preparer_spip54_val_de_briey_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip54_nancy" do
    let(:path) { preparer_spip54_nancy_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip2A_ajaccio" do
    let(:path) { preparer_spip2A_ajaccio_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip2B_bastia" do
    let(:path) { preparer_spip2B_bastia_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip17_rochelle" do
    let(:path) { preparer_spip17_rochelle_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip17_rochefort" do
    let(:path) { preparer_spip17_rochefort_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /preparer_spip17_saintes" do
    let(:path) { preparer_spip17_saintes_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_hauts_de_seine" do
    let(:path) { ma_reinsertion_hauts_de_seine_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_eure_et_loir" do
    let(:path) { ma_reinsertion_eure_et_loir_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_paris" do
    let(:path) { ma_reinsertion_paris_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_indre" do
    let(:path) { ma_reinsertion_indre_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_seine_et_marne" do
    let(:path) { ma_reinsertion_seine_et_marne_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_aisne" do
    let(:path) { ma_reinsertion_aisne_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_haute_corse" do
    let(:path) { ma_reinsertion_haute_corse_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_corse_du_sud" do
    let(:path) { ma_reinsertion_corse_du_sud_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_mayenne" do
    let(:path) { ma_reinsertion_mayenne_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_pyrenees_orientales" do
    let(:path) { ma_reinsertion_pyrenees_orientales_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end


  describe "GET /ma_reinsertion_loir_et_cher" do
    let(:path) { ma_reinsertion_loir_et_cher_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /ma_reinsertion_val_d_oise" do
    let(:path) { ma_reinsertion_val_d_oise_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /mentions_legales" do
    let(:path) { mentions_legales_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end

  describe "GET /declaration_accessibilite" do
    let(:path) { declaration_accessibilite_path }

    it do 
      get path
      is_expected.to be_successful
    end
  end
end
