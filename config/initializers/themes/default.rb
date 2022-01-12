# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.

Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = "default"
  theme.title = "Default theme"

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
    {name: "card1_text", title: "Texte Bloc 1", part_type: "Spina::Parts::Line"},
    {name: "card1_button_head", title: "Titre gras button bloc 1", part_type: "Spina::Parts::Line"},
    {name: "card1_button_sub", title: "Sous titre button bloc 1", part_type: "Spina::Parts::Line"},
    {name: "card2_text", title: "Texte Bloc 2", part_type: "Spina::Parts::Line"},
    {name: "card2_button_head", title: "Titre gras button bloc 2", part_type: "Spina::Parts::Line"},
    {name: "card2_button_sub", title: "Sous titre button bloc 2", part_type: "Spina::Parts::Line"},
    {name: "card3_text", title: "Texte Bloc 3", part_type: "Spina::Parts::Line"},
    {name: "card3_button_head", title: "Titre gras button bloc 3", part_type: "Spina::Parts::Line"},
    {name: "card3_button_sub", title: "Sous titre button bloc 3", part_type: "Spina::Parts::Line"},
    {name: "home_subtext", title: "Texte de présentation", part_type: "Spina::Parts::Line"}
  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {name: "landing", title: "Landing", parts: %w[card1_text card1_button_head card1_button_sub card2_text card2_button_head card2_button_sub card3_text card3_button_head card3_button_sub home_subtext]}
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: "landing", title: "Page d'accueil", view_template: "landing"}
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
    {name: "main", label: "Main navigation"}
  ]

  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = []

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = []

  # Plugins (optional)
  theme.plugins = []

  # Embeds (optional)
  theme.embeds = []
end
