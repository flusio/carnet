---
title: Hitchhiker, générateur de « planets » statiques
date: 2023-01-31 10:00
description: Connaissez-vous les « planets » ?
---

_Note : cet article est relativement technique. Vous êtes prévenu‧es_

Connaissez-vous les « planets » ?
Il s’agit de sites Web qui agrègent les publications de plusieurs sites, généralement sur un sujet précis.
Pour cela, ils utilisent les flux Web (<abbr>RSS</abbr>, Atom) mis à disposition par les sites concernés.
Par exemple, on peut citer [planet-libre.org](http://www.planet-libre.org/)[^1] qui agrège le contenu de plusieurs blogs français traitant de logiciels libres.

[^1]: À l’heure où j’écris ces lignes, le planet est toujours en ligne, mais ne semble plus vraiment maintenu.

La mode est quelque peu passée, mais je trouve le concept toujours intéressant.
Dans le cadre des [<abbr>JdLL</abbr>](https://jdll.org/), je veux créer des prototypes d’applications autour des flux Web.

**Le premier prototype que j’ai écrit est donc un générateur de planets statiques : [Hitchhiker](https://framagit.org/marienfressinaud/hitchhiker/).**

Il s’agit d’un programme en ligne de commande.
Il suffit de l’appeler avec une liste de flux Web à agréger, et il génère un site avec les articles issus de ces flux.

Hitchhiker peut être facilement configuré avec Gitlab Pages ou GitHub Pages pour publier des planets.
À titre d’exemple, j’ai créé [un planet qui agrège la liste de mes publications](https://marienfressinaud.frama.io/planet/) (issues de ce carnet, de mon site perso et de ma veille Flus).
La configuration Gitlab Pages se trouve ici : [framagit.org/marienfressinaud/planet](https://framagit.org/marienfressinaud/planet).

Attention, je rappelle que Hitchhiker est un prototype.
Mon but est de le garder le plus simple possible (30 lignes de code).
Je compte m’en servir en démonstration lors des prochaines <abbr>JdLL</abbr> (si ma conf est retenue, évidemment !)
