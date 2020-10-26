---
title: Abonnements, suite et fin (Weeknotes #18)
date: 2020-10-19 12:00
description: Deuxième et dernière semaine passée sur le nouveau système de paiement, une bonne chose de terminée.
---

La semaine dernière a été plutôt chargée puisque je voulais terminer deux
choses. À force j’ai l’impression que toutes mes semaines sont chargées, mais
ce n’est pas le cas rassurez-vous, je prends soin de moi 😄

La première était de déployer le nouveau service de paiement pour les
abonné‧es existant‧es. Je n’aime jamais trop toucher à ça, mais c’était
nécessaire pour la suite. J’ai effectué la migration jeudi matin sans (trop) de
problèmes.

La deuxième chose que je voulais faire était de brancher ce système de paiement
au nouveau service. J’ai pu faire cela assez rapidement puisque j’avais déjà
écrit le code dans [l’extension FreshRSS](https://github.com/flusio/xExtension-Flus)
qui gère ça pour le service actuel. Il y a évidemment des différences
d’architecture du code, mais la principale difficulté a été d’écrire les tests
pour vérifier que tout fonctionne correctement. J’ai finalement dû terminer les
derniers détails samedi matin (exceptionnellement).

Les bonnes nouvelles de ces deux dernières semaines :

- **il n’y aura besoin que d’un seul abonnement pour bénéficier des deux services ;**
- le mécanisme de paiement est plus joli et mieux testé, je suis plus serein
  qu’avant ;
- je vais pouvoir passer à autre chose, youpi !

Ce samedi après-midi, j’ai par ailleurs mené mon premier test utilisateur
(merci Erwan !) J’ai une tonne de retours à prendre en compte (ou non) et une
potentielle nouvelle fonctionnalité qui pourrait être chouette à avoir. Tout ça
vient donc s’ajouter à ma liste déjà longue de choses à faire avant la sortie
de la bêta en décembre. **Je vais me concentrer sur le fignolage du journal pour
en améliorer l’expérience utilisateur, ainsi que l’amélioration de la structure
de l’interface pour la rendre plus claire.**
