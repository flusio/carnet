---
title: « Tout plaquer pour élever des logiciels libres », la transcription
date: 2022-04-09 17:49
description: La transcription de ma présentation donnée aux JdLL début avril 2022.
---

Samedi 2 et dimanche 3 avril se sont tenues les 23<sup>e</sup> Journées du Logiciel Libre (<abbr>JdLL</abbr>). J’y ai donné une conférence intitulée « [Tout plaquer pour élever des logiciels libres](https://pretalx.jdll.org/jdll2022/talk/T9QAHN/) ». C’était l’occasion pour moi de faire un retour d’expérience, de mon départ de mon ancienne entreprise jusqu’à l’état actuel de Flus aujourd’hui.

Je vous propose ici la transcription de ma conférence. Pour celles et ceux qui étaient là dimanche, la transcription est plus complète que ce que j’ai raconté car je l’ai rédigée en amont : j’ai oublié de dire certaines choses, ou j’en ai enlevées pour rester dans les temps.

J’ai ajouté les liens vers les diapositives correspondantes aux parties. Si vous voulez retrouver les diapos dans leur ensemble, [c’est par ici](talks/tout-plaquer/index.html) (avancez en appuyant sur la touche <kbd>N</kbd>) (mais honnêtement c’est pas très intéressant, c’est presque uniquement illustratif).

Je remercie encore une fois les <abbr>JdLL</abbr> pour l’organisation et la salle des Rancy pour le lieu, ça a été un vrai plaisir de retrouver plein de monde ! Je remercie également les personnes qui sont venues me voir et pour leurs questions, je les ai trouvées très pertinentes 🙂

---

## Alix travaille

[_Diapositive 1.0_](talks/tout-plaquer/index.html#/1/0/3)

Avant de commencer, je vais vous raconter une petite histoire, celle d’Alix. L’histoire se déroule pendant l’une de ses journées de boulot.

Alix est salariée dans une boite de service. Elle fait du développement logiciel et son entreprise vend sa « force de travail » à d’autres entreprises qui ont besoin qu’on leur développe un logiciel. Son client actuel est une banque. C’est pas le client idéal pour Alix, mais au moins c’est un client qui paye bien et elle n’a pas besoin de se déplacer chez son client. C’est plutôt rare dans son métier.

Arrivée au boulot, elle vérifie ses emails. Il n’y en a qu’un, envoyé par son client : « URGENT ». Un mail qui lui demande d’importer des données générées par la banque dans l’outil qu’elle développe d’ici demain 9h. Évidemment, il a été envoyé la veille au soir : demain étant donc aujourd’hui et 9h étant maintenant. L’importation ne se passe pas trop mal, mais lui prend tout de même un quart d’heure. Elle a un peu de retard et elle envoie un email à son client pour s’excuser… mais évidemment n’en pense rien. Elle se dit qu’elle a fait de son mieux et qu’on ne peut rien lui reprocher. Puis rien de tel qu’une petite dose de stress pour bien commencer la journée n’est-ce pas ?

Midi arrive, elle et ses collègues doivent manger rapidement car leur patron a voulu caler une réunion d’équipe à 13h. Le pitch : c’est la galère pour trouver des clients qui nous plaisent, faudrait communiquer plus vers l’extérieur, ce serait cool que les dev passent plus de temps à rédiger des articles pour le blog, ou se rendent à des conventions pour tenir des stands et donner des présentations. Par contre, faudra vous débrouiller pour vous organiser vous-mêmes, on va rien changer à l’organisation habituelle de la boîte. C’est au moins la 3<sup>e</sup> fois qu’Alix participe à ce genre de réunion depuis qu’elle est dans sa boîte et elle le sait très bien : rien ne changera. C’est désolant mais, après tout, ce n’est que sa boîte.

Alix continue sa journée en travaillant beaucoup. En rentrant le soir, elle s’effondre dans son canapé, lessivée. Elle avait plus ou moins prévu de faire du bénévolat sur son temps libre, mais ça va plutôt être soirée détente en regardant un film. Au moins sa journée aura été productive… du point de vue de sa boîte en tout cas.

[_Diapositive 1.1_](talks/tout-plaquer/index.html#/1/1)

Avec cet exemple simple et (un poil) caricatural, j’ai essayé d’illustrer ce que j’ai ressenti pendant plusieurs mois, voire années. Ces petits désagréments qu’on passe notre temps à relativiser, mais qui s’accumulent. À force, on perd de vue ce qu’on aime et on associe notre métier à un cadre négatif. Le risque, c’est qu’on finisse blasé, contrarié, en colère, crevé, voire en burnout. Et personne n’aime les burnouts.

## Pourquoi j’ai continué l’informatique

[_Diapositive 2.0_](talks/tout-plaquer/index.html#/2)

Je vous ai donc dit qu’à un moment donné, je me suis retrouvé dans la même situation qu’Alix. J’aurai alors pu faire le choix de me reconvertir en dehors de l’informatique… mais je ne l’ai pas fait. Je vous explique.

[_Diapositive 2.1_](talks/tout-plaquer/index.html#/2/1)

Je vais vous parler un peu de moi. Je m’appelle Marien Fressinaud, je suis développeur Web et je propose un service en ligne nommé [Flus](https://flus.fr). Je m’intéresse au logiciel libre depuis presque 15 ans. J’ai notamment développé [FreshRSS](https://freshrss.org), un agrégateur de flux RSS (qui va avoir 10 ans cette année d’ailleurs !) et [flusio](https://github.com/flusio/flusio) un outil pour gérer sa veille en ligne, dont je vous reparlerai plus tard. À côté de ça, je suis également bénévole pour [Framasoft](https://framasoft.org/), une association d’éducation populaire aux enjeux du numérique et des communs culturels, bien connue en partie pour les services en ligne qu’elle propose.

En parallèle durant ces 10 dernières années, j’ai passé 3 ans d’apprentissage dans une grosse boîte, puis 3 ans dans une petite société de services. Structurellement elles n’avaient pas grand-chose à voir, mais retenez que dans les deux cas, j’ai fini avec la même sensation de ne pas trouver de sens dans mon travail.

[_Diapositive 2.2_](talks/tout-plaquer/index.html#/2/2)

En 2018, je me suis retrouvé dans une situation similaire à celle d’Alix : gavé par mon boulot sans vraiment réussir à mettre des mots sur mon malaise. J’étais en totale perte de sens dans ce que je faisais. J’ai alors participé à un évènement clé : [Sud Web](https://sudweb.fr/) (une conférence qui se <del>passe</del> passait dans le Sud et qui parle de Web, original !) Sa particularité est d’aborder le Web sous l’angle de l’humain et de sa recherche de sens : c’est exactement ce dont j’avais besoin. J’ai réalisé que je ne maîtrisais plus ma vie professionnelle, que je l’avais posée sur des rails mais que je ne dirigeais plus rien. J’ai alors eu un déclic : je veux reprendre la main dessus.

Fin 2018, je pars ainsi de ma boîte précédente pour trouver ce que je veux faire. À ce moment-là, j’aurais pu décider de tout quitter pour élever des chèvres dans la Creuse. Mais je ne l’ai pas fait. Alors pourquoi ne pas quitter le milieu de l’informatique alors que ça me traversait l’esprit ?

[_Diapositive 2.3_](talks/tout-plaquer/index.html#/2/3/0)

J’ai trouvé plusieurs raisons à cela. Elles me sont propres et ma liste n’est probablement pas exhaustive, mais cela m’a suffi pour me rappeler qu’il y avait des raisons de rester dans l’informatique.

- la société se numérise de plus en plus, qu’on le veuille ou non, et pas forcément toujours dans le bon sens ;
- autant que des gens comme moi, qui maîtrisent le numérique et l’aiment, essayent de le ramener dans une meilleure direction ;
- j’aime développer, j’adore créer des choses, écrire des lignes de code et voir le résultat prendre forme sous mes yeux.

Et puis enfin, peut-être la raison la plus importante de toutes : j’ai pas très très envie d’élever des chèvres, en fait.

## Le sens du logiciel libre

[_Diapositive 3.0_](talks/tout-plaquer/index.html#/3)

L’informatique OK, mais je veux trouver du sens dans ce que je fais maintenant.

Je vous l’ai dit, ça fait des années que je m’intéresse au logiciel libre. J’ai alors eu la sensation qu’il fallait que je creuse dans cette direction, car ce que j’y faisais me plaisait.

Le lien n’est peut-être pas évident entre logiciel libre et sens au boulot pour tout le monde. Pour cela, il faut prendre le temps de redéfinir ce qu’est le logiciel libre.

[_Diapositive 3.1_](talks/tout-plaquer/index.html#/3/1/0)

Point définition : un logiciel libre est un logiciel qui confère 4 libertés à ses utilisateurs et utilisatrices :

0. celui de l’exécuter ;
1. celui de l’étudier ;
2. celui de le redistribuer ;
3. celui de l’améliorer.

Concrètement, les auteurs et autrices de logiciels libres distribuent leurs codes sources sous forme de dépôt de code et y associent une licence qui garantis ces libertés (les plus connues : <abbr>GPL</abbr>, <abbr>MIT</abbr>).

[_Diapositive 3.2_](talks/tout-plaquer/index.html#/3/2/1)

Mais est-ce que ça suffit pour donner un sens à notre travail ? C’est peut-être un peu juste non ?

Prenons l’exemple de Google. Google est bien connue pour ouvrir le code de certains de ses logiciels, notamment Android sous licence Apache. Eh bien je ne sais pas vous, mais je ne suis pas sûr que si je travaillais pour Google pour améliorer Android, je me sentirais à ma place. Il va falloir pousser la définition plus loin.

À mon sens, on ne peut pas se contenter de définir le logiciel libre par l’ouverture du code et une licence. J’ai écrit en 2018 un article intitulé « [Ce qui nous pousse au Libre](https://marienfressinaud.fr/ce-qui-nous-pousse-au-Libre.html) » pour expliquer ce qui me poussait, moi, à écrire des logiciels libres. J’y listais 4 raisons :

1. l’apprentissage : le logiciel libre permet d’apprendre par la pratique et on obtient des retours en échange, ce qui nous permet de  progresser ;
2. le plaisir : le logiciel libre est souvent l’occasion de se consacrer à quelque chose qui est intéressant pour nous et donc d’éprouver du plaisir en retour ;
3. le partage : le principe du logiciel libre repose sur le partage du code et des connaissances, on ne le fait pas que pour nous mais aussi pour les autres ;
4. l’éthique : on s’attache à ce que son logiciel reste au service des utilisateurs et utilisatrices et ne les rende pas captives.

C’est en particulier ce dernier point qui va nous permettre de différencier le logiciel libre de l’Open Source (un autre mouvement qui se base sur les mêmes licences). La recherche de la liberté de l’utilisateur est au cœur de la philosophie du premier, là où le second se contente d’une dimension technique.

Si on revient à l’exemple de Google et Android, on se doute que le GAFAM ne l’ouvre pas par bonté d’âme. Lorsque vous utilisez un Android fourni par Google, vous êtes incité‧e à utiliser son écosystème jusqu’à vous en rendre dépendant‧e. Google ne fait pas du logiciel libre, mais de l’Open Source.

[_Diapositive 3.3_](talks/tout-plaquer/index.html#/3/3)

C’est donc ce 4<sup>e</sup> point, l’éthique, qui va faire la différence en me servant de boussole. Quand j’annonce « je fais du logiciel libre », ça me sert de guide moral, ça me donne une direction et ça va influencer mon comportement (en axant beaucoup de choses autour du partage par exemple). C’est une forme d’engagement que j’ai avec mes utilisateurs et utilisatrices : je m’engage à vous considérer et vous respecter en tant qu’individu‧es. L’éthique que j’associe au logiciel libre donne un sens à mon métier de développeur en redonnant sa place à l’humain au sein du numérique.

## Le quotidien d’un service en ligne

[_Diapositive 4.0_](talks/tout-plaquer/index.html#/4)

Revenons-en à moi. On a vu pourquoi j’ai quitté mon job précédent, on a vu pourquoi du logiciel libre. Mais ça se passe comment concrètement au quotidien ?

D’abord, il faut que je vous explique ce que je vends. Je vous ai dit en intro que je vendais un service nommé Flus. C’est un peu plus compliqué que ça.

[_Diapositive 4.1_](talks/tout-plaquer/index.html#/4/1)

En mai 2019 germe l’idée de proposer un service en ligne payant. Le principe est d’installer un logiciel sur un serveur, d’ouvrir les inscriptions dessus, et de demander aux gens de payer un abonnement pour l’utiliser. Ça tombe bien car, il y a quelques années, j’ai développé FreshRSS (un agrégateur de flux RSS), maintenant maintenu par une communauté. Problème : ça s’installe sur un serveur et tout le monde ne sait pas ou ne veut pas faire cela. Je me dis alors que je peux proposer du FreshRSS clé en main, en l’installant moi-même. Les gens n’auront plus qu’à s’inscrire. Je nomme ce service Flus 1.

Mon objectif est d’arriver à me financer, tout en développant le logiciel (et financer FreshRSS par la même occasion donc).

[_Diapositive 4.2_](talks/tout-plaquer/index.html#/4/2)

Quelques mois plus tard, je réalise que ça ne va pas être si simple. Le marché est saturé, les alternatives souvent gratuites, je n’apporte pas grand-chose. FreshRSS est un agrégateur plutôt standard dans sa forme, il va falloir proposer quelque chose de radicalement différent. Sans rentrer dans les détails, je décide alors de développer un nouveau logiciel de zéro : flusio, un logiciel de veille qui fait de l’agrégation, de l’organisation et du partage de liens. J’installe donc ce nouveau logiciel sur un serveur, et je le nomme Flus 2.

[_Diapositive 4.3_](talks/tout-plaquer/index.html#/4/3)

Pour faire le point et simplifier tout ça, je vends donc deux services : Flus 1 et Flus 2. En général, je ne parle que de « Flus » en faisant référence au second service. C’est celui que je mets en avant car je considère que c’est le plus prometteur pour attirer des gens et pouvoir vivre du service.

Et si vous aviez un doute, on prononce bien « flu » et non pas « flusse ».

[_Diapositive 4.4_](talks/tout-plaquer/index.html#/4/4/3)

Maintenant que le contexte est posé, on va voir comment tout s’est mis en place. On va commencer au début, avec la création de l’entreprise. On peut se demander si c’est compliqué et, honnêtement, bof.

J’ai retenu trois choix et démarches à faire pour cela :

- le modèle économique : pour gagner ma vie, j’aurais pu décider de mettre en place des publicités, ou de vendre les données de mes utilisateurs et utilisatrices. Bon, j’ai considéré que ce n’était pas cohérent avec ma démarche et celle du logiciel libre. J’aurais aussi pu donner accès à Flus après un paiement unique, mais j’ai besoin de revenus réguliers, et je voulais prendre en compte le support continu nécessaire pour les gens. Je suis donc parti sur un système d’abonnements mensuels (3€) ou annuel (30€). Pas forcément le modèle idéal, j’ai donc ajouté par-dessus un système de cagnotte sur le principe des [cafés suspendus](https://fr.wikipedia.org/wiki/Caff%C3%A8_sospeso). La cagnotte est alimentée par des gens qui veulent supporter mon projet et peut être utilisée par les personnes qui ne veulent pas ou ne peuvent pas payer un abonnement.
- la structure juridique : j’ai choisi la micro-entreprise principalement parce que c’était facile à mettre en place (si vous survivez au formulaire de l’URSSAF), peu risqué et cohérent avec le fait que je me lançais dans une expérimentation. J’ai un peu hésité avec le modèle des <abbr>CAE</abbr> ([Coopérative d’Activités et d’Emploi](https://fr.wikipedia.org/wiki/Coop%C3%A9rative_d%27activit%C3%A9_et_d%27emploi)), mais j’étais frileux à l’idée d’embarquer d’autres gens là-dedans.
- la banque : en micro-entreprise, avoir un compte séparé du compte perso n’est pas obligatoire mais, personnellement, je préférais. En principe un compte courant normal suffit, mais les banques rajoutent souvent des conditions supplémentaires pour vous forcer à prendre un compte spécifique aux micro-entreprises (plus cher, évidemment). J’ai pas eu envie de m’emmerder avec tout ça, je suis allé au plus simple.

Tout ça peut se faire en quelques semaines, le temps que ça avance administrativement. La déclaration de la micro-entreprise s’est faite en moins d’une semaine. La banque par contre a réussi à [perdre mon dossier](micro-entrepreneur-banque-et-prestataire.html). Ça a donc pris un peu plus de temps.

[_Diapositive 4.5_](talks/tout-plaquer/index.html#/4/5/10)

Mais gérer un service en ligne, c’est aussi un quotidien constitué de beaucoup de tâches variées et récurrentes :

- administration système (quelques heures ou jours par mois) : installer les serveurs, mettre en place la supervision, les backups, la sécurité. Tout ça j’ai fait en amateur pendant des années avec mes propres serveurs. Il a quand même fallu que j’apprenne des tas de choses et que je prenne mes marques. Encore aujourd’hui je progresse et découvre de nouvelles choses, et c’est chouette parce que j’aime beaucoup l’administration système !
- communication / marketing (quelques heures par semaine) : pour être payé, faut avoir des clients, donc faut les faire venir en se faisant connaître. C’est compliqué parce qu’il faut construire un discours cohérent avec ce qu’on vend. J’ai choisi de faire simple en tenant [un blog](https://flus.fr/carnet/) sur lequel je parle de mon activité et des nouveautés de Flus. Je complète cela en relayant avec des comptes [Twitter](https://twitter.com/flus_fr) et [Mastodon](https://pouet.chapril.org/@flus) dédiés qui me permettent de toucher un public extérieur. J’ai adopté une ligne de « mec qui tente de vivre du libre » et, on va pas se le cacher, je crois pas que ce soit la meilleure technique. Mais on verra les problèmes qui se posent sur ma stratégie de communication dans la prochaine partie.
- support (quelques minutes par semaine) : les gens arrivent mais, zut, faut répondre à leurs questions maintenant ! Je dis « zut », mais en vérité, j’adore ça car c’est le moment où l’on se rend le plus utile. Il existe des outils dédiés pour gérer le support, mais j’ai fait le choix d’une adresse email cachée derrière un formulaire de contact et de répondre sur les réseaux sociaux. C’est simple et suffisant pour commencer. Ça implique également des choix de processus, comme le fait de tutoyer ou vouvoyer les gens. J’ai fait le choix de vouvoyer par défaut parce que je trouve toujours bizarre qu’on me tutoie dans un échange commercial. Je tutoie seulement si la personne en face a commencé à me tutoyer parce que je considère qu’elle a compris ma démarche. Autre aspect : je garde les références vers les demandes qui me sont faites, ce qui permet de recontacter les gens pour leur dire « hey, ce truc que t’as demandé il y a 3 mois est enfin prêt », c’est toujours apprécié.
- administratif / compta (1 matinée par semaine) : en micro-entreprise, on a l’avantage de ne pas avoir trop de contraintes administratives, encore moins en termes de comptabilité. Bon moi j’aime bien ça, que voulez-vous, on a chacun nos trucs bizarres. Je tiens donc un fichier pour suivre mes dépenses, mes recettes, le suivi de ma trésorerie et ça génère aussi le résultat. Au niveau des contacts avec l’administration, il y a peu de choses à faire, mais il faut quand même suivre les réponses quand on pose des questions. Comme c’est important, je bloque mes lundis matin pour faire ce genre de choses, bien que ça ne me prenne que quelques minutes en général.
- conception / design (difficile à quantifier) : on attaque la partie amélioration du service. Pour développer des fonctionnalités, il faut qu’elles soient intuitives, facile à utiliser. C’est le seul point où je bénéficie d’une aide récurrente grâce à [Maiwann](https://www.maiwann.net/) dont c’est le métier… et heureusement ! Ça change vraiment tout en m’enlevant des épines du pied et en ayant un second regard sur mes problèmes. Le temps qu’on passe à se synchroniser, je le regagne en me posant moins de questions ensuite.
- gestion de projet et développement logiciel (plusieurs jours par semaine) : c’est mon métier, et j’adore ça. Il faut commencer par prioriser les idées, les demandes et les bugs. Je mets tout ça dans un tableau kanban pour suivre l’avancement de mes tâches. Ça me permet d’avoir une vision d’ensemble de ce que j’ai à faire et où je vais. Le développement se base souvent sur le travail de conception fait au préalable. Cela consiste évidemment à écrire des lignes de code, mais aussi à gérer l’architecture du logiciel, écrire des tests, la documentation associée, gérer les versions, etc. Comme je fais du logiciel libre, tout est public et je ne peux pas faire les choses n’importe comment.
- gestion de la communauté (2 heures de temps en temps) : qui dit logiciel libre dit communauté n’est-ce pas ? N’est-ce pas ? Bon, c’est pas ce que vous croyez. J’ai fait le choix de refuser de l’aide sur le code : ça prend du temps à relire, faire des retours, intégrer, maintenir… c’est chronophage. C’est un choix très différent de la grande majorité des autres logiciels libres, mais j’en ai eu besoin pour ma santé mentale. Mais la contribution, ce n’est pas que coder. Je participe ainsi à des [Contribateliers](https://contribateliers.org/) (des ateliers pour aider les personnes qui ne savent pas coder à contribuer quand même au libre). Pour ma part, je fais passer des tests utilisateurs : je demande à une personne d’effectuer une action dans le logiciel, et j’observe son comportement et ses réactions (positives comme négatives) pour voir ce qui peut être amélioré. C’est extrêmement satisfaisant pour ces personnes qui n’ont pas d’autres moyens de contribuer de voir qu’elles sont à l’origine d’améliorations.
- enfin, j’oublie potentiellement encore des choses, mais je pense que j’ai bien fait le tour.

On pourrait se dire que tout ça est bien compliqué. À vrai dire, si je vous ai donné les estimations de temps pour chaque tâche, c’est pour vous faire comprendre que c’est relativement peu de choses. En revanche, pour ne rien oublier et avancer dans mon boulot, c’est surtout beaucoup d’organisation. Et c’est pas forcément simple. À titre d’exemple, je ne passe clairement pas assez de temps sur la communication pour faire connaître Flus à suffisamment de monde.

Bien sûr, il y a la possibilité de se faire aider totalement ou partiellement sur chacun de ces points, mais j’aime m’investir un minimum dans chacun d’eux. Je pense que c’est important et ça fait partie de l’intérêt de la micro-entreprise que d’apprendre de nouvelles choses.

Une chose à retenir c’est que le boulot et les problèmes que je rencontre ne sont pas spécialement liés au fait que je fasse du logiciel libre. Mais les réponses à apporter à mes questions le sont.

[_Diapositive 5_](talks/tout-plaquer/index.html#/5)

(Rappel que je dois boire de l’eau !)

## (Se) vendre… ou pas

[_Diapositive 6.0_](talks/tout-plaquer/index.html#/6)

Bon. Je tourne autour du pot depuis tout à l’heure, il est temps d’aborder le sujet qui fâche.

Jusqu’ici, j’ai pu vivre et travailler sur Flus grâce à mes allocations chômage obtenues grâce à mon départ en rupture conventionnelle. Mon chômage était confortable, j’avais des économies et peu de charges. Ma situation était plutôt privilégiée.

Mais nous voici maintenant aux alentours de septembre 2021. Il se passe que je n’ai plus d’allocations et je commence à puiser dans mes économies. J’estime que je peux tenir ainsi pendant environ 1 an. Il faut donc que je valide rapidement que le service fonctionne. Malheureusement, ça ne marche pas si bien. Si je ne change rien, je n’imagine pas vivre de Flus d’ici là.

[_Diapositive 6.1_](talks/tout-plaquer/index.html#/6/1/0)

Le problème vient de ma communication. J’ai dit que j’aimais m’investir « un minimum » dans toutes les tâches mentionnées plus tôt… mais là, ce n’est plus suffisant. Je galère à trouver de nouveaux et nouvelles clientes, et les convaincre de payer pour un service en ligne. Sur Twitter par exemple, les gens voient passer une info, puis passent immédiatement à la suivante. Les toucher implique une communication active, presque frénétique pour s’imposer dans leur esprit.

Et là, chez moi… ça coince. Je n’ai pas envie d’embrasser ce mode de communication en contradiction avec ma démarche qui cherche à respecter le temps de cerveau.

[_Diapositive 6.2_](talks/tout-plaquer/index.html#/6/2/2)

Mais je n’abandonne pas tout de suite. Je demande à une copine de m’aider sur la communication. Elle me fait un audit et pleins de recommandations : revoir le site pour mieux vendre mon produit, diversifier les réseaux sociaux, intervenir dans des conférences spécialisées, etc.

Mais j’ai principalement besoin de repenser ma cible pour optimiser ma communication. J’y réfléchis et je me dis que ma cible naturelle correspond aux entreprises : elles payent plus facilement que des individus, et pour plusieurs personnes à la fois. Et ça tombe bien : je veux ajouter des fonctionnalités pour les équipes !

« Ça tombe vraiment bien ?  
– Bah… oui ?  
– Vraiment ? »

Nous voici vers novembre / décembre 2021, j’ai déjà bien avancé sur le nouveau site, j’ai mis en place une stratégie de communication sur un an… et je me pose dans mon canapé. Je réalise alors que ce n’est pas vraiment ce que j’ai envie de faire : je veux continuer de bosser pour des individus ! Je ne veux pas me retrouver à répondre aux besoins des entreprises, c’est pas ça qui me motive au quotidien ! Et puis imaginons une entreprise qui fait 50 % de mon chiffre d’affaires : si elle me demande quelque chose, ne vais-je pas me sentir obligé de la faire, même si ça ne me plaît pas ?

À ce moment-là, je vous avoue que c’est compliqué car je sais que je vais devoir faire un choix qui ne me conviendra pas parfaitement.

[_Diapositive 6.3_](talks/tout-plaquer/index.html#/6/3)

Je repose donc le problème une seconde fois pour choisir une autre voie : faire grossir le service plus lentement, quitte à ne pas être rentable plus longtemps. Je m’inspire de [wallabag.it](https://www.wallabag.it/fr), qui après plusieurs années sans communication très active, continue de grandir tranquillement. Mais les économies s’essoufflent, alors que faire ? C’est le moment un peu douloureux où je choisis malgré moi de chercher un job complémentaire à temps partiel afin de remplir mon frigo.

Et j’en suis là aujourd’hui. Ce n’est pas une voie parfaite, je ne sais même pas si elle me conviendra. Mais c’est celle que j’ai choisie et elle devrait me permettre de me concentrer sur le plaisir de proposer ce service sans me faire dépasser par un besoin de croissance. Je construis un service et une démarche qui me ressemblent. Ce n’est pas facile, mais je conserve une forme de liberté que je cherchais en me mettant à mon compte.

## Élever ses logiciels en plein air

[_Diapositive 7.0_](talks/tout-plaquer/index.html#/7)

On approche de la fin de cette présentation et je ne voudrais pas que vous repartiez en vous disant « il est bien gentil, mais son truc là, ça marche pas ».

Il faut comprendre que mon but était surtout de retrouver du sens dans ce que je faisais. Je trouve énormément de plaisir aujourd’hui à travailler sur Flus. Me dire que je pourrai continuer à travailler dessus la moitié de mon temps, tout en me consacrant à des tâches qui me plaisent reste motivant !

De plus, je cherchais à pouvoir gérer mon temps et mes lieux de travail comme je l’entendais.

Aujourd’hui, mes horaires sont extrêmement flexibles. Je peux donc faire mes courses à 14h quand il n’y a personne, ou faire une rando un vendredi après-midi sans que personne ne trouve rien à y redire. Et c’est peut-être l’une des choses que j’aime le plus actuellement : pouvoir réfléchir à mes problèmes en marchant. J’habite à Grenoble, donc les montagnes sont littéralement à 10 minutes de chez moi. Vous n’imaginez pas le nombre de problèmes résolus, de décisions prises ou d’idées trouvées ces dernières années dans cet environnement, depuis que je suis à mon compte.

Je n’ai envie d’échanger ça pour rien au monde, même si je galère à vivre de mon activité. Oui, je vais sans doute devoir revoir mon organisation, mais seulement en partie. Et j’espère que malgré ça, je vous ai un peu donné envie aussi. Je ne souhaitais pas cacher les difficultés sous le tapis, mais de votre côté, n’oubliez pas non plus le plaisir procuré par cette activité.

[_Diapositive 7.1_](talks/tout-plaquer/index.html#/7/1)

Si je vous ai donné envie de faire de même, un conseil : ne faites pas comme moi !

Ne regardez pas mon parcours comme une simple ligne droite. Cette ligne droite cache tous les choix que j’ai faits au fur et à mesure. C’est pourquoi je prends le temps de partager mon expérience : pour vous aider à identifier ce que vous pourriez faire autrement. Peut-être vous associer à un ou une communicante ? Peut-être décider que les entreprises sont effectivement votre cible ? Si on remonte encore plus loin en arrière, peut-être que vous n’auriez pas fait le choix de développer un nouvel outil de zéro, mais tenteriez de bénéficier de la force d’une communauté internationale ?

Le chemin que j’ai tracé n’est pas entièrement satisfaisant, mais il en existe qui fonctionne mieux (je pense par exemple à [Piwigo](https://fr.piwigo.com/), une photothèque en ligne qui s’adresse en priorité aux entreprises).

Si vous vous lancez, vous ne ferez probablement pas pareil que moi, et c’est tant mieux !

