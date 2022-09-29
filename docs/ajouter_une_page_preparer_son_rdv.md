
Deux méthodes pour créer une page (investir ma réinsertion et préparer mon rdv )

Pour une page Préparer mon rdv, une image doit être uploadée dans `app/frontend/images`, vérifier que le fichier n'est pas trop lourd.

- Utiliser le CLI pour déployer une nouvelle page

```
$ ./cli new_page_investir
$ ./cli new_page_preparer
```
Va jusqu'au déploiement pour une page à la fois.

- Utiliser directement les générateurs

```
$ rails generate preparer_page preparer_sap_alencon --image_name=sap_alencon.jpg --department=61
$ rails generate investir_page ma_reinsertion_sarthe
```

Génére tous les fichiers et fait les modifs. Permet de grouper plusieurs pages en un seul déploiement.

Attention : si on déploie directement il faut lancer la commande `rake spina:bootstrap` en console bash après le déploiement.

# Archive

## Ajouter une page Préparer son rdv

1. Ajouter un test dans le fichier `spec/requests/pages_spec.rb`
2. Ajouter l'image d'illustration dans le dossier `frontend/images` (si nécessaire la réduire en taille pour obtenir un poids de fichier raisonnable)
3. Ajouter une route dans le fichier `config/routes.rb`
4. Ajouter une méthode dans le controller `pages_controller.rb`
5. Ajouter un template dans le dossier `views/pages`, copier un autre template et modifier le nom de fichier de l'image.
6. Modifier le fichier `config/initializer/themes/default.rb` :
  - Ajouter une ligne dans le bloc `theme.view_templates`
  - Ajouter une ligne dans le bloc `theme.custom_pages`
  - Vérifier que le département de la nouvelle page est bien présent dans la constante `ZIP_CODES`
7. Déployer staging et production
8. Lancer la tache `$ rake spina:bootstrap` dans les consoles bash de la staging et de la production.
9. Renseigner le champ  "Département concerné" pour la nouvelle page sans quoi le SPIP ou le SAP n'apparaîtra pas sur la page mes rendez-vous.
