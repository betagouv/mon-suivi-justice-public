Rails.application.routes.draw do
  mount Spina::Engine => "/"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :convicts, controllers: {passwords: "convicts/passwords"}

  # Defines the root path route ("/")
  unauthenticated do
    root "pages#landing"
  end

  require "sidekiq/web"
  authenticate :convict, ->(convict) { convict.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end

  authenticated :convict do
    root "appointments#index", as: :authenticated_root
  end

  resources :appointments, only: %i[show index]
  resource :agent, only: %i[show]
  resource :convict, only: %i[show]

  resource :sms_invitations, only: %i[create], controller: "convicts/sms_invitations"
  post :sms_webhook, to: "convicts/sms_webhooks#receive"

  scope controller: :pages do
    get :ma_reinsertion_territoire_de_belfort
    get :ma_reinsertion_hautes_alpes
    get :ma_reinsertion_haute_saone
    get :preparer_spip76_le_havre
    get :preparer_spip07_privas
    get :preparer_sap_albi
    get :preparer_sap_brive_la_gaillarde
    get :preparer_sap_la_rochelle
    get :preparer_spip70_vesoul
    get :preparer_spip70_lure
    get :preparer_spip90_belfort
    get :preparer_sap82_montauban
    get :preparer_spip88_saint_die_des_vosges
    get :preparer_spip88_epinal
    get :preparer_spip05
    get :preparer_sap_foix
    get :preparer_sap_bobigny
    get :preparer_sap_clermond_ferrand
    get :preparer_spip67_saverne
    get :preparer_sap_castres
    get :preparer_spip09_foix
    get :preparer_spip47
    get :ma_reinsertion_champagne_ardenne
    get :ma_reinsertion_val_d_oise
    get :ma_reinsertion_loir_et_cher
    get :preparer_sap_privas
    get :preparer_spip41_loir_et_cher
    get :preparer_spip95_val_doise
    get :preparer_preparer_spip_reims
    get :preparer_preparer_sap_gap
    get :preparer_sap_orleans
    get :preparer_spip_loiret_montargis
    get :preparer_spip31_toulouse
    get :preparer_spip31_saint_gaudens
    get :preparer_spip_45
    get :preparer_spip_51
    get :preparer_spip48_lozere
    get :preparer_TJ_bayonne
    get :preparer_TJ_coutances
    get :preparer_spip74_annecy
    get :preparer_spip_charleville_mezieres
    get :preparer_tj_lyon
    get :preparer_spip62
    get :preparer_spip37
    get :ma_reinsertion_pyrenees_orientales
    get :ma_reinsertion_mayenne
    get :preparer_SPIP_53
    get :preparer_spip_71_macon
    get :preparer_spip_66
    get :preparer_spip71_chalon_sur_saone
    get :preparer_sap_blois
    get :preparer_sap_sables_d_olonne
    get :preparer_sap_poitiers
    get :preparer_spip21
    get :preparer_sap_dax
    get :preparer_sap_chalons_en_champagne
    get :preparer_spip972
    get :preparer_spip91
    get :preparer_spip61_alencon
    get :ma_reinsertion_yvelines
    get :preparer_spip78
    get :preparer_sap_versailles
    get :preparer_spip61_argentan
    get :preparer_sap_bourges
    get :preparer_sap_marseille
    get :preparer_sap_boulogne_sur_mer
    get :preparer_sap_avesnes_sur_helpe
    get :preparer_sap_meaux
    get :preparer_sap_melun
    get :preparer_sap_caen
    get :preparer_sap_villefranche_sur_saone
    get :preparer_sap_pontoise
    get :preparer_sap_nantes
    get :preparer_sap_argentan
    get :preparer_sap_le_mans
    get :preparer_sap_montlucon
    get :preparer_sap_alencon
    get :preparer_spip_st_quentin
    get :preparer_spip_laon
    get :preparer_spip_soissons
    get :preparer_sap_annecy
    get :preparer_spip_lorient
    get :preparer_spip_vannes
    get :preparer_sap_bourgoin_jallieu
    get :ma_reinsertion_morbihan
    get :preparer_sap_nevers
    get :ma_reinsertion_rhone
    get :preparer_spip_58
    get :ma_reinsertion_nievre
    get :ma_reinsertion_seine_st_denis
    get :preparer_spip93
    get :landing
    get :comprendre_ma_peine
    get :peine_emprisonnement
    get :regles_essentielles
    get :obligations_personnelles
    get :mes_interlocuteurs
    get :sursis_probatoire
    get :travail_interet_general
    get :suivi_socio_judiciaire
    get :jour_amende
    get :stage
    get :amenagements_de_peine
    get :preparer_mon_rdv
    get :preparer_spip92
    get :preparer_sap_nanterre
    get :preparer_spip28
    get :preparer_sap_chartres
    get :preparer_spip75
    get :preparer_sap_paris
    get :preparer_sap_metz
    get :preparer_sap_angers
    get :preparer_sap_thionville
    get :preparer_sap_mulhouse
    get :preparer_sap_reims
    get :preparer_sap_saverne
    get :preparer_sap_val_de_briey
    get :preparer_sap_chaumont
    get :preparer_sap_grasse
    get :preparer_sap_digne_les_bains
    get :preparer_sap_agen
    get :preparer_sap_niort
    get :preparer_sap_bordeaux
    get :preparer_sap_nice
    get :preparer_sap_bergerac
    get :preparer_sap_gueret
    get :preparer_sap_draguignan
    get :preparer_sap_libourne
    get :preparer_sap_dijon
    get :preparer_sap_toulon
    get :preparer_sap_tours
    get :preparer_sap_montbeliard
    get :preparer_sap_saintes
    get :preparer_spip18
    get :preparer_spip49
    get :preparer_spip32
    get :preparer_spip36
    get :preparer_spip69
    get :preparer_spip77
    get :preparer_spip54_val_de_briey
    get :preparer_spip54_nancy
    get :preparer_spip17_rochelle
    get :preparer_spip17_rochefort
    get :preparer_spip17_saintes
    get :preparer_spip2A_ajaccio
    get :preparer_spip2B_bastia
    get :investir_ma_reinsertion
    get :ma_reinsertion_hauts_de_seine
    get :ma_reinsertion_eure_et_loir
    get :ma_reinsertion_paris
    get :ma_reinsertion_indre
    get :ma_reinsertion_seine_et_marne
    get :ma_reinsertion_aisne
    get :ma_reinsertion_haute_corse
    get :ma_reinsertion_corse_du_sud
    get :donnees_personnelles
    get :qui_sommes_nous
    get :mentions_legales
    get :declaration_accessibilite
    get :get_all_pages
  end

  get "/stats" => redirect("https://monsuivijustice.notion.site/Statistiques-publi-es-bbbce17e1452428aa24172fc26cb5697", status: 302), :as => :stats

  match "/404" => "errors#not_found", :via => :all
  match "/422" => "errors#unprocessable_entity", :via => :all
  match "/500" => "errors#internal_server_error", :via => :all
end
