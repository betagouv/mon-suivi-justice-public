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
    get :preparer_spip33_bordeaux
    get :preparer_spip14_caen
    get :preparer_spip11_carcassonne
    get :preparer_spip11_narbonne
    get :preparer_sap_tarbes
    get :ma_reinsertion_moselle
    get :preparer_spip38_bourgoin_jailleu
    get :preparer_spip76_rouen
    get :preparer_spip57_thionville
    get :preparer_spip68_mulhouse
    get :ma_reinsertion_puy_de_dome
    get :ma_reinsertion_cantal
    get :preparer_spip15_63_aurillac
    get :preparer_sap_77_fontainebleau
    get :preparer_spip27_evreux
    get :preparer_spip15_63_clermont_ferrand
    get :preparer_spip55_verdun
    get :preparer_spip80_amiens
    get :preparer_sap_cayenne
    get :preparer_spip34_montpellier
    get :preparer_spip64_bayonne
    get :preparer_spip64_pau
    get :preparer_spip72
    get :preparer_spip55_bar_le_duc
    get :preparer_spip73_chambery
    get :preparer_spip40_dax
    get :preparer_spip40_mont_de_marsan
    get :preparer_spip57_metz
    get :preparer_sap_beziers
    get :preparer_sap_montpellier
    get :preparer_spip77_fontainebleau
    get :ma_reinsertion_lot_et_garonne
    get :ma_reinsertion_bouches_du_rhone
    get :ma_reinsertion_savoie
    get :preparer_sap_vesoul
    get :preparer_spip73_albertville
    get :preparer_sap_dieppe
    get :preparer_sap_chambery
    get :preparer_spip13_arles_tarascon
    get :preparer_spip13_tarascon
    get :preparer_sap_lisieux
    get :preparer_sap_toulouse
    get :preparer_spip04
    get :preparer_sap_saint_denis
    get :preparer_sap_aix_en_provence
    get :preparer_sap_troyes
    get :preparer_sap_evreux
    get :preparer_sap_saint_nazaire
    get :preparer_sap_nimes
    get :preparer_sap_epinal
    get :preparer_sap_tulle
    get :preparer_sap_sarreguemines
    get :preparer_sap_bastia
    get :preparer_sap_saint_quentin
    get :preparer_sap_chalon_sur_saone
    get :preparer_sap_roanne
    get :preparer_spip19_brive
    get :preparer_spip19_tulle
    get :preparer_sap_brest
    get :ma_reinsertion_vienne
    get :preparer_spip81_castres
    get :preparer_sap_avignon
    get :preparer_spip89_auxerre
    get :preparer_sap_dunkerque
    get :preparer_spip81_albi
    get :preparer_spip29_quimper
    get :preparer_sap_mont_de_marsan
    get :preparer_spip44_nantes
    get :preparer_spip86
    get :preparer_spip06_mougins
    get :ma_reinsertion_vaucluse
    get :ma_reinsertion_alpes_maritimes
    get :preparer_spip06_nice
    get :preparer_spip84_carpentras
    get :preparer_sap_montargis
    get :preparer_spip22_guingamp
    get :preparer_spip22_saint_brieuc
    get :ma_reinsertion_aube
    get :ma_reinsertion_haute_marne
    get :preparer_sap_vienne
    get :preparer_sap_macon
    get :preparer_spip52_chaumont
    get :preparer_spip10_troyes
    get :preparer_sap_chateauroux
    get :preparer_spip89_sens
    get :preparer_spip69_villefranche_sur_saone
    get :preparer_sap_arras
    get :preparer_spip76_dieppe
    get :preparer_sap_limoges
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
    get :preparer_ma_convocation
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

  get "/stats" => redirect("https://msj-metabase.osc-secnum-fr1.scalingo.io/public/dashboard/7b94c699-cb73-414b-ba0d-1522e8f2c589", status: 302),
    :as => :stats

  match "/404" => "errors#not_found", :via => :all
  match "/422" => "errors#unprocessable_entity", :via => :all
  match "/500" => "errors#internal_server_error", :via => :all

  # 301 redirects for SEO
  get "/preparer_mon_rdv", to: redirect("/preparer_ma_convocation", status: 301)
end
