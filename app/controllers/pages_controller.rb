class PagesController < Spina::ApplicationController
  before_action :set_spina_page

  # Controller inherit from Spina::ApplicationController
  # Set Spina::Current.page
  # Create custom pages in theme
  # rails spina:bootstrap
  # Ajouter contenu dans les vues
  # Spina::Navigation.find_by(name: "main").pages.pluck(:name) pour la navigation
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

  def sursis_probatoire
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
  end

  def preparer_spip92
  end

  def preparer_sap_nanterre
  end

  def preparer_spip28
  end

  def preparer_sap_chartres
  end

  def ma_reinsertion
  end

  def donnees_personnelles
  end

  private

  def set_spina_page
    Spina::Current.page = Spina::Page.find_by(name: action_name)
  end
end
