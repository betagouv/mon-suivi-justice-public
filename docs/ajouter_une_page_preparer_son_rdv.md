# Ajouter une page Préparer son rdv

1. Ajouter un test dans le fichier `spec/requests/pages_spec.rb`
2. Ajouter l'image d'illustration dans le dossier `frontend/images` (si nécessaire la réduire en taille pour obtenir un poids de fichier raisonnable)
3. Ajouter une route dans le fichier `config/routes.rb`
4. Ajouter une méthode dans le controller `pages_controller.rb`
5. Ajouter un template dans le dossier `views/pages`, copier un autre template et modifier le nom de fichier de l'image.
6. Modifier le fichier `config/initializer/themes/default.rb` :
  - Ajouter une ligne dans le bloc `theme.view_templates`
  - Ajouter une ligne dans le bloc `theme.custom_pages`
