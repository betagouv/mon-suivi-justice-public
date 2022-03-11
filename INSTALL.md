# Installation

Instructions pour installer Mon Suivi Justice public en local.

1. Installer les dépendances
`bundle install`
`yarn install`

Pour lancer le serveur local avec webpack, il faut avoir installé `webpack-cli` en global.

2. Créer les bases de données
`rails db:setup`

3. Générer le contenu à partir des fichiers de seed
`rake content_setup`

4. Lancer le serveur local

Si vous utilisez Foreman, vous pouvez utiliser cette commande :
`foreman start -f Procfile.dev`
