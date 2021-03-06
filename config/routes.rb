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
    get :landing
    get :comprendre_ma_peine
    get :peine_emprisonnement
    get :regles_essentielles
    get :obligations_personnelles
    get :mes_interlocuteurs
    get :sursis_probatoire
    get :travail_interet_general
    get :suivi_socio_judiciaire
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
    get :get_all_pages
  end

  get "/stats" => redirect("https://infogram.com/column-stacked-chart-1h7z2l8www5rg6o?live", status: 302), :as => :stats

  match "/404" => "errors#not_found", :via => :all
  match "/422" => "errors#unprocessable_entity", :via => :all
  match "/500" => "errors#internal_server_error", :via => :all
end
