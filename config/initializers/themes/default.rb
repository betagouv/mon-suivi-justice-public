# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.

# Zip codes for the "Préparer mon RDV" page select
ZIP_CODES ||= ["02", "03", "04", "06", "13", "14", "17", "18", "21", "23", "24", "25", "28", "2A", "2B", "32", "33", "36", "37", "38", "44", "47", "49", "51", "52", "54", "56", "57", "58", "59", "61", "62", "67", "68", "69", "71", "72", "74", "75", "77", "78", "79", "83", "91", "92", "93", "95", "972"].freeze

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
    {name: 'preparer_spipTEST2', title: 'Preparer spipTEST2', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip71', title: 'Preparer Spip71', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip972', title: 'Preparer Spip972', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip91', title: 'Preparer Spip91', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip61_alencon', title: 'Preparer Spip61 Alencon', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'ma_reinsertion_yvelines', title: 'Ma Reinsertion Yvelines', parts: %w[main_title main_description rich_collapse]},
    {name: 'preparer_spip78', title: 'Preparer Spip78', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_versailles', title: 'Preparer Sap Versailles', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip61_argentan', title: 'Preparer Spip61 Argentan', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_bourges', title: 'Preparer Sap Bourges', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_marseille', title: 'Preparer Sap Marseille', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_boulogne_sur_mer', title: 'Preparer Sap Boulogne Sur Mer', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_avesnes_sur_helpe', title: 'Preparer Sap Avesnes Sur Helpe', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_meaux', title: 'Preparer Sap Meaux', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_melun', title: 'Preparer Sap Melun', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_caen', title: 'Preparer Sap Caen', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_villefranche_sur_saone', title: 'Preparer Sap Villefranche Sur Saone', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_pontoise', title: 'Preparer Sap Pontoise', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_nantes', title: 'Preparer Sap Nantes', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_argentan', title: 'Preparer Sap Argentan', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_le_mans', title: 'Preparer Sap Le Mans', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_montlucon', title: 'Preparer Sap Montlucon', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_alencon', title: 'Preparer Sap Alencon', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip_st_quentin', title: 'Preparer Spip St Quentin', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip_laon', title: 'Preparer Spip Laon', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip_soissons', title: 'Preparer Spip Soissons', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_annecy', title: 'Preparer Sap Annecy', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip_lorient', title: 'Preparer Spip Lorient', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_spip_vannes', title: 'Preparer Spip Vannes', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'preparer_sap_bourgoin_jallieu', title: 'Preparer Sap Bourgoin Jallieu', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'ma_reinsertion_morbihan', title: 'Ma Reinsertion Morbihan', parts: %w[main_title main_description rich_collapse]},
    {name: 'preparer_sap_nevers', title: 'Preparer Sap Nevers', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'ma_reinsertion_rhone', title: 'Ma Reinsertion Rhone', parts: %w[main_title main_rich_description rich_collapse]},
    {name: 'preparer_spip_58', title: 'Preparer Spip 58', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: 'ma_reinsertion_nievre', title: 'Ma Reinsertion Nievre', parts: %w[main_title main_rich_description rich_collapse]},
    {name: 'ma_reinsertion_seine_st_denis', title: 'Ma Reinsertion Seine St Denis', parts: %w[main_title main_rich_description rich_collapse]},
    {name: 'preparer_spip93', title: 'Preparer Spip93', parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "landing", title: "Landing", parts: %w[main_title card1_text card1_button_head card1_button_sub card2_text card2_button_head card2_button_sub card3_text card3_button_head card3_button_sub main_description]},
    {name: "amenagements_de_peine", title: "Aménagements de peine", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "jour_amende", title: "Jour amende", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "stage", title: "Le stage", parts: %w[main_title rich_collapse]},
    {name: "peine_emprisonnement", title: "La peine d'emprisonnement", parts: %w[main_title main_rich_description]},
    {name: "suivi_socio_judiciaire", title: "Le suivi socio-judiciaire", parts: %w[main_title rich_collapse]},
    {name: "sursis_probatoire", title: "Le sursis probatoire", parts: %w[main_title rich_collapse]},
    {name: "travail_interet_general", title: "Le travail d’intérêt général", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "comprendre_ma_peine", title: "Comprendre ma peine", parts: %w[main_title main_description first_subtitle card1_title card1_text card2_title card2_text card3_title card3_text secondary_subtitle basic_card]},
    {name: "donnees_personnelles", title: "Données personnelles", parts: %w[main_title main_rich_description]},
    {name: "mentions_legales", title: "Mentions Légales", parts: %w[main_title main_rich_description]},
    {name: "declaration_accessibilite", title: "Déclaration d'accessibilité", parts: %w[main_title main_rich_description]},
    {name: "investir_ma_reinsertion", title: "Investir ma réinsertion", parts: %w[main_title subtitle main_rich_description basic_card]},
    {name: "obligations_personnelles", title: "Obligations personnelles", parts: %w[category main_title subtitle main_description rich_collapse]},
    {name: "regles_essentielles", title: "Les règles essentielles", parts: %w[category main_title subtitle main_description rich_collapse]},
    {name: "mes_interlocuteurs", title: "Mes interlocuteurs", parts: %w[category main_title subtitle main_description rich_collapse]},
    {name: "preparer_mon_rdv", title: "Préparer mon rendez-vous", parts: %w[main_title subtitle secondary_subtitle main_rich_description basic_card]},
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
    {name: "preparer_sap_toulon", title: "Préparer SAP Toulon", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_tours", title: "Préparer SAP Tours", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_montbeliard", title: "Préparer SAP Montbeliard", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_sap_saintes", title: "Préparer SAP Saintes", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip49", title: "Préparer SPIP 49", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip18", title: "Préparer SPIP 18", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "ma_reinsertion_hauts_de_seine", title: "Ma réinsertion Hauts-de-Seine", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "ma_reinsertion_eure_et_loir", title: "Ma réinsertion Eure-et-Loir", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "ma_reinsertion_paris", title: "Ma réinsertion Paris", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "ma_reinsertion_seine_et_marne", title: "Ma réinsertion Seine-et-Marne", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "ma_reinsertion_indre", title: "Ma réinsertion Indre", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "ma_reinsertion_aisne", title: "Ma réinsertion Aisne", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "ma_reinsertion_haute_corse", title: "Ma réinsertion Haute Corse", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "ma_reinsertion_corse_du_sud", title: "Ma réinsertion Corse du Sud", parts: %w[main_title main_rich_description rich_collapse]},
    {name: "preparer_spip69", title: "Préparer SPIP 69", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip77", title: "Préparer SPIP 77", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip54_nancy", title: "Préparer SPIP 54 - Nancy", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip54_val_de_briey", title: "Préparer SPIP 54 - Val de Briey", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip17_rochelle", title: "Préparer SPIP 17 - La Rochelle", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip17_rochefort", title: "Préparer SPIP 17 - Rochefort", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip17_saintes", title: "Préparer SPIP 17 - Saintes", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip2A_ajaccio", title: "Préparer SPIP 2A - Ajaccio", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]},
    {name: "preparer_spip2B_bastia", title: "Préparer SPIP 2B - Bastia", parts: %w[main_title main_description zip_code_select direction_collapse_title direction_collapse_first_rich_content direction_collapse_second_rich_content direction_collapse_button_text direction_collapse_button_link rich_collapse]}
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: 'preparer_spipTEST2', title: 'Preparer spipTEST2', view_template: 'preparer_spipTEST2'},
    {name: 'preparer_spip71', title: 'Preparer Spip71', view_template: 'preparer_spip71'},
    {name: 'preparer_spip972', title: 'Preparer Spip972', view_template: 'preparer_spip972'},
    {name: 'preparer_spip91', title: 'Preparer Spip91', view_template: 'preparer_spip91'},
    {name: 'preparer_spip61_alencon', title: 'Preparer Spip61 Alencon', view_template: 'preparer_spip61_alencon'},
    {name: 'ma_reinsertion_yvelines', title: 'Ma Reinsertion Yvelines', view_template: 'ma_reinsertion_yvelines'},
    {name: 'preparer_spip78', title: 'Preparer Spip78', view_template: 'preparer_spip78'},
    {name: 'preparer_sap_versailles', title: 'Preparer Sap Versailles', view_template: 'preparer_sap_versailles'},
    {name: 'preparer_spip61_argentan', title: 'Preparer Spip61 Argentan', view_template: 'preparer_spip61_argentan'},
    {name: 'preparer_sap_bourges', title: 'Preparer Sap Bourges', view_template: 'preparer_sap_bourges'},
    {name: 'preparer_sap_marseille', title: 'Preparer Sap Marseille', view_template: 'preparer_sap_marseille'},
    {name: 'preparer_sap_boulogne_sur_mer', title: 'Preparer Sap Boulogne Sur Mer', view_template: 'preparer_sap_boulogne_sur_mer'},
    {name: 'preparer_sap_avesnes_sur_helpe', title: 'Preparer Sap Avesnes Sur Helpe', view_template: 'preparer_sap_avesnes_sur_helpe'},
    {name: 'preparer_sap_meaux', title: 'Preparer Sap Meaux', view_template: 'preparer_sap_meaux'},
    {name: 'preparer_sap_melun', title: 'Preparer Sap Melun', view_template: 'preparer_sap_melun'},
    {name: 'preparer_sap_caen', title: 'Preparer Sap Caen', view_template: 'preparer_sap_caen'},
    {name: 'preparer_sap_villefranche_sur_saone', title: 'Preparer Sap Villefranche Sur Saone', view_template: 'preparer_sap_villefranche_sur_saone'},
    {name: 'preparer_sap_pontoise', title: 'Preparer Sap Pontoise', view_template: 'preparer_sap_pontoise'},
    {name: 'preparer_sap_nantes', title: 'Preparer Sap Nantes', view_template: 'preparer_sap_nantes'},
    {name: 'preparer_sap_argentan', title: 'Preparer Sap Argentan', view_template: 'preparer_sap_argentan'},
    {name: 'preparer_sap_le_mans', title: 'Preparer Sap Le Mans', view_template: 'preparer_sap_le_mans'},
    {name: 'preparer_sap_montlucon', title: 'Preparer Sap Montlucon', view_template: 'preparer_sap_montlucon'},
    {name: 'preparer_sap_alencon', title: 'Preparer Sap Alencon', view_template: 'preparer_sap_alencon'},
    {name: 'preparer_spip_st_quentin', title: 'Preparer Spip St Quentin', view_template: 'preparer_spip_st_quentin'},
    {name: 'preparer_spip_laon', title: 'Preparer Spip Laon', view_template: 'preparer_spip_laon'},
    {name: 'preparer_spip_soissons', title: 'Preparer Spip Soissons', view_template: 'preparer_spip_soissons'},
    {name: 'preparer_sap_annecy', title: 'Preparer Sap Annecy', view_template: 'preparer_sap_annecy'},
    {name: 'preparer_spip_lorient', title: 'Preparer Spip Lorient', view_template: 'preparer_spip_lorient'},
    {name: 'preparer_spip_vannes', title: 'Preparer Spip Vannes', view_template: 'preparer_spip_vannes'},
    {name: 'preparer_sap_bourgoin_jallieu', title: 'Preparer Sap Bourgoin Jallieu', view_template: 'preparer_sap_bourgoin_jallieu'},
    {name: 'ma_reinsertion_morbihan', title: 'Ma Reinsertion Morbihan', view_template: 'ma_reinsertion_morbihan'},
    {name: 'preparer_sap_nevers', title: 'Preparer Sap Nevers', view_template: 'preparer_sap_nevers'},
    {name: 'ma_reinsertion_rhone', title: 'Ma Reinsertion Rhone', view_template: 'ma_reinsertion_rhone'},
    {name: 'preparer_spip_58', title: 'Preparer Spip 58', view_template: 'preparer_spip_58'},
    {name: 'ma_reinsertion_nievre', title: 'Ma Reinsertion Nievre', view_template: 'ma_reinsertion_nievre'},
    {name: 'ma_reinsertion_seine_st_denis', title: 'Ma Reinsertion Seine St Denis', view_template: 'ma_reinsertion_seine_st_denis'},
    {name: 'preparer_spip93', title: 'Preparer Spip93', view_template: 'preparer_spip93'},
    {name: "landing", title: "Page d'accueil", view_template: "landing"},
    {name: "amenagements_de_peine", title: "Aménagements de peine", view_template: "amenagements_de_peine"},
    {name: "stage", title: "Le stage", view_template: "stage"},
    {name: "peine_emprisonnement", title: "La peine d'emprisonnement", view_template: "peine_emprisonnement"},
    {name: "suivi_socio_judiciaire", title: "Le suivi socio-judiciaire", view_template: "suivi_socio_judiciaire"},
    {name: "jour_amende", title: "Le jour amende", view_template: "jour_amende"},
    {name: "sursis_probatoire", title: "Le sursis probatoire", view_template: "sursis_probatoire"},
    {name: "travail_interet_general", title: "Le travail d'intérêt général", view_template: "travail_interet_general"},
    {name: "comprendre_ma_peine", title: "Comprendre ma peine", view_template: "comprendre_ma_peine"},
    {name: "donnees_personnelles", title: "Données personnelles", view_template: "donnees_personnelles"},
    {name: "mentions_legales", title: "Mentions Légales", view_template: "mentions_legales"},
    {name: "declaration_accessibilite", title: "Déclaration d'accessibilité", view_template: "declaration_accessibilite"},
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
    {name: "preparer_sap_toulon", title: "Préparer SAP Toulon", view_template: "preparer_sap_toulon"},
    {name: "preparer_sap_tours", title: "Préparer SAP Tours", view_template: "preparer_sap_tours"},
    {name: "preparer_sap_montbeliard", title: "Préparer SAP Montbeliard", view_template: "preparer_sap_montbeliard"},
    {name: "preparer_sap_saintes", title: "Préparer SAP Saintes", view_template: "preparer_sap_saintes"},
    {name: "preparer_spip18", title: "Préparer SPIP 18", view_template: "preparer_spip18"},
    {name: "preparer_spip49", title: "Préparer SPIP 49", view_template: "preparer_spip49"},
    {name: "preparer_spip69", title: "Préparer SPIP 69", view_template: "preparer_spip69"},
    {name: "preparer_spip77", title: "Préparer SPIP 77", view_template: "preparer_spip77"},
    {name: "preparer_spip54_val_de_briey", title: "Préparer SPIP 54 - Val de Briey", view_template: "preparer_spip54_val_de_briey"},
    {name: "preparer_spip54_nancy", title: "Préparer SPIP 54 - Nancy", view_template: "preparer_spip54_nancy"},
    {name: "preparer_spip17_rochelle", title: "Préparer SPIP 17 - La Rochelle", view_template: "preparer_spip17_rochelle"},
    {name: "preparer_spip17_rochefort", title: "Préparer SPIP 17 - Rochefort", view_template: "preparer_spip17_rochefort"},
    {name: "preparer_spip17_saintes", title: "Préparer SPIP 17 - Saintes", view_template: "preparer_spip17_saintes"},
    {name: "preparer_spip2A_ajaccio", title: "Préparer SPIP 2A - Ajaccio", view_template: "preparer_spip2A_ajaccio"},
    {name: "preparer_spip2B_bastia", title: "Préparer SPIP 2B - Bastia", view_template: "preparer_spip2B_bastia"},
    {name: "ma_reinsertion_hauts_de_seine", title: "Ma réinsertion Hauts-de-Seine", view_template: "ma_reinsertion_hauts_de_seine"},
    {name: "ma_reinsertion_eure_et_loir", title: "Ma réinsertion Eure-et-Loir", view_template: "ma_reinsertion_eure_et_loir"},
    {name: "ma_reinsertion_paris", title: "Ma réinsertion Paris", view_template: "ma_reinsertion_paris"},
    {name: "ma_reinsertion_indre", title: "Ma réinsertion Indre", view_template: "ma_reinsertion_indre"},
    {name: "ma_reinsertion_aisne", title: "Ma réinsertion Aisne", view_template: "ma_reinsertion_aisne"},
    {name: "ma_reinsertion_haute_corse", title: "Ma réinsertion Haute Corse", view_template: "ma_reinsertion_haute_corse"},
    {name: "ma_reinsertion_corse_du_sud", title: "Ma réinsertion Corse du Sud", view_template: "ma_reinsertion_corse_du_sud"},
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
