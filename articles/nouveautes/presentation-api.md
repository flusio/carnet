---
title: Présentation de l’API de Flus
date: 2025-09-17 09:55
description: Flus propose une API, c’est-à-dire une porte d’entrée pour interagir avec vos données de manière automatisée, que ce soit avec d’autres logiciels, ou avec vos propres scripts.
---

Flus est une plateforme en ligne conçue pour collecter, organiser, annoter et partager vos liens favoris de manière simple et rapide.
Flus s’intègre à votre écosystème d’outils existants pour compléter et éditorialiser votre veille.
[Flus est sortie en version 2.0 en début de mois.](flus-deux-point-zero.html)

Avec cette version, **Flus propose une <abbr>API</abbr>,** c’est-à-dire une porte d’entrée pour interagir avec vos données de manière automatisée, que ce soit à l’aide d’autres logiciels, ou avec vos propres scripts.

L’<abbr>API</abbr> s’adresse principalement à un public technique souhaitant créer de nouvelles manières d’interagir avec Flus.

## Pourquoi une <abbr>API</abbr> ?

Cette <abbr>API</abbr> est née avec [la nouvelle extension navigateur](comment-utiliser-l-extension-navigateur.html) : elle avait en effet besoin d’un accès privilégié pour gérer vos liens.
Mais l’<abbr>API</abbr> ne se limite pas à l’extension et ouvre d’autres opportunités plus larges :

- **Créer de nouvelles interfaces :** par exemple un tableau de bord personnalisé, ou un widget pour téléphone.
- **Connecter Flus à d’autres services :** l’<abbr>API</abbr> permet d’intégrer et synchroniser votre veille avec d’autres outils, que ce soit votre site, vos automatisations (IFTTT, Huginn), ou encore vos propres scripts.
- **Explorer et analyser vos données :** pour générer des statistiques, ou archiver vos données.

L’<abbr>API</abbr> offre ainsi beaucoup de flexibilité dans les possibilités d’étendre les fonctionnalités de Flus.

## Les grandes lignes de l’<abbr>API</abbr>

Sans entrer dans des détails trop techniques, l’<abbr>API</abbr> vous permet d’ors-et-déjà de :

- de manipuler et gérer vos liens, collections et bloc-notes (liste, ajout, modification et suppression) ;
- de marquer vos liens comme lus ou à lire plus tard ;
- récupérer, synchroniser et manipuler votre journal.

Techniquement, il s’agit d’une <abbr>API</abbr> <abbr>REST</abbr> qui échange les données au format JSON.

<p class="text--center">
    <a class="button button--primary" href="https://github.com/flusio/Flus/blob/main/docs/api/README.md">
        Accéder à la documentation de l’<abbr>API</abbr>
    </a>
</p>

## Par où commencer ?

1. Commencez par vous [créer un compte Flus](https://app.flus.fr/registration) si ce n’est pas déjà fait ;
2. Générez un jeton d’authentification comme indiqué [dans la documentation](https://github.com/flusio/Flus/blob/main/docs/api/authentication.md) ;
3. Testez une première requête avec `curl` ou Postman, par exemple pour [retrouver les informations concernant une URL](https://github.com/flusio/Flus/blob/main/docs/api/links.md#search-link-information) ;
4. Intégrez l’<abbr>API</abbr> à vos scripts : en Python, JavaScript, ou tout autre langage capable d’envoyer et recevoir des requêtes <abbr>HTTP</abbr>.

Voici un exemple de script Python très simple vous permettant de lister vos liens à lire les plus récents dans un terminal :

```python
import requests

API_URL = "https://app.flus.fr/api/v1"
TOKEN = "VOTRE_TOKEN_API"

headers = {
    "Content-Type": "application/json",
    "Authorization": f"Bearer {TOKEN}",
}

response = requests.get(f"{API_URL}/links?collection=to-read", headers=headers)

for link in response.json():
    print(f"- {link['title']} ({link['url']})")
```

## Conclusion

L’<abbr>API</abbr> fournit désormais une manière aux développeurs et développeuses d’étendre Flus pour l’adapter aux besoins de plus de monde, **en le connectant à d’autres outils ou en permettant d’imaginer de nouvelles manières d’utiliser la plateforme.**
En tant que logiciel libre, c’est aussi une manière d’encourager à faire vivre un écosystème autour de Flus.

N’hésitez pas à vous emparer de cette nouvelle <abbr>API</abbr>, de créer vos propres scripts et automatisations, et d’en parler autour de vous.
Je suis très curieux de savoir ce que vous en ferez !
