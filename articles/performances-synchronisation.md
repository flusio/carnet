---
title: Comment j’ai amélioré les performances de synchronisation
date: 2021-09-02 16:49
description: Je reviens sur les améliorations apportées aux performances de Flus durant le mois d’août.
illustration: images/flusio-sync.png
---

Si vous avez découvert Flus cet été, les chances sont grandes pour que vous ayez fait face à ce genre d’écran :

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-sync.gif" alt="Capture d’écran de liens avec la mention « synchronisation en cours » et une icône qui tourne à l’infini">
    </div>

    <figcaption>
        Ça tourne, ça tourne, ça tourne… <kbd>F5</kbd> ? Ah non, ça tourne toujours.
    </figcaption>
</figure>

Je ne vous cache pas que, même pour moi, ce n’est pas très accueillant. Alors qu’est-ce qu’il s’est passé ?

Le 23 juillet, la chaîne YouTube ScienceÉtonnante publiait [une vidéo dans laquelle il évoquait son utilisation de Flus](https://www.youtube.com/watch?v=Sm_FgccC9dk). Dans la foulée, de nombreuses personnes se sont inscrites : sur le mois de juillet ce sont 1 871 comptes qui ont été créés alors que je tournais à largement moins de 100 les mois précédents. Le 24 juillet [je tweetais](https://twitter.com/flus_fr/status/1418874489736159232) :

> Depuis hier le nombre d’utilisateurs de Flus a doublé, bienvenue à toutes et tous ! 👋  
> Si vous n’avez pas reçu le courriel de confirmation, pensez à vérifier votre adresse 🙂  
> Beaucoup de nouveaux liens également, ça va prendre quelques heures/jours pour tout synchroniser 🔄

**Ça m’a finalement pris presque un mois pour tout synchroniser et non pas sans un peu d’huile de coude pour huiler les rouages de la machine.** Je vous explique ici ce que j’ai fait pour améliorer les choses. Attention, ça va parler technique, mais c’est aussi l’occasion pour vous de comprendre comment ça fonctionne dans l’arrière-boutique ! Si ça ne vous intéresse pas, vous pouvez sauter immédiatement à la conclusion.

## La synchro dans ses grandes largeurs

Flus stocke 3 types de contenus qu’il doit synchroniser : les liens, les flux et les images. **La synchronisation consiste à envoyer une requête (<abbr>HTTP</abbr>) vers un serveur extérieur** pour en extraire les informations utiles (le titre d’un lien, l’URL d’une image d’illustration, la liste des articles d’un flux, etc.) Cette synchronisation est effectuée par un petit programme qui tourne en tâche de fond sur le serveur de Flus ; j’appelle ce programme **un <em lang="en">job worker</em>, ou plus simplement <em lang="en">worker</em>.**

Les liens et les images n’ont besoin d’être synchronisés qu’une seule fois, mais les flux doivent l’être plusieurs fois par jour (jusqu’à une fois par heure !) À ce jour, on approche des 13 000 flux, ce qui nous donne un ordre de grandeur de 240 000 requêtes par jour pour les flux seulement. Rajoutez à cela environ 50 000 liens synchronisés chaque jour ainsi que 15 000 images. Il est loin le temps où j’étais tout fier [de stocker 20 000 liens dans Flus…](https://twitter.com/flus_fr/status/1389614681917202432)

Tout ça pour dire qu’on tape dans le million de requêtes extérieures en 3 – 4 jours et qu’il m’a fallu être un peu malin pour atteindre ce chiffre.

## Le <abbr>CPU</abbr>, nerf de la guerre

Jusqu’au [11 août](https://status.flus.io/2021-08-09-mise-a-jour-serveur.html), Flus tournait sur un serveur avec 2 <abbr>CPU</abbr> ; ça avait été bien suffisant lors de ses premiers pas. Seulement, les alertes de mon système de supervision ont commencé à s’accumuler pour me prévenir que le serveur tirait la tronche. J’ai donc fait le choix de passer à un serveur avec 2 <abbr>CPU</abbr> de plus seulement. J’aurais pu surdimensionner la machine et être tranquille pour un moment, mais d’un autre côté, augmenter progressivement me contraint à améliorer les performances de Flus lui-même.

**Le passage de 2 à 4 <abbr>CPU</abbr> a suffi pour faire taire les alertes… _au moins pour un moment._**

## Les <em lang="en">workers</em> à la rescousse

À ce moment-là, je me trouvais avec plus de 80 000 liens à synchroniser, sans que ce chiffre ne baisse à cause des nouveaux liens toujours ajoutés. Les flux quant à eux pouvaient prendre jusqu’à 12h pour se synchroniser ; de quoi perturber le matin quand on reçoit les actualités qu’on s’attendait à recevoir la veille.

Je l’ai expliqué plus haut, la synchronisation se fait grâce à un <em lang="en">worker</em>, un petit programme qui tourne en tâche de fond sur le serveur. J’en avais alors un dédié à la synchronisation des flux et un second dédié à celle des liens. L’idée qui me trottait dans la tête depuis plusieurs semaines était de pouvoir augmenter ce nombre.

Je n’avais pas prévu le cas dans mon code, mais heureusement, je bosse généralement de manière pas trop dégueulasse et il m’a suffi de 3 matinées de boulot pour l’adapter. **J’ai mis en production dans la foulée pour passer à 6 <em lang="en">workers</em> dédiés à la synchronisation. Et là, Ô miracle, j’ai commencé à voir baisser le nombre de liens à synchroniser et voir se rapprocher l’heure du flux le plus anciennement mis à jour.**

_C’est alors que…_

## La mémoire en <abbr>PLS</abbr>

Si mon système de supervision m’avait donné un peu de répit avec l’arrivée des 2 <abbr>CPU</abbr> supplémentaires, les alertes ont rapidement repris, pointant cette fois-ci la mémoire du serveur qui était pleine, aïe !

Je soupçonnais **très** fortement une partie de mon code d’être en cause, mais j’ai tout de même pris le temps de vérifier en analysant les logs de la base de données (grâce à [pgbadger](https://pgbadger.darold.net/) ❤). **Une requête <abbr>SQL</abbr> qui prend plusieurs secondes pour se terminer, et exécutée plusieurs milliers de fois par jour, y’a pas besoin d’un pif énorme pour se douter que le problème vient de là.**

Le problème ? Lors de la synchronisation des flux, afin de ne pas dupliquer les URL, je chargeais en mémoire tous les liens appartenant à l’utilisateur technique… soit quelque 800 000 liens à l’époque. L’augmentation des <em lang="en">workers</em> multipliait ce nombre par 3 ! J’ai donc changé la logique interne pour ne charger que les liens du flux étant actuellement rafraîchi. J’en ai également profité pour ne plus rafraîchir les flux que je détecte comme inchangés pour économiser encore un peu de temps CPU.

Le résultat ne s’est pas fait attendre puisque je suis passé d’une mémoire pleine à plus de 80 % et des CPU utilisés à 40 %, à une mémoire pleine à moins de 40 % et des CPU à 5 % de leur capacité ! Pour être honnête, il s’agissait d’un bug et les <em lang="en">workers</em> ne tournaient tout simplement plus 😬 Bug corrigé, **la mémoire tournait autour de 40 – 50 % et les CPU entre 25 et 50 % de leur capacité.** Belle petite amélioration tout de même qui suffisait à faire taire les alertes.

## Le cas YouTube

À partir de ce moment-là, tout allait bien ? Hein… tout allait bien ?

Eh bien c’est-à-dire qu’il existe un site un peu connu — peut-être connaissez-vous ? — qui s’appelle YouTube. Il faut savoir que **si vous faites trop de requêtes vers ses serveurs, YouTube vous bloque pendant un certain temps. La limite se trouve aux alentours d’une requête par minute maximum.** Flus n’en fait donc pas plus. Il faut également savoir que les gens sont assez friands du contenu publié sur YouTube, ce qui fait que les requêtes en attente vers ses serveurs s’accumulent rapidement. Bref, tous les ingrédients sont là pour une bonne prise de tête.

J’ai longtemps bloqué sur ce problème et je ne voyais pas d’autres solutions que d’acheter de petits serveurs proxy qui auraient permis de répartir les requêtes vers YouTube. Ça allait être pénible à mettre en place et me coûter cher… _à moins que ?_

J’ai réalisé qu’un serveur pouvait utiliser plusieurs adresses <abbr>IP</abbr>. Mon serveur par exemple bénéficiait déjà de 2 <abbr>IP</abbr>, une <abbr>v4</abbr> et une <abbr>v6</abbr>. Par ailleurs mon hébergeur, [Hetzner](https://www.hetzner.com/), me permet d’associer d’autres adresses très facilement moyennant une petite commission mensuelle (1,20 € pour une <abbr>IPv6</abbr>). Il me restait à vérifier que je pouvais choisir l’<abbr>IP</abbr> avec laquelle faire les requêtes depuis mon code, ce qui était effectivement le cas (grâce à l’option `CURLOPT_INTERFACE` de la fonction `curl_setopt` pour les curieu‧ses du <abbr>PHP</abbr>).

**Quelques lignes de code plus tard, mon serveur était capable de faire 2 requêtes vers YouTube par minute, puis bientôt 3.** Ça peut paraître une hausse ridicule, mais j’avais alors 2 000 liens en attente à ce moment-là : je suis passé de minimum 33h pour tout synchroniser à seulement 11h.

_Note suite à la publication : grâce à la vigilance de e-jim sur Mastodon, je réalise que je disposais non pas d’une seule <abbr>IPv6</abbr>, mais d’un bloc /64. Je dispose par conséquence de beaucoup plus d’adresses. Ceci dit, il ne serait pas étonnant que Youtube bloque par blocs entiers, mais je teste ça en ce moment-même !_

## Un questionnement en guise de conclusion

C’est fou ce qu’il ne faut pas faire pour faire disparaître quelques « synchronisation en cours » qui prennent trop de place ; même pas une nouvelle fonctionnalité, juste un élément de l’interface un peu gênant. Au final, ça ne m’aura pas pris tant de temps que ça — quelques matinées de boulot — et je vous avoue que ça m’a bien amusé. J’en ai également profité pour améliorer mes outils afin de m’aider à mieux détecter les problèmes.

**Flus exécute désormais environ 300 000 requêtes <abbr>HTTP</abbr> par jour, contre 100 000 auparavant, et pourrait encore facilement monter s’il le fallait.** J’ai également en tête quelques optimisations possibles pour améliorer les performances. Bref, je suis prêt à recevoir encore quelques vagues de nouvelles inscriptions ! _\*invitation subliminale\*_

**Mais tout cela m’a amené à me poser une question l’autre jour : est-ce bien raisonnable de faire autant de requêtes ?** À l’origine, je ne pensais pas devoir gérer autant de flux aussi rapidement. De plus, seule une infime proportion des liens stockés en base de données est réellement utile à un ou une humaine. Dans le même temps, on parle d’échanges de fichiers souvent au format texte et toujours limités en taille ; ce ne sont pas des téraoctets de données qui transitent, loin de là ! (pour l’instant en tout cas 👀)

Dit autrement, je me demande quelles questions posent réellement ce constat du nombre de requêtes ; **en trame de fond, comment être un bon voisin vis-à-vis des autres, qu’iels soient serveurs, humaines ou mère nature ?**
