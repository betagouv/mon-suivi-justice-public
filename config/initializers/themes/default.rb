# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.

# Zip codes for the "Préparer mon RDV" page select
ZIP_CODES = %w[04 06 18 21 23 24 28 32 33 36 47 49 51 52 54 57 67 68 69 75 77 79 83 92].freeze

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
    {name: "card_link", title: "Lien du Bloc (merci de ne pas rentrer le lien en entier mais seulement l'extension (ex: sursis_probatoire))", part_type: "Spina::Parts::Line"},
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
    {name: "direction_collapse_title", title: "Titre du contenu déroulant de l'adresse", part_type: "Spina::Parts::Line"},
    {name: "direction_collapse_first_rich_content", title: "Premier texte du contenu déroulant de l'adresse", part_type: "Spina::Parts::Text"},
    {name: "direction_collapse_second_rich_content", title: "Second texte du contenu déroulant de l'adresse", part_type: "Spina::Parts::Text"},
    {name: "direction_collapse_button_text", title: "Texte du bouton contenu déroulant de l'adresse", part_type: "Spina::Parts::Line"},
    {name: "direction_collapse_button_link", title: "Lien du bouton contenu déroulant de l'adresse", part_type: "Spina::Parts::Line"},
    {name: "collapse_title", title: "Titre", part_type: "Spina::Parts::Line"},
    {name: "collapse_rich_content", title: "Contenu", part_type: "Spina::Parts::Text"},
    {name: "collapse_rich_content_alert", title: "Encart rouge", part_type: "Spina::Parts::Text"},
    {name: "collapse_rich_content_good_practice", title: "Encart vert", part_type: "Spina::Parts::Text"},
    {name: "rich_collapse", title: "Contenu déroulant", parts: %w[collapse_title collapse_rich_content collapse_rich_content_alert collapse_rich_content_good_practice], part_type: "Spina::Parts::Repeater"},
    {name: "basic_card", title: "Bloc", parts: %w[card_title card_link], part_type: "Spina::Parts::Repeater"},
    {name: "zip_code_select", title: "Département concerné", hint: "Département du SPIP ou du SAP", part_type: "Spina::Parts::Option", options: ZIP_CODES}
  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {name: "landing", title: "Landing", parts: %w[main_title card1_text card1_button_head card1_button_sub card2_text card2_button_head card2_button_sub card3_text card3_button_head card3_button_sub main_description]},
    {name: "amenagements_de_peine", title: "Aménagements de peine", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "stage", title: "Le stage", parts: %w[main_title rich_collapse]},
    {name: "peine_emprisonnement", title: "La peine d'emprisonnement", parts: %w[main_title main_rich_description]},
    {name: "suivi_socio_judiciaire", title: "Le suivi socio-judiciaire", parts: %w[main_title rich_collapse]},
    {name: "sursis_probatoire", title: "Le sursis probatoire", parts: %w[main_title rich_collapse]},
    {name: "travail_interet_general", title: "Le travail d’intérêt général", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "comprendre_ma_peine", title: "Comprendre ma peine", parts: %w[main_title main_description first_subtitle card1_title card1_text card2_title card2_text card3_title card3_text secondary_subtitle basic_card]},
    {name: "donnees_personnelles", title: "Données personnelles", parts: %w[main_title main_rich_description]},
    {name: "mentions_legales", title: "Mentions Légales", parts: %w[main_title main_rich_description]},
    {name: "investir_ma_reinsertion", title: "Investir ma réinsertion", parts: %w[main_title subtitle main_rich_description basic_card]},
    {name: "obligations_personnelles", title: "Obligations personnelles", parts: %w[category main_title subtitle main_description rich_collapse]},
    {name: "regles_essentielles", title: "Les règles essentielles", parts: %w[category main_title subtitle main_description rich_collapse]},
    {name: "mes_interlocuteurs", title: "Mes interlocuteurs", parts: %w[category main_title subtitle main_description rich_collapse]},
    {name: "preparer_mon_rdv", title: "Préparer mon rendez-vous", parts: %w[main_title subtitle main_rich_description basic_card]},
    {name: "preparer_spip92", title: "Préparer SPIP 92", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip28", title: "Préparer SPIP 28", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_chartres", title: "Préparer SAP Chartres", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_nanterre", title: "Préparer SAP Nanterre", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "qui_sommes_nous", title: "Qui sommes-nous", parts: %w[main_title main_rich_description button_text]},
    {name: "preparer_spip75", title: "Préparer SPIP 75", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip32", title: "Préparer SPIP 32", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip36", title: "Préparer SPIP 36", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_paris", title: "Préparer SAP Paris", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_metz", title: "Préparer SAP Metz", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_angers", title: "Préparer SAP Angers", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_thionville", title: "Préparer SAP Thionville", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_mulhouse", title: "Préparer SAP Mulhouse", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_reims", title: "Préparer SAP Reims", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_saverne", title: "Préparer SAP Saverne", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_val_de_briey", title: "Préparer SAP Val de Briey", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_chaumont", title: "Préparer SAP Chaumont", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_agen", title: "Préparer SAP Agen", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_niort", title: "Préparer SAP Niort", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_bordeaux", title: "Préparer SAP Bordeaux", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_digne_les_bains", title: "Préparer SAP Digne-les-bains", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_grasse", title: "Préparer SAP Grasse", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_nice", title: "Préparer SAP Nice", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_bergerac", title: "Préparer SAP Bergerac", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_gueret", title: "Préparer SAP Guéret", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_draguignan", title: "Préparer SAP Draguignan", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_libourne", title: "Préparer SAP Libourne", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_dijon", title: "Préparer SAP Dijon", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip49", title: "Préparer SPIP 49", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip18", title: "Préparer SPIP 18", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "ma_reinsertion_hauts_de_seine", title: "Ma réinsertion Hauts-de-Seine", parts: %w[main_title main_description rich_collapse]},
    {name: "ma_reinsertion_eure_et_loir", title: "Ma réinsertion Eure-et-Loir", parts: %w[main_title main_description rich_collapse]},
    {name: "ma_reinsertion_paris", title: "Ma réinsertion Paris", parts: %w[main_title main_description rich_collapse]},
    {name: "ma_reinsertion_seine_et_marne", title: "Ma réinsertion Seine-et-Marne", parts: %w[main_title main_description rich_collapse]},
    {name: "preparer_spip69", title: "Préparer SPIP 69", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip77", title: "Préparer SPIP 77", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip54_val_de_briey", title: "Préparer SPIP 54 - Val de Briey", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]}
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: "landing", title: "Page d'accueil", view_template: "landing"},
    {name: "amenagements_de_peine", title: "Aménagements de peine", view_template: "amenagements_de_peine"},
    {name: "stage", title: "Le stage", view_template: "stage"},
    {name: "peine_emprisonnement", title: "La peine d'emprisonnement", view_template: "peine_emprisonnement"},
    {name: "suivi_socio_judiciaire", title: "Le suivi socio-judiciaire", view_template: "suivi_socio_judiciaire"},
    {name: "sursis_probatoire", title: "Le sursis probatoire", view_template: "sursis_probatoire"},
    {name: "travail_interet_general", title: "Le travail d'intérêt général", view_template: "travail_interet_general"},
    {name: "comprendre_ma_peine", title: "Comprendre ma peine", view_template: "comprendre_ma_peine"},
    {name: "donnees_personnelles", title: "Données personnelles", view_template: "donnees_personnelles"},
    {name: "mentions_legales", title: "Mentions Légales", view_template: "mentions_legales"},
    {name: "ma_reinsertion", title: "Investir ma réinsertion", view_template: "ma_reinsertion"},
    {name: "investir_ma_reinsertion", title: "Investir ma réinsertion", view_template: "investir_ma_reinsertion"},
    {name: "obligations_personnelles", title: "Obligations personnelles", view_template: "obligations_personnelles"},
    {name: "regles_essentielles", title: "Les règles essentielles", view_template: "regles_essentielles"},
    {name: "mes_interlocuteurs", title: "Mes interlocuteurs", view_template: "mes_interlocuteurs"},
    {name: "preparer_mon_rdv", title: "Préparer mon rendez-vous", view_template: "preparer_mon_rdv"},
    {name: "preparer_spip28", title: "Préparer SPIP 28", view_template: "preparer_spip28"},
    {name: "preparer_spip92", title: "Préparer SPIP 92", view_template: "preparer_spip92"},
    {name: "preparer_sap_chartres", title: "Préparer SAP Chartres", view_template: "preparer_sap_chartres"},
    {name: "preparer_sap_nanterre", title: "Préparer SAP Nanterre", view_template: "preparer_sap_nanterre"},
    {name: "qui_sommes_nous", title: "Qui sommes-nous", view_template: "qui_sommes_nous"},
    {name: "preparer_spip75", title: "Préparer SPIP 75", view_template: "preparer_spip75"},
    {name: "preparer_spip32", title: "Préparer SPIP 32", view_template: "preparer_spip32"},
    {name: "preparer_spip36", title: "Préparer SPIP 36", view_template: "preparer_spip36"},
    {name: "preparer_sap_paris", title: "Préparer SAP Paris", view_template: "preparer_sap_paris"},
    {name: "preparer_sap_metz", title: "Préparer SAP Metz", view_template: "preparer_sap_metz"},
    {name: "preparer_sap_angers", title: "Préparer SAP Angers", view_template: "preparer_sap_angers"},
    {name: "preparer_sap_thionville", title: "Préparer SAP Thionville", view_template: "preparer_sap_thionville"},
    {name: "preparer_sap_mulhouse", title: "Préparer SAP Mulhouse", view_template: "preparer_sap_mulhouse"},
    {name: "preparer_sap_reims", title: "Préparer SAP Reims", view_template: "preparer_sap_reims"},
    {name: "preparer_sap_saverne", title: "Préparer SAP Saverne", view_template: "preparer_sap_saverne"},
    {name: "preparer_sap_val_de_briey", title: "Préparer SAP Val de Briey", view_template: "preparer_sap_val_de_briey"},
    {name: "preparer_sap_chaumont", title: "Préparer SAP Chaumont", view_template: "preparer_sap_chaumont"},
    {name: "preparer_sap_agen", title: "Préparer SAP Agen", view_template: "preparer_sap_agen"},
    {name: "preparer_sap_niort", title: "Préparer SAP Niort", view_template: "preparer_sap_niort"},
    {name: "preparer_sap_bordeaux", title: "Préparer SAP Bordeaux", view_template: "preparer_sap_bordeaux"},
    {name: "preparer_sap_digne_les_bains", title: "Préparer SAP Digne-les-bains", view_template: "preparer_sap_digne_les_bains"},
    {name: "preparer_sap_grasse", title: "Préparer SAP Grasse", view_template: "preparer_sap_grasse"},
    {name: "preparer_sap_nice", title: "Préparer SAP Nice", view_template: "preparer_sap_nice"},
    {name: "preparer_sap_bergerac", title: "Préparer SAP Bergerac", view_template: "preparer_sap_bergerac"},
    {name: "preparer_sap_gueret", title: "Préparer SAP Guéret", view_template: "preparer_sap_gueret"},
    {name: "preparer_sap_draguignan", title: "Préparer SAP Draguignan", view_template: "preparer_sap_draguignan"},
    {name: "preparer_sap_libourne", title: "Préparer SAP Libourne", view_template: "preparer_sap_libourne"},
    {name: "preparer_sap_dijon", title: "Préparer SAP Dijon", view_template: "preparer_sap_dijon"},
    {name: "preparer_spip18", title: "Préparer SPIP 18", view_template: "preparer_spip18"},
    {name: "preparer_spip49", title: "Préparer SPIP 49", view_template: "preparer_spip49"},
    {name: "preparer_spip69", title: "Préparer SPIP 69", view_template: "preparer_spip69"},
    {name: "preparer_spip77", title: "Préparer SPIP 77", view_template: "preparer_spip77"},
    {name: "preparer_spip54_val_de_briey", title: "Préparer SPIP 54 - Val de Briey", view_template: "preparer_spip54_val_de_briey"},
    {name: "ma_reinsertion_hauts_de_seine", title: "Ma réinsertion Hauts-de-Seine", view_template: "ma_reinsertion_hauts_de_seine"},
    {name: "ma_reinsertion_eure_et_loir", title: "Ma réinsertion Eure-et-Loir", view_template: "ma_reinsertion_eure_et_loir"},
    {name: "ma_reinsertion_paris", title: "Ma réinsertion Paris", view_template: "ma_reinsertion_paris"},
    {name: "ma_reinsertion_seine_et_marne", title: "Ma réinsertion Seine-et-Marne", view_template: "ma_reinsertion_seine_et_marne"}
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
