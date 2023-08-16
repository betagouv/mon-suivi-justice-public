# Mon Suivi Justice

Un service numérique public pour réduire l'absentéisme lors des convocations avec les agents du ministère de la justice. Construction en cours avec les agents concernés.

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

### Blocs qui se répètent

Quand une page contient plusieurs blocs semblablent par leur style et simplement différents par leur contenu, ils sont mis en place via des "Repeaters"

- Pour ajouter un nouveau bloc, cliquez sur "nouvelle entrée" en bas
- Pour changer l'ordre des blocs, faites un "drag and drop" du bloc à l'endroit où vous voulez le déposer
- Pour supprimer un bloc, cliquez sur le bouton "supprimer" en bas de celui-ci

## Tester l'interface probationnaires

Lien vers l'application en environnement de staging: [https://mon-suivi-justice.incubateur.net](https://mon-suivi-justice.incubateur.net)
### Se connecter sur le compte d'un ou une CPIP et celui de son probationnaire en simultané

1. Se connecter sur l'interface agents de l'[application de staging](https://mon-suivi-justice.incubateur.net) en tant que CPIP
2. Trouver la probationnaire Alexia CHASLOT (id 106) qui est liée au compte de test sur la staging de l'interface probationnaires et se devinir comme CPIP de cette probationnaire
3. Ouvrir l'interface agents dans une nouvelle fenètre de navigation privée
4. Se connecter avec le numéro `0666666666` et le mot de passe `password` sur l'interface probationnaires

## Contribuer

Toutes les contributions sont les bienvenues. La première façon de participer, c'est de signaler un problème [ici](https://github.com/betagouv/mon-suivi-justice/issues)

Avant de proposer une évolution du code, merci de lire le [guide de contribution](CONTRIBUTING.md).

## Licence

Ce logiciel et son code source sont distribués sous licence [EUPL v1.2](https://choosealicense.com/licenses/eupl-1.2/).
