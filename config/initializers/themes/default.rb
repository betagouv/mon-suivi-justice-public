# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.

Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = "default"
  theme.title = "Thème par défaut"

  # Parts
  # Define all editable parts you want to use in your view templates
  #
  # Built-in part types:
  # - Line
  # - MultiLine
  # - Text (Rich text editor)
  # - Image
  # - ImageCollection
  # - Attachment
  # - Option
  # - Repeater
  theme.parts = [
    {name: "footer_text", title: "Texte de pied de page", part_type: "Spina::Parts::Line"},
    {name: "category", title: "Catégorie de la page", part_type: "Spina::Parts::Line"},
    {name: "main_title", title: "Titre de la page", part_type: "Spina::Parts::Line"},
    {name: "subtitle", title: "Sous-titre de la page", part_type: "Spina::Parts::Line"},
    {name: "main_description", title: "Texte de présentation", part_type: "Spina::Parts::Line"},
    {name: "main_rich_description", title: "Texte de présentation", part_type: "Spina::Parts::Text"},
    {name: "first_subtitle", title: "Premier sous-titre de la page", part_type: "Spina::Parts::Line"},
    {name: "secondary_subtitle", title: "Second sous-titre de la page", part_type: "Spina::Parts::Line"},
    {name: "button_text", title: "Titre du Button", part_type: "Spina::Parts::Line"},
    {name: "card_title", title: "Titre du Bloc", part_type: "Spina::Parts::Line"},
    {name: "card1_title", title: "Titre Bloc 1", part_type: "Spina::Parts::Line"},
    {name: "card1_text", title: "Texte Bloc 1", part_type: "Spina::Parts::Line"},
    {name: "card1_button_head", title: "Titre gras button bloc 1", part_type: "Spina::Parts::Line"},
    {name: "card1_button_sub", title: "Sous titre button bloc 1", part_type: "Spina::Parts::Line"},
    {name: "card2_title", title: "Titre Bloc 2", part_type: "Spina::Parts::Line"},
    {name: "card2_text", title: "Texte Bloc 2", part_type: "Spina::Parts::Line"},
    {name: "card2_button_head", title: "Titre gras button bloc 2", part_type: "Spina::Parts::Line"},
    {name: "card2_button_sub", title: "Sous titre button bloc 2", part_type: "Spina::Parts::Line"},
    {name: "card3_title", title: "Titre Bloc 3", part_type: "Spina::Parts::Line"},
    {name: "card3_text", title: "Texte Bloc 3", part_type: "Spina::Parts::Line"},
    {name: "card3_button_head", title: "Titre gras button bloc 3", part_type: "Spina::Parts::Line"},
    {name: "card3_button_sub", title: "Sous titre button bloc 3", part_type: "Spina::Parts::Line"},
    {name: "collapse_title", title: "Titre", part_type: "Spina::Parts::Line"},
    {name: "collapse_rich_content", title: "Contenu", part_type: "Spina::Parts::Text"},
    {name: "rich_collapse", title: "Contenu déroulable", parts: %w(collapse_title collapse_rich_content), part_type: "Spina::Parts::Repeater" },
    {name: "basic_card", title: "Bloc", parts: %w(card_title), part_type: "Spina::Parts::Repeater" }
  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {name: "landing", title: "Landing", parts: %w[main_title card1_text card1_button_head card1_button_sub card2_text card2_button_head card2_button_sub card3_text card3_button_head card3_button_sub main_description]},
    {name: "amenagements_de_peine", title: "Aménagements de peine", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "comprendre_ma_peine", title: "Comprendre ma peine", parts: %w[main_title main_description first_subtitle card1_title card1_text card2_title card2_text secondary_subtitle basic_card]},
    {name: "donnees_personnelles", title: "Données personnelles", parts: %w[main_title main_rich_description]},
    {name: "ma_reinsertion", title: "Investir ma réinsertion", parts: %w[main_title subtitle main_rich_description button_text]}
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: "landing", title: "Page d'accueil", view_template: "landing"},
    {name: "amenagements_de_peine", title: "Aménagements de peine", view_template: "amenagements_de_peine"},
    {name: "comprendre_ma_peine", title: "Comprendre ma peine", view_template: "comprendre_ma_peine"},
    {name: "donnees_personnelles", title: "Données personnelles", view_template: "donnees_personnelles"},
    {name: "ma_reinsertion", title: "Investir ma réinsertion", view_template: "ma_reinsertion"}
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = []

  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = ["footer_text"]

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = []

  # Plugins (optional)
  theme.plugins = []

  # Embeds (optional)
  theme.embeds = []
end
