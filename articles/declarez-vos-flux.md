---
title: Déclarez vos flux !
date: 2021-09-03 14:22
description: Votre bonne résolution du jour : déclarer vos flux dans les en-têtes de vos sites.
---

**Ce matin, je me suis demandé à quel point les flux (<abbr>RSS</abbr>) étaient déclarés dans les en-têtes des sites Web.** Non seulement c’est très utile pour Flus, mais ça l’est aussi pour tous les agrégateurs qui savent découvrir les flux automatiquement. Comme Flus stocke, pour chaque lien, la liste des flux déclarés, je peux tirer des chiffres assez facilement. Sur la base des 1 200 000 liens stockés dans Flus :

- 80 % ont été ajoutés via un flux ;
- et seulement 47 % de ces liens déclarent un flux RSS dans leur en-tête.

**C’est-à-dire que 53 % de ces liens sont présents dans un flux, mais ne le déclarent pas !** Attention, cela ne signifie pas que 53 % des sites Web ne déclarent pas leur flux puisque plusieurs liens peuvent cibler un même site — il me faudrait affiner les données. Par contre je trouve le chiffre déjà suffisamment significatif.

Alors voilà, si vous développez un site qui dispose d’un flux et qu’il n’est pas encore déclaré, **voici comment rendre le Web un peu meilleur à votre échelle** (à ajouter dans le `<head>` de votre <abbr>HTML</abbr>) :

```html
<link rel="alternate"
    type="application/rss+xml"
    title="Nom de votre site"
    href="https://votre.site.com/feed" />
```

Évidemment, il vous faudra adapter les attributs `title` et `href` à votre propre site.

Si vous disposez d’un flux Atom (i.e. commençant par une balise `<feed>`), le `type` sera `application/atom+xml`.

Vous pouvez également déclarer plusieurs flux (il y en a souvent un dédié aux commentaires sur les blogs). Il suffit d’ajouter plusieurs balises `<link>`. Je vous conseille de placer votre flux le plus important en premier, car ce sera souvent lui qui sera utilisé par défaut.

J’ai bien conscience que les flux ont tendance à disparaître de nos navigateurs ([quoique ?](https://blog.chromium.org/2021/05/an-experiment-in-helping-users-and-web.html)) et qu’ils sont donc de moins en moins visibles (loin des yeux, loin du cœur), mais j’espère [montrer avec Flus](https://flus.fr/) qu’il est encore possible de faire des choses sympas avec.

**Les flux sont une des plus belles technologies du Web en permettant la connexion à très peu de frais d’une quantité innombrable de sites Web, sur la base de standards éprouvés depuis 20 ans. Alors faisons les durer 💓**
