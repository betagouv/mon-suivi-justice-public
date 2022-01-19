# Mon Suivi Justice

Un service numérique public pour réduire l'absentéisme lors des rendez-vous avec les agents du ministère de la justice. Construction en cours avec les agents concernés.

Fiche sur beta.gouv : [Mon Suivi Justice](https://beta.gouv.fr/startups/justif.html)

Cette application est le site d'information accessible au public de Mon Suivi Justice

- En production sur [mon-suivi-justice.beta.gouv.fr](https://www.mon-suivi-justice.beta.gouv.fr)

## Changer le contenu
### Fonctionnement général

- Rendez-vous sur `/admin` (rajouter `/admin` à la fin de l'URL) et connectez-vous avec mon identifiant et mot de passe admin
- Sélectionnez la page à modifier
- Trouvez le contenu que vous souhaitez modifier dans la page.
- Modifiez le contenu puis cliquez sur "Enregistrer les changements" en haut à droite
- Astuce: gardez le site public ouvert dans un autre onglet pour visualiser rapidement vous changement. Il suffit pour les voir de recharger la page.

### Fonctionnement particulier de certains blocs et astuces

#### Rich texte

Les blocs de texte "riches" (incluant du style), vous permettent d'ajouter des titre, de mettre en gras, etc. un texte.

- Si un espace que vous voyez dans l'interface admin n'apparait pas dans le site, essayez de le supprimer puis de l'ajouter à nouveau dans le bloc de texte (ce problème vient probablement de la mise en place initiale en masse du contenu).
- Pour enlever un style, sélectionnez le texte qui l'a puis cliquez à nouveau sur le style en question (h4 pour un titre h4 par ex).
- Normalement, le style du texte sélectionné devrait être visible dans l'éditeur (le bouton gras devrait être mis en évidence pour un texte en gras par exemple). Ce n'est pas le cas pour l'instant. C'est un problème connu de l'outil que nous utilisons. Nous espérons qu'il sera vite résolu.

### Blocs qui se répètent

Quand une page contient plusieurs blocs semblablent par leur style et simplement différents par leur contenu, ils sont mis en place via des "Repeaters"

- Pour ajouter un nouveau bloc, cliquez sur "nouvelle entrée" en bas
- Pour changer l'ordre des blocs, faites un "drag and drop" du bloc à l'endroit où vous voulez le déposer
- Pour supprimer un bloc, cliquez sur le bouton "supprimer" en bas de celui-ci


## Contribuer

Toutes les contributions sont les bienvenues. La première façon de participer, c'est de signaler un problème [ici](https://github.com/betagouv/mon-suivi-justice/issues)

Avant de proposer une évolution du code, merci de lire le [guide de contribution](CONTRIBUTING.md).

## Licence

Ce logiciel et son code source sont distribués sous licence [EUPL v1.2](https://choosealicense.com/licenses/eupl-1.2/).
