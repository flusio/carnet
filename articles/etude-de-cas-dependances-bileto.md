---
title: Étude de cas : la veille des dépendances du projet Bileto
date: 2024-10-17 12:00
description: Étude des technologies utilisées dans le projet Bileto et les sources de veille qui lui sont liées.
---

_Cet article fait suite à celui d’hier : « [Cas d’utilisation : assurer votre suivi logiciel avec Flus](cas-utilisation-suivi-logiciel.html) ».
J’y expliquais notamment pourquoi et comment faire sa veille logicielle avec Flus quand on est développeur ou développeuse.
Aujourd’hui, je vous présente une étude de cas pour rendre le sujet plus concret._

---

Sur le reste de mon temps professionnel, en plus de Flus, je travaille sur une application de gestion de support (<em lang="en">helpdesk</em>) : [Bileto](https://github.com/probesys/bileto).
Ce projet possède de plus nombreuses dépendances à des bibliothèques externes que Flus.
Je le trouve donc plus intéressant à étudier.

**Dans cet article, je présente les différentes technologies qui sont utilisées dans le projet, et quelles sources liées je suis amené à suivre dans le cadre de ma veille.**

## Les technologies de base

Pour commencer par du très basique, Bileto est écrit en <abbr>PHP</abbr>.
C’est donc naturellement que je suis le flux du site officiel, mais également quelques blogs qui traitent de <abbr>PHP</abbr> plus largement.

- [PHP](https://www.php.net) : `https://www.php.net/feed.atom`
- [The PHP Foundation](https://thephp.foundation/) : `https://thephp.foundation/atom.xml`
- [PHP.Watch](https://php.watch/) : `https://php.watch/feed/articles.xml`
- [stitcher.io](https://stitcher.io) : `https://stitcher.io/rss`

De plus, Bileto repose sur le framework [Symfony](https://symfony.com/).
Je suis à la fois :

- le flux du blog (`https://feeds.feedburner.com/symfony/blog`) qui contient les annonces des nouvelles versions, mais également des trucs et astuces ainsi que l’activité de l’écosystème.
- le flux des versions sur GitHub (`https://github.com/symfony/symfony/releases.atom`) pour être certain de ne manquer aucune sortie de version.

## Les bibliothèques additionnelles

Du côté des dépendances, je me contente généralement de suivre les sorties des nouvelles versions.

- PHP-IMAP : `https://github.com/Webklex/php-imap/releases.atom`
- PHPStan : `https://github.com/phpstan/phpstan/releases.atom`
- PHPUnit : `https://github.com/sebastianbergmann/phpunit/releases.atom`
- Rector : `https://github.com/rectorphp/rector/releases.atom`
- Foundry : `https://github.com/zenstruck/foundry/releases.atom`
- ViteJS : `https://github.com/vitejs/vite/releases.atom`
- TinyMCE : `https://github.com/tinymce/tinymce/tags.atom`
- Turbo : `https://github.com/hotwired/turbo/releases.atom`
- Stimulus : `https://github.com/hotwired/stimulus/releases.atom`

Je suis également [le blog des développeurs de 37signals](https://dev.37signals.com/) qui développent et maintiennent Turbo et Stimulus (en plus de Ruby on Rails) : `https://dev.37signals.com/feed/posts.xml`.

## L’infrastructure

Côté infrastructure, Bileto supporte les bases de données MariaDB et PostgreSQL.
Je n’effectuais pas de veille très active sur ces projets jusqu’à récemment.
En effet, j’utilise peu les fonctionnalités avancées de ces bases dans Bileto, et j’assure le support jusqu’à leurs plus anciennes versions encore maintenues.
Je bénéficie donc peu des nouveautés au moment de leur sortie.
Néanmoins, je suis récemment tombé sur [le blog de Dalibo](https://blog.dalibo.com), une ressource française intéressante du côté de PostgreSQL : `https://blog.dalibo.com/feed.xml`.

J’utilise aussi [GreenMail](https://greenmail-mail-test.github.io/greenmail/) qui me sert de serveur de mails en phase de développement : `https://github.com/greenmail-mail-test/greenmail/releases.atom`.

## L’écosystème

Parce que tout n’est pas que technique, j’essaye de suivre l’avancée de quelques projets opensource qui font également de la gestion de support :

- [GLPI](https://glpi-project.org/) : `https://github.com/glpi-project/glpi/releases.atom`
- [osTicket](https://osticket.com/) : `https://github.com/osTicket/osTicket/releases.atom`
- [FreeScout](https://freescout.net/) : `https://github.com/freescout-help-desk/freescout/releases.atom`
- [Zammad](https://zammad.org/) : `https://github.com/zammad/zammad/tags.atom`

## Conclusion

**Vous le voyez, pour un simple projet, le nombre de sources potentielles à suivre peut rapidement grimper.**
Je n’ai d’ailleurs pas inclus tout un tas de sources complémentaires que je ne suis pas spécifiquement dans le cadre de Bileto, mais qui me sont toutefois utiles (comme des blogs qui traitent d’accessibilité ou de frontend).
Vous pourriez vous dire que cela fait beaucoup de sources à suivre.
Toutefois, cela reste très supportable au quotidien : la plupart n’ont pas un rythme de publication quotidien.

Effectuer cette veille me permet non seulement de suivre avec précisions les nouvelles sorties, mais aussi **de découvrir de nouvelles pratiques ou de nouveaux outils que je peux régulièrement appliquer sur mes projets.**
De plus, en suivant ce qui se passe dans l’écosystème de Bileto, **je découvre ce qui se fait ailleurs et qui pourrait ensuite m’inspirer pour le projet.**

À travers cet exemple, j’espère vous avoir montré qu’il y avait la possibilité de suivre de nombreuses sources grâce aux flux Web.
Je pense que vous imaginez qu’il serait impossible de tout suivre sans un agrégateur tel que Flus !
Si cela vous a rendu curieux ou curieuse, je vous invite donc à découvrir toutes les possibilités de Flus sur le site.

<p class="text--center">
    <a class="button button--primary" href="https://flus.fr">
        Se rendre sur flus.fr
    </a>
</p>
