---
title: Weeknotes #2
date: 2020-05-23 16:30
description: Semaine 5 du cycle 5. Je décris chaque semaine les évènements qui ont rythmé ma semaine en terme de travail.
---

## Cycle 5&nbsp;–&nbsp;semaine 5

### Ce que j’ai fait

J’ai terminé de développer en début de semaine le système d’inscription. Il
s’agissait surtout d’arrondir un peu les angles de ce que j’avais fait [la
semaine dernière](weeknotes-1.html), de corriger quelques bugs, ainsi qu’une
faille (potentielle) de sécurité. J’ai également validé que le système pour
traduire l’interface fonctionne correctement. Même si le service que je
proposerai s’adresse essentiellement à un public francophone, la langue
principale du logiciel lui-même sera l’anglais&nbsp;; il faut donc que je
traduise flusio dans ces deux langues.

J’ai continué en préparant le prochain gros morceau&nbsp;: la connexion et la
déconnexion. Ça paraît toujours être des fonctionnalités de base et pourtant il
y a pas mal de petits détails auxquels il faut prendre soin le plus tôt
possible. Par exemple, la connexion avec l’adresse courriel est bien souvent
sensible à la casse, ce qui engendre généralement beaucoup de questions du côté
du support («&nbsp;_j’arrive pas à me connecter_&nbsp;»). Mais rendre la
connexion insensible à la casse peut engendrer des petites surprises, comme
[cette faille de sécurité chez GitHub](https://eng.getwisdom.io/hacking-github-with-unicode-dotless-i/)
(lien technique en anglais).

Je prends donc toujours le temps de poser par écrit dans un document ce que je
vais faire, les points de vigilance à avoir, les sujets techniques qu’il me
faut éclaircir, etc. Je me sers ensuite de ce document pour guider le
développement. Ça prend parfois plus de temps que de simplement tout développer
d’une traite, mais ça m’évite bien souvent des aller-retours et de reprendre
certaines parties. Ça réduit également les risques de bugs et de failles de
sécurité, même si bien sûr il y en a toujours qui passent.

Tout cela m’a occupé jusqu’à mercredi matin, ce qui m’a laissé un jour et demi
pour développer la connexion et déconnexion. Il me reste encore à ajouter les
mécanismes de changement et de réinitialisation du mot de passe, mais
l’essentiel est là. J’aimerais également ajouter un système pour révoquer les
sessions de connexion&nbsp;: je le ferai si j’ai le temps de faire tenir tout
ça au sein d’une semaine.

Enfin, ma journée d’hier devait être consacrée à FreshRSS, mais j’ai finalement
été assez peu efficace. J’ai toutefois [corrigé un bug sournois](https://github.com/FreshRSS/FreshRSS/pull/2938#issuecomment-632429861)
sous Safari et Gnome Web qui utilisent tout deux une vieille version de Webkit.
J’ai également ajouté une commande `make` pour «&nbsp;_linter_&nbsp;» le code,
ça devrait pouvoir me permettre de fermer un ticket que j’avais ouvert en
décembre destiné à faciliter la configuration de l’environnement de
développement.

### Là où j’ai pris du plaisir

J’ai repris le fonctionnement de validation des données saisies par les
utilisateur·ices pour permettre de valider plusieurs champs à la fois (par
exemple si le mot de passe et le nom d’utilisateur ne sont pas bons, afficher
les deux erreurs au lieu d’une seule). Je m’étais fait toute une montagne de ce
changement vis-à-vis de l’architecture actuelle, mais au final, même si ça a
entrainé la modification de pas mal de lignes, peu de fichiers étaient
impactés et les changements plutôt évidents. Ça me rend confiant pour les
prochaines modifications de ce type que j’envisage.

La préparation du travail avant de passer au développement m’a prouvé son
utilité cette semaine en m’économisant au moins une journée de travail et des
futurs emmerdements potentiels.

### Ce qui m’a chagriné

Même si j’ai pris un peu d’avance sur ce que j’avais imaginé, je n’ai toujours
pas attaqué le cœur du logiciel et je m’impatiente un peu. Je vais toutefois
devoir encore attendre un peu puisque je vais passer la semaine prochaine, et
éventuellement la suivante, à traiter les sujets non prioritaires qui
s’amoncellent doucement.

### Ce que j’ai découvert

J’avais un doute concernant la gestion des sessions en <abbr>PHP</abbr>&nbsp;:
par défaut elles sont gérées grâce à un cookie qui est automatiquement supprimé
à la fermeture du navigateur (c’est pour ça que vous devez vous reconnecter
inlassablement sur certains sites&nbsp;😑). Ce comportement peut être modifié
aisément grâce à la fonction [`session_set_cookie_params()`](https://www.php.net/manual/fr/function.session-set-cookie-params.php).
Je suis surpris de ne l’avoir en fait jamais utilisé. FreshRSS possède un
système complémentaire bien plus complexe en utilisant un second cookie, mais
je suis persuadé qu’on pourrait simplifier tout cela drastiquement.

J’ai également découvert la fonction [`get_browser()`](https://www.php.net/manual/fr/function.get-browser.php)
de <abbr>PHP</abbr> permettant d’extraire des informations utiles d’[un agent
utilisateur](https://fr.wikipedia.org/wiki/User_agent). Je l’utiliserai
uniquement pour faciliter l’identification des sessions de connexion (e.g.
«&nbsp;Firefox sur Linux&nbsp;»). Je voulais quelque chose de similaire pour
géolocaliser grossièrement les adresses IP, mais ça implique une nouvelle
dépendance&nbsp;: je m’en passerai pour l’instant.
