class PagesController < Spina::ApplicationController
  before_action :set_spina_page
  skip_before_action :authenticate_convict!
  layout "public"

  # Controller inherit from Spina::ApplicationController
  # Set Spina::Current.page
  # Create custom pages in theme
  # rails spina:bootstrap
  # Ajouter contenu dans les vues
  # Spina::Navigation.find_by(name: "main").pages.pluck(:name) pour la navigation

  include Spina::Api::Paginable
  def preparer_sap_chalon_sur_saone
  end

  def preparer_sap_roanne
  end

  def preparer_spip19_brive
  end

  def preparer_spip19_tulle
  end

  def preparer_sap_brest
  end

  def ma_reinsertion_vienne
  end

  def preparer_spip81_castres
  end

  def preparer_sap_avignon
  end

  def preparer_spip89_auxerre
  end

  def preparer_sap_dunkerque
  end

  def preparer_spip81_albi
  end

  def preparer_spip29_quimper
  end

  def preparer_sap_mont_de_marsan
  end

  def preparer_spip44_nantes
  end

  def preparer_spip86
  end

  def preparer_spip06_mougins
  end

  def ma_reinsertion_vaucluse
  end

  def ma_reinsertion_alpes_maritimes
  end

  def preparer_spip06_nice
  end

  def preparer_spip84_carpentras
  end

  def preparer_sap_montargis
  end

  def preparer_spip22_guingamp
  end

  def preparer_spip22_saint_brieuc
  end

  def ma_reinsertion_aube
  end

  def ma_reinsertion_haute_marne
  end

  def preparer_sap_vienne
  end

  def preparer_sap_macon
  end

  def preparer_spip52_chaumont
  end

  def preparer_spip10_troyes
  end

  def preparer_sap_chateauroux
  end

  def preparer_spip89_sens
  end

  def preparer_spip69_villefranche_sur_saone
  end

  def preparer_sap_arras
  end

  def preparer_spip76_dieppe
  end

  def preparer_sap_limoges
  end

  def ma_reinsertion_territoire_de_belfort
  end

  def ma_reinsertion_hautes_alpes
  end

  def ma_reinsertion_haute_saone
  end

  def preparer_spip76_le_havre
  end

  def preparer_spip07_privas
  end

  def preparer_sap_albi
  end

  def preparer_sap_brive_la_gaillarde
  end

  def preparer_sap_la_rochelle
  end

  def preparer_spip70_vesoul
  end

  def preparer_spip70_lure
  end

  def preparer_spip90_belfort
  end

  def preparer_sap82_montauban
  end

  def preparer_spip88_saint_die_des_vosges
  end

  def preparer_spip88_epinal
  end

  def preparer_spip05
  end

  def preparer_sap_foix
  end

  def preparer_sap_bobigny
  end

  def preparer_sap_clermond_ferrand
  end

  def preparer_spip67_saverne
  end

  def preparer_sap_castres
  end

  def preparer_spip09_foix
  end

  def preparer_spip47
  end

  def ma_reinsertion_champagne_ardenne
  end

  def ma_reinsertion_val_d_oise
  end

  def ma_reinsertion_loir_et_cher
  end

  def preparer_sap_privas
  end

  def preparer_spip41_loir_et_cher
  end

  def preparer_spip95_val_doise
  end

  def preparer_preparer_spip_reims
  end

  def preparer_preparer_sap_gap
  end

  def preparer_sap_orleans
  end

  def preparer_spip_loiret_montargis
  end

  def preparer_spip31_toulouse
  end

  def preparer_spip31_saint_gaudens
  end

  def preparer_spip_45
  end

  def preparer_spip_51
  end

  def preparer_spip48_lozere
  end

  def preparer_TJ_bayonne
  end

  def preparer_TJ_coutances
  end

  def preparer_spip74_annecy
  end

  def preparer_spip_charleville_mezieres
  end

  def preparer_tj_lyon
  end

  def preparer_spip62
  end

  def preparer_spip37
  end

  def ma_reinsertion_pyrenees_orientales
  end

  def ma_reinsertion_mayenne
  end

  def preparer_SPIP_53
  end

  def preparer_spip_71_macon
  end

  def preparer_spip_66
  end

  def preparer_spip71_chalon_sur_saone
  end

  def preparer_sap_blois
  end

  def preparer_sap_sables_d_olonne
  end

  def preparer_sap_poitiers
  end

  def preparer_spip21
  end

  def preparer_sap_dax
  end

  def preparer_sap_chalons_en_champagne
  end

  def preparer_spip972
  end

  def preparer_spip91
  end

  def preparer_spip61_alencon
  end

  def ma_reinsertion_yvelines
  end

  def preparer_spip78
  end

  def preparer_sap_versailles
  end

  def preparer_spip61_argentan
  end

  def preparer_sap_bourges
  end

  def preparer_sap_marseille
  end

  def preparer_sap_boulogne_sur_mer
  end

  def preparer_sap_avesnes_sur_helpe
  end

  def preparer_sap_meaux
  end

  def preparer_sap_melun
  end

  def preparer_sap_caen
  end

  def preparer_sap_villefranche_sur_saone
  end

  def preparer_sap_pontoise
  end

  def preparer_sap_nantes
  end

  def preparer_sap_argentan
  end

  def preparer_sap_le_mans
  end

  def preparer_sap_montlucon
  end

  def preparer_sap_alencon
  end

  def preparer_spip_st_quentin
  end

  def preparer_spip_laon
  end

  def preparer_spip_soissons
  end

  def preparer_sap_annecy
  end

  def preparer_spip_lorient
  end

  def preparer_spip_vannes
  end

  def preparer_sap_bourgoin_jallieu
  end

  def ma_reinsertion_morbihan
  end

  def preparer_sap_nevers
  end

  def ma_reinsertion_rhone
  end

  def preparer_spip_58
  end

  def ma_reinsertion_nievre
  end

  def ma_reinsertion_seine_st_denis
  end

  def preparer_spip93
  end

  def landing
  end

  def comprendre_mes_mesures
  end

  def regles_essentielles
  end

  def peine_emprisonnement
  end

  def obligations_personnelles
  end

  def mes_interlocuteurs
  end

  def sursis_probatoire
  end

  def jour_amende
  end

  def travail_interet_general
  end

  def suivi_socio_judiciaire
  end

  def stage
  end

  def amenagements_de_peine
  end

  def preparer_mon_rdv
    @zip_codes = ZIP_CODES.sort
  end

  def preparer_ma_convocation
    @zip_codes = ZIP_CODES.sort
  end

  def preparer_spip92
  end

  def preparer_sap_nanterre
  end

  def preparer_spip28
  end

  def preparer_sap_chartres
  end

  def preparer_spip75
  end

  def preparer_spip32
  end

  def preparer_sap_paris
  end

  def preparer_sap_metz
  end

  def preparer_sap_angers
  end

  def preparer_sap_thionville
  end

  def preparer_sap_mulhouse
  end

  def preparer_sap_reims
  end

  def preparer_sap_saverne
  end

  def preparer_sap_val_de_briey
  end

  def preparer_sap_chaumont
  end

  def preparer_sap_grasse
  end

  def preparer_sap_agen
  end

  def preparer_sap_niort
  end

  def preparer_sap_bordeaux
  end

  def preparer_sap_nice
  end

  def preparer_sap_bergerac
  end

  def preparer_sap_gueret
  end

  def preparer_sap_draguignan
  end

  def preparer_sap_libourne
  end

  def preparer_sap_dijon
  end

  def preparer_sap_toulon
  end

  def preparer_sap_tours
  end

  def preparer_sap_digne_les_bains
  end

  def preparer_sap_montbeliard
  end

  def preparer_sap_saintes
  end

  def preparer_spip18
  end

  def preparer_spip36
  end

  def preparer_spip49
  end

  def preparer_spip69
  end

  def preparer_spip77
  end

  def preparer_spip54_val_de_briey
  end

  def preparer_spip54_nancy
  end

  def preparer_spip17_rochelle
  end

  def preparer_spip17_rochefort
  end

  def preparer_spip17_saintes
  end

  def preparer_spip2A_ajaccio
  end

  def preparer_spip2B_bastia
  end

  def ma_reinsertion
  end

  def investir_ma_reinsertion
  end

  def ma_reinsertion_hauts_de_seine
  end

  def ma_reinsertion_eure_et_loir
  end

  def ma_reinsertion_paris
  end

  def ma_reinsertion_seine_et_marne
  end

  def ma_reinsertion_indre
  end

  def ma_reinsertion_aisne
  end

  def ma_reinsertion_haute_corse
  end

  def ma_reinsertion_corse_du_sud
  end

  def donnees_personnelles
  end

  def qui_sommes_nous
  end

  def mentions_legales
  end

  def declaration_accessibilite
  end

  def get_all_pages
    pages = Spina::Page.live.includes(:translations).order(:created_at)
    render json: Spina::Api::PageSerializer.new(pages).serializable_hash.to_json
  end

  private

  def set_spina_page
    Spina::Current.page = Spina::Page.find_by(name: action_name)
  end
end
