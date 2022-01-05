Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'static_pages#landing'

  scope controller: :static_pages do
    get :landing
    get :comprendre_ma_peine
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
    get :ma_reinsertion
    get :donnees_personnelles
  end
end
