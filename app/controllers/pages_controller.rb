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
    @zip_codes = ZIP_CODES
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
