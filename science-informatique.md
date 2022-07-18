- [Introduction](#introduction)
  - [Présentation personnelle](#présentation-personnelle)
    - [Formation](#formation)
    - [Emplois](#emplois)
    - [Avant-propos](#avant-propos)
  - [Les informaticiens détestent les imprimantes](#les-informaticiens-détestent-les-imprimantes)
    - [Pourquoi les informaticiens détestent-ils les imprimantes ?](#pourquoi-les-informaticiens-détestent-ils-les-imprimantes-)
  - [Objectifs de la conférence](#objectifs-de-la-conférence)
- [Science, technique ou art ?](#science-technique-ou-art-)
  - [Métaphore du couteau](#métaphore-du-couteau)
    - [Utiliser (correctement) un couteau](#utiliser-correctement-un-couteau)
    - [Fabriquer un couteau](#fabriquer-un-couteau)
  - [Une définition de la science informatique](#une-définition-de-la-science-informatique)
    - [Informatics](#informatics)
  - [Une définition en français](#une-définition-en-français)
- [Le problème `min-max`](#le-problème-min-max)
  - [Solution _étudiant-e en licence_](#solution-étudiant-e-en-licence)
  - [Solution _le trieur_](#solution-le-trieur)
  - [Solution _Pythonista_](#solution-pythonista)
  - [Quelle est la meilleure solution ?](#quelle-est-la-meilleure-solution-)
- [La formation en informatique dans le supérieur](#la-formation-en-informatique-dans-le-supérieur)
  - [La licence Informatique à l'UNC](#la-licence-informatique-à-lunc)
- [Références](#références)

---

## Introduction

::: notes
Exposé proposé pour l'action _"Les lycéens à la fac"_ du salon des études supérieures du 29 juillet 2022 de l'UNC (13h, Amphi A400).
:::

---

### Présentation personnelle

#### Formation

- 2004 : Ingénieur Informatique/DEA, INSA de Lyon
- 2008 : Doctorat Informatique, INSA de Lyon

#### Emplois

- 2008-2010 : postdoc INRIA Grenoble
- 2010-2022 : maître de conférences en informatique
  - 2010-2020 : Université Claude Bernard Lyon 1
  - 2020-2022 : Université de la Nouvelle-Calédonie

---

#### Avant-propos

**Disclaimer** : ni philosophe, ni sociologue, ni développeur : _enseignant-chercheur en informatique_

::: notes

Beaucoup de métiers en informatique, j'en parle, mais on va centrer sur _la science_

:::

---

### Les informaticiens détestent les imprimantes

![[r/ProgrammerHumor -- I can fix it, but not because I'm a programmer](https://www.reddit.com/r/MemeTemplatesOfficial/comments/sk7nmt/will_smith_shouting_calm_shouting/)](img/printer_programmer.png)

:::notes

blague : l'imprimante est un animal capricieux, qui comme le poulpe, une fois au pied du mur jette de l'encre sur ses aggresseurs

:::

---

#### Pourquoi les informaticiens détestent-ils les imprimantes ?

- il faut se déplacer pour tester
- c'est [salissant](https://www.reddit.com/r/CatastrophicFailure/comments/8flfri/toner_explosion/)
- il y a des humains, généralement irrités
- les logiciels sont propriétaires (voir [The Story of Open Source](https://amogh.medium.com/the-story-of-open-source-so-far-bfcb685d85a4))

. . .

**Ce n'est pas le métier d'un développeur**.

. . .

**Ce n'est pas le métier d'un enseignant-chercheur**.

::: notes

Les grosses **questions** :

- quels sont ces métiers ?
- qu'est ce qui les différencie ?

séparer l'utilisateur du concepteur va nous amener, retrospectivement à séparer le du développeur/concepteur du chercheur/scientifique
:::

---

### Objectifs de la conférence

- rompre certaines **idées reçues** sur l'informatique et ses métiers
- positionner la **science informatique** dans le champ technique et scientifique
- **motiver les contenus** des formations universitaires en informatique

::: notes

à l'UNC ou ailleurs

:::

---

## Science, technique ou art ?

![[Amazon -- The Art Of Computer Programming](https://images-na.ssl-images-amazon.com/images/I/410vJZbAZGS._SY393_BO1,204,203,200_.jpg)](img/taoc.jpg)

---

### Métaphore du couteau

#### Utiliser (correctement) un couteau

![[medium.com -- How To Use Kitchen Knives ](https://medium.com/@alyarb03/how-to-use-kitchen-knives-safety-tips-5f073a98a18b)](img/using-knife-safely.jpeg)

---

#### Fabriquer un couteau

![Forging Knives in College](img/forging-blade.jpg)

Source [Industrial Heating -- Forging Knives in College](https://www.industrialheating.com/articles/95969-forging-knives-in-college)

---

### Une définition de la science informatique

#### Informatics

> Informatics is the scientific discipline that underpins the digital world.

Source [Informatics Reference Framework for School](https://www.informaticsforall.org/the-informatics-reference-framework-for-school-release-february-2022/)

---

### Une définition en français

[La place de l'informatique dans la classification des sciences, Gilles DOWEK, 2014](https://www.lemonde.fr/blog/binaire/2014/02/05/la-place-de-linformatique-dans-la-classification-des-sciences/)

> L’informatique parle d’objets de différente nature : **informations**, **langages**, **machines** et **algorithmes**.
>
> Chacun de ces quatre concepts est _antérieur à l’informatique_, mais ce qui ce que l’informatique apporte sans doute de nouveaux est _leur organisation en une science cohérente_.

---

## Le problème `min-max`

**Problème** trouver le plus grand élément et le plus petit élément d'une collection ordonnée (e.g., liste, tableau) non-vide.

---

### Solution _étudiant-e en licence_

```python
def min_max_etudiant(arr):
    the_min = arr[0]
    the_max = arr[0]
    for v in arr:
        if v < the_min:
            the_min = v
        if v > the_max:
            the_max = v

    return the_min, the_max
```

---

### Solution _le trieur_

```python
def min_max_sorter(arr):
    s = sorted(arr)
    return s[0], s[-1]

```

---

### Solution _Pythonista_

```python
def min_max_pythonista(arr):
    return min(arr), max(arr)
```

---

### Quelle est la meilleure solution ?


- la plus rapide à écrire ?
- la plus rapide à exécuter ?
- la plus frugale en mémoire ?
- la plus élégante ?

. . .

Pour la vitesse **sur quelles données, quelle machine, quel OS** ?

::: notes

Ne pas sous-estimer/oublier que généralement on a pas besoin de performance !

Si on fait la somme du temps d'exec plus du temps de dev, Python est plus rapide que le C car on code beaucoup plus rapidement des tâches complexes

:::

## La formation en informatique dans le supérieur

Science **et** technique **et** art

![ML/AI Versus Maths](img/ML_IA_VS_MATHS.jpg)

### La licence Informatique à l'UNC

## Références

- [Épistémologie de l'informatique, WIKIPEDIA](https://fr.wikipedia.org/wiki/%C3%89pist%C3%A9mologie_de_l%27informatique)
- [Pourquoi et comment le monde devient numérique, Gérard BERRY, leçon inaugurale au collège de France, 2008](https://www.college-de-france.fr/site/gerard-berry/inaugural-lecture-2008-01-17-18h00.htm)
- <https://www.reddit.com/r/ProgrammerHumor/>
