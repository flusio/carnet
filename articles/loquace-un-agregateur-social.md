---
title: Loquace, un agrégateur-social
date: 2023-03-20 12:15
update: 2023-05-02 11:05
description: Publication de mon troisième est dernier prototype basé sur les flux Web : Loquace.
---

Combien de fois ai-je lu « _Google a tué le <abbr>RSS</abbr> en fermant Google Reader_ » ?
Je n’y ai jamais vraiment cru.
Selon moi, les flux Web — dont le format <abbr>RSS</abbr> fait partie — ont simplement perdu de leur intérêt face à une forme de « veille sociale » qu’ont permis les réseaux sociaux (pour le meilleur et pour le pire).
Cela étant dit, les flux Web n’ont jamais été que des formats ; des détails techniques.
Ce sont les concepteur⋅ices de logiciels qui en imaginent les usages.
Or, aujourd’hui, les agrégateurs de flux Web ont tendance à ne proposer que des variations autour du même « moule » : une colonne qui se remplit à l’infini d’articles à lire.

Après [Hitchhiker](hitchhiker-generateur-de-planets-statiques.html) et [Flus Actualités](flus-actualites.html), j’ai continué d’explorer d’autres manières d’utiliser les flux Web.
**Aujourd’hui, je vous présente Loquace.**

Note importante pour commencer : contrairement à [Flus Actualités](flus-actualites.html), **Loquace ne restera pas en ligne.**
Je le désinstallerai aux alentours **du 20 avril** (_edit : ce qui est désormais chose faite_).

![Une capture d’écran de Loquace montrant un champ de saisie pour écrire du texte et le début d’une publication. La navigation montre qu’il existe un profil et un champ de recherche pour trouver des flux.](images/loquace.png)

Loquace est un _prototype_ de réseau social.
Vous pouvez y créer un compte, publier du contenu, suivre d’autres comptes et répondre à leurs publications.
**L’astuce, c’est que n’importe quel site proposant un flux RSS ou Atom peut également y être suivi.**

Cela signifie notamment que vous pouvez facilement commenter les publications de ces sites.
Comme Loquace se base sur un standard[^1], il est capable de détecter lorsque deux sites externes se répondent entre eux.

[^1]: Je me suis basé sur la présence d’une balise `<link rel="related">` dans le flux.
À noter pour les curieux de la technique qu’il aurait été plus judicieux de me baser [sur la RFC 4685](https://www.bortzmeyer.org/4685.html) qui normalise les fils de discussion au sein des flux Atom.
Que voulez-vous, mon temps est limité, mais ne faites pas la même erreur que moi !

Second élément important : Loquace supporte [Websub](https://fr.wikipedia.org/wiki/WebSub).
Websub est un protocole léger qui ajoute du temps réel aux flux Web.
C’est-à-dire que les publications des sites qui publient leur flux via Websub (comme ce blog !) seront affichées en temps réel dans Loquace.
Cela signifie également que deux serveurs Loquace qui se suivent peuvent interagir en temps réel, un peu à la manière de [Mastodon](https://joinmastodon.org/fr).
En somme, c’est de la [fédération](https://fr.wikipedia.org/wiki/ActivityPub)[^2] à pas cher !

[^2]: Peut-on parler de <i>Feed</i>iverse ?

---

Loquace est [un logiciel libre](https://framagit.org/marienfressinaud/loquace) que j’ai développé dans le cadre de la présentation que je donnerai [dimanche 2 avril aux <abbr>JdLL</abbr>](https://flus.fr/carnet/jdll-2023.html).
Il ne sera pas amené à évoluer.
En revanche, certaines fonctionnalités pourront être intégrées plus tard à [Flus](https://flus.fr/), mon logiciel de veille.
