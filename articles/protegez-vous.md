---
title: Protégez-vous !
date: 2021-09-07 11:57
description: Quelques astuces pour vous protéger… de moi.
illustration: illustrations/privacy_protection.png
---

**En ligne, la donnée qui vous est probablement la plus demandée est votre adresse courriel.** Flus n’y fait d’ailleurs pas exception. Toutefois, j’ai beau clamer que je « respecte vos données personnelles », vous n’avez en vérité pas beaucoup plus de raisons de me faire confiance qu’à un ou une autre. Au moins le temps qu’on fasse connaissance ! **Aujourd’hui je vous explique donc comment vous protéger… de moi.**

<img class="illustration illustration--bordered illustration--centered" src="illustrations/privacy_protection.png" alt="">

Pour cet exercice, je vais me baser sur les données listées dans [mes mentions légales](https://flus.fr/mentions-legales#donn%C3%A9es-personnelles).

**L’adresse courriel.** Malgré les raisons légitimes qui me poussent à vous la demander, c’est l’une de vos données les plus précieuses. Vous auriez donc tout à fait raison de ne pas vouloir me filer la vôtre. **Pour ma part j’ai tendance à utiliser un service de Mozilla : [relay.firefox.com](https://relay.firefox.com/).** Ce service vous permet de créer des alias du type `bv3glwfin@relay.firefox.com` : les courriels qui y sont envoyés sont transférés à votre véritable adresse. Si vous réalisez que j’utilise cette adresse à mauvais escient, vous pouvez supprimer l’alias, m’interdisant ainsi l’accès à votre boite courriel. **Attention toutefois, il est impossible de m’écrire avec cet alias.** <del>Ainsi, si vous perdez l’accès à votre compte et que vous me demandez de l’aide, je ne pourrai rien pour vous, car il me sera impossible de confirmer votre identité !</del> On me souffle dans l’oreille qu’il y aurait toujours un moyen de s’en sortir… à condition de ne pas supprimer l’alias !

**Le mot de passe.** Indispensable pour vous connecter à Flus, il ne s’agit pas d’une donnée personnelle à proprement parler. Il est de toute façon « hashé » (avec [Bcrypt](https://fr.wikipedia.org/wiki/Bcrypt) pour les curieux et curieuses), je ne stocke donc pas sa valeur brute. Si vous voulez bien faire les choses, je vous conseille d’utiliser un mot de passe unique (en utilisant un générateur de mots de passe aléatoires) et de le stocker dans un outil dédié. Pour ma part, j’utilise [Bitwarden](https://bitwarden.com/), mais il en existe des tas d’autres, à commencer par votre propre navigateur.

**Le nom d’utilisateur.** Il est affiché publiquement sur la plateforme, il est donc primordial de pouvoir le protéger. Bonne nouvelle : vous pouvez choisir cette valeur librement de façon à ce qu’on ne puisse pas vous identifier. Vous pouvez tout à fait choisir le nom « Anonyme » par exemple.

**Votre nom et prénom.** On attaque la partie compliquée : le processus de paiement. Pour des raisons légales, je dois établir une facture [pour tout paiement supérieur à 25 €](https://www.service-public.fr/professionnels-entreprises/vosdroits/F23208). Pour des raisons pratiques, j’en établis également pour les paiements mensuels (je pourrais donc faire mieux ici). En vérité tout cela m’enquiquine plus qu’autre chose et j’aimerais pouvoir m’en passer tout simplement, mais la facture est aussi là pour protéger les consommateur‧ices. **En revanche, si vous décidez de choisir une fausse identité, je ne viendrai certainement pas vous embêter.**

**Votre adresse de facturation.** Même situation que précédemment, mais en plus simple : cette adresse est facultative pour les particuliers, je vous encourage donc à ne pas la renseigner 🤷

**Votre nom et prénom.** Hein, quoi ? Encore ? Eh bien oui, car Stripe — mon prestataire qui gère les paiements — va vous demander le nom indiqué sur votre carte. Cette information me sera ensuite visible (j’ai cherché s’il y avait moyen de me la masquer, je n’ai pas trouvé). Ici, je ne peux pas faire grand-chose, sauf à vous suggérer de renouveler votre abonnement [depuis la cagnotte](https://flus.fr/cagnotte). Évidemment, je ne le recommande pas à tout le monde sinon je ne tirerai plus aucun revenu (😬), mais si cela devait être un problème pour vous, alors allez-y : elle est (aussi) là pour ça !

**Reste la question de votre adresse <abbr>IP</abbr>.** J’enregistre celle-ci automatiquement dès que vous accédez à l’un des sites que je gère, ceci principalement pour des raisons légales. Je pourrais vous conseiller de passer par un <abbr>VPN<abbr> (là encore, Mozilla [en propose un](https://vpn.mozilla.org/)). Cependant, la plupart d’entre eux sont payants, sur la base d’abonnements souvent plus chers que celui de Flus lui-même. Je trouverais donc cela assez contre-productif. Ceci dit, c’est vous qui êtes le ou la mieux placée pour savoir si le coût en vaut la chandelle.

**<em lang="la">In fine</em>, la question qui est posée dans cet article est celle de la confiance que vous m’accordez.** Pour ma part, je fais de mon mieux pour gérer les données que vous me confiez. J’estime pouvoir mériter votre confiance si vous me l’accordez, mais cet article vient répondre à celles et ceux qui auraient besoin de plus de temps. Rappelez-vous également que personne n’est immunisé face à une fuite, il n’est donc jamais vain de mieux protéger ses propres données.

---

Compte-tenu de [la récente affaire concernant ProtonMail](https://www.nextinpact.com/lebrief/47959/protonmail-doit-collaborer-avec-justice-suisse-et-donc-europol-et-donc-france), je tiens à préciser que les conseils donnés dans cet article **ne vous protègent absolument PAS face à un État.** Si je reçois une réquisition judiciaire concernant un ou une utilisatrice, je serai légalement obligé de fournir les informations à ma disposition. Les personnes en charge de l’enquête sauront sans nul doute remonter jusqu’à la personne physique derrière le compte concerné. Je vous saurais gré de ne pas me placer dans une telle situation 😘
