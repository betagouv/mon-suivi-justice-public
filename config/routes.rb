Rails.application.routes.draw do
  mount Spina::Engine => "/"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#landing"

  get "/stats" => redirect("https://infogram.com/column-stacked-chart-1h7z2l8www5rg6o?live", status: 302), :as => :stats

  scope controller: :pages do
    get :landing
    get :comprendre_ma_peine
    get :peine_emprisonnement
    get :regles_essentielles
    get :obligations_personnelles
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
    get :preparer_tj_paris
    get :preparer_tg_angers
    get :preparer_spip49
    get :ma_reinsertion
    get :investir_ma_reinsertion
    get :ma_reinsertion_hauts_de_seine
    get :ma_reinsertion_eure_et_loire
    get :ma_reinsertion_paris
    get :donnees_personnelles
    get :qui_sommes_nous
    get :mentions_legales
  end

  match "/404" => "errors#not_found", :via => :all
  match "/422" => "errors#unprocessable_entity", :via => :all
  match "/500" => "errors#internal_server_error", :via => :all
end
