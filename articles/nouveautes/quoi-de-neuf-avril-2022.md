---
title: Quoi de neuf en avril
date: 2022-04-28 16:53
description: Résumé du mois de février pour Flus : JdLL, FreshRSS, infrastructure et recherche.
---

## <abbr>JdLL</abbr>

Le mois d’avril a commencé par ma conférence « Tout plaquer pour élever des logiciels libres » donnée lors des Journées du Logiciel Libre, à Lyon. J’ai déjà publié [la transcription dans le carnet](transcription-tout-plaquer-pour-elever-des-logiciels-libres.html).

Je vous avoue que la préparation a été plutôt chaotique durant le mois de mars. Je voulais l’avancer un peu toutes les semaines mais, passé la première phase de travail, j’ai eu tendance à fuir et vouloir m’occuper autrement. J’ai fini par la préparer sérieusement seulement la dernière semaine de mars, juste avant les <abbr>JdLL</abbr>. En soit, c’était très similaire à ma manière de préparer mes partiels durant mes études, j’étais donc en terrain connu et plutôt serein 😄

Au final les retours sur ma présentation ont tous été très positifs.

## Mise à jour de FreshRSS et de l’infrastructure

J’ai fini par m’occuper de deux gros morceaux que je traînais depuis des mois : [la mise à jour de FreshRSS vers la version 1.19](flus-1-sous-freshrss-1-19.html), et [la migration de flus.io vers un nouveau serveur](infrastructure-avril-2022.html).

La mise à jour de FreshRSS a été plus simple que prévu. J’ai tout de même réécrit le thème en faisant en sorte de rester le plus proche possible des thèmes par défaut, afin de faciliter les prochaines mises à jour.

Concernant la migration, l’ampleur de la tâche me faisait un peu peur, mais les choses se sont bien passées. Je suis content d’avoir bien préparé le terrain, en particulier en répétant une partie du processus de migration en amont. Le seul vrai souci que j’ai rencontré a été [une panne du côté de Gandi](https://status.flus.fr/a/1730477658301676875) au moment de mettre à jour les enregistrements <abbr>DNS</abbr>, ce que je pouvais difficilement prévoir.

Il me reste encore de petites choses à corriger par endroit, mais j’avoue que j’ai plutôt envie de refaire un peu de développement. Ce qui m’amène à…

## La recherche dans Flus

J’ai repris le développement de Flus, en travaillant sur un mécanisme de recherche. C’est quelque chose qui m’a souvent été demandé, mais que j’ai repoussé tant que j’avais des choses plus pressantes ou intéressantes à faire.

J’ai débuté le développement du moteur de recherche cette semaine. Pour l’instant j’ai seulement avancé sur le « parser » de requêtes (c’est-à-dire le bout de code chargé de donner du sens au texte rentré dans le champ de recherche).

Il restera ensuite à lancer les requêtes sur la base de données, puis à créer l’interface utilisateur (et je pressens que ce ne sera pas simple !) Enfin, il y aura sans doute une phase de tests privée afin de vérifier que les performances sont bonnes.

## À venir

J’espère que le moteur de recherche sera disponible dès la fin du mois de mai. Cela me laisserait le champ libre pour travailler sur la prochaine grosse fonctionnalité de Flus : **les collections partagées.** Le but sera de permettre l’édition de collections à plusieurs, et ainsi de partager une veille commune. À cet instant, je n’ai pas de date à annoncer, en particulier parce que je prends invariablement du retard dès que je me risque à le faire.

De plus, comme annoncé dans mon article « [Bilan 2021](bilan-2021.html) », je suis en recherche d’un job à temps partiel pour compléter mes revenus. Les choses ont commencé à avancer de ce côté-là. Mon objectif principal est bien entendu de continuer de bosser et maintenir Flus. Cependant, si cela se concrétise, je vais sans doute devoir adapter mon rythme de travail. Je vous tiendrai au courant dès que j’en saurai plus.