---
title: Cas d’utilisation : assurer votre suivi logiciel avec Flus
date: 2024-10-16 10:00
description: Comment se tenir à jour des nouveautés dans votre écosystème logiciel grâce à Flus.
---

Se tenir à jour des informations dans le domaine de l’informatique nécessite de suivre les bonnes sources.
Il peut toutefois être compliqué de savoir par où commencer.
**À travers cet article, je vous explique pourquoi et comment assurer votre veille logicielle avec Flus.**

Pour rappel, [Flus](https://flus.fr) est un outil de veille dédié à l’éditorialisation de votre veille.
Vous pouvez y collecter, organiser, commenter et partager les liens issus de vos lectures sur le Web.
En particulier, vous pouvez y agréger les liens issus de flux Web (<abbr>RSS</abbr>, Atom et Json).

**Cet article s’adresse plutôt aux développeurs et développeuses qui sont amenées à gérer des projets logiciels,** mais il pourra intéresser plus généralement toute personne travaillant dans l’informatique.

## Pourquoi faire de la veille logicielle ?

Il existe plusieurs raisons pour lesquelles il est intéressant, voire important de faire sa veille logicielle :

- **améliorer sa manière de travailler** en profitant des évolutions de son écosystème, en s’informant par exemple de l’arrivée de nouveaux logiciels ou de pratiques plus adaptées à nos besoins ;
- **planifier les évolutions à venir** sur le ou les projets sur lesquels on travaille, par exemple en prévoyant au plus tôt une montée de version d’une dépendance logicielle non rétrocompatible avec l’ancienne ;
- appliquer des mises à jour logicielles aussi tôt que possible **en cas de faille de sécurité importante.**

En somme, être à l’écoute de son écosystème permet de mieux travailler et de s’adapter à ses évolutions.

## Identifier le périmètre de votre veille

Il existe des tas de sites et de projets à suivre pour assurer une veille logicielle complète.
Mon conseil : ne cherchez pas l’exhaustivité, mais complétez plutôt votre veille au fil du temps.
**Je vous recommande ainsi de commencer par identifier le périmètre que vous souhaitez surveiller pour ne pas partir dans tous les sens.**

En tant que développeur, un élément qui me semble particulièrement pertinent est le suivi des sorties de versions des dépendances des projets.
Cela peut concerner votre langage de programmation, le ou les frameworks utilisés, les bibliothèques les plus importantes, ou encore les briques d’infrastructure comme la base de données.
Cette veille vous permettra de couvrir un large spectre qui vous sera directement utile.

En fonction de votre spécialité, vous allez aussi vouloir suivre des domaines plus spécifiques comme la sécurité, l’accessibilité, le design, ou l’administration système.

Enfin, vous aurez peut-être envie de compléter le tout par une veille numérique plus généraliste pour des questions d’intérêt et de culture générale.
Mais si vous débutez, gardez-vous peut-être ça pour plus tard afin de ne pas crouler sous les informations.

## Trouver les flux qui vous intéressent

Une fois le périmètre posé, il faut partir à la quête des sites et blogs qui contiennent les informations qui vous intéressent.
Il existe plusieurs types de sources qui peuvent vous intéresser :

- les blogs des projets (langages de programmation, bibliothèques, logiciels) ;
- les blogs et sites spécialisés dans leur domaine d’expertise ;
- les forges logicielles (type Gitlab ou GitHub) ;
- etc.

**L’important est que ces sources vous fournissent un flux Web auquel vous brancher.**

Par exemple, les langages de programmation ont tous leur blog avec un flux associé.
Une (très) courte sélection :

- [PHP](https://www.php.net/) : `https://www.php.net/feed.atom`
- [Python](https://blog.python.org/) : `https://blog.python.org/feeds/posts/default?alt=rss`
- [Ruby](https://www.ruby-lang.org/en/news/) : `https://www.ruby-lang.org/en/feeds/news.rss`

Certains projets n’ont toutefois pas l’énergie bénévole pour tenir un blog[^1].
Vous pouvez également n’être intéressé·e que par les sorties des nouvelles versions, et non par l’ensemble des actualités.
Dans ces cas-là, il est possible de suivre les publications de versions depuis les flux générés par les forges logicielles.
GitHub, notamment, génère des flux pour les pages « Releases » et « Tags » de chaque projet.
Il suffit pour cela d’ajouter `.atom` à la fin des <abbr>URL</abbr>.
Par exemple, du côté de l’écosystème PHP :

- [Symfony](https://github.com/symfony/symfony/releases) : `https://github.com/symfony/symfony/releases.atom`
- [Rector](https://github.com/rectorphp/rector/releases) : `https://github.com/rectorphp/rector/releases.atom`
- [PHPUnit](https://github.com/sebastianbergmann/phpunit/releases) : `https://github.com/sebastianbergmann/phpunit/releases.atom`

**Les flux des forges sont une très bonne porte d’entrée à votre veille logicielle.**

[^1]: Ou pire : ils ont un blog mais pas de flux Web ! 😱

Du côté des sites spécialisés, les possibilités sont très variées et je ne m’aventurerai pas dans une longue liste.
Toutefois, certaines entreprises spécialisées dans les outils que vous utilisez bloguent possiblement dessus.
N’hésitez pas à les suivre : il s’agit de l’une des meilleures sources d’information qu’il soit !
On peut parfois les découvrir depuis la page « sponsors » des projets.

Vous pouvez également vous intéresser aux orateurs et oratrices qui interviennent aux conférences liées aux technologies que vous utilisez.
Ils et elles peuvent tenir un blog à côté !

Dans le domaine spécifique de la sécurité, vous voudrez peut-être suivre les publications du [CERT-FR](https://www.cert.ssi.gouv.fr/).
Il s’agit de l’équipe gouvernementale portée par l’[<abbr>ANSSI<abbr>](https://cyber.gouv.fr/) qui traite les incidents de cybersécurité.
Je ne conseille pas de suivre le flux général car il est plutôt verbeux.
Je me contente personnellement :

- du flux des alertes : `https://www.cert.ssi.gouv.fr/alerte/feed/` ;
- et de celui des bulletins d’actualité : `https://www.cert.ssi.gouv.fr/actualite/feed/`.

## Suivre des flux dans Flus

Flus vous permet de recevoir automatiquement les publications des flux que vous suivez.
**Pour cela, rendez-vous dans l’onglet « Flux » et cliquez sur « Ajouter un flux » pour y coller son adresse.**

![Une fenêtre dans Flus demandant l’adresse d’un site à suivre.](images/flus-add-feed2.webp)

Il n’est pas toujours nécessaire de connaître l’adresse précise du flux que vous voulez suivre.
En effet, Flus peut généralement le trouver tout seul depuis l’adresse du blog ou de la page concernée[^2].
Si Flus ne trouve pas le flux qui vous intéresse, alors il vous faudra en chercher l’adresse vous-même malheureusement !

[^2]: À condition que [le blog ait pensé à déclarer son flux.](declarez-vos-flux.html)

Une fois les flux ajoutés, vous retrouverez leurs publications depuis le journal (onglet « Lecture »).
Pour profiter au mieux des fonctionnalités du journal, je vous renvoie vers l’article dédié : « [Comment bien utiliser le journal de Flus](comment-bien-utiliser-le-journal.html) ».

## Conclusion

Si vous bossez en informatique, assurer votre veille est important pour rester à la page et maintenir vos compétences.
Bonne nouvelle : ce n’est pas une démarche compliquée à entreprendre, à condition de savoir par où commencer.
**Le plus simple est de partir d’un de vos projets et d’identifier sur quelles briques logicielles il repose.**

Cet article est déjà suffisamment long, mais je vous présente également dans l’article suivant une étude de cas pour rendre le sujet plus concret : « [Étude de cas : la veille des dépendances du projet Bileto](etude-de-cas-dependances-bileto.html) ».

En attendant, je vous invite à d’ors-et-déjà entreprendre la mise en place d’une démarche de veille si ce n’est pas encore le cas.
Pour cela, Flus vous accueille les bras ouverts !

<p class="text--center">
    <a class="button button--primary" href="https://flus.fr">
        Se rendre sur flus.fr
    </a>
</p>
