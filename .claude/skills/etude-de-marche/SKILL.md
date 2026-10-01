---
disable-model-invocation: true
name: etude-de-marche
description: Étude de marché sourcée pour une startup — taille de marché (TAM/SAM/SOM), analyse concurrentielle en parallèle avec des subagents, tendances et opportunités. Utiliser quand l'utilisateur demande une étude de marché, une analyse des concurrents, la taille d'un marché ou un benchmark.
---

# Étude de marché

## 1. Cadrer (sans poser plus de 2 questions)
Produit, cible, pays/zone. Si `CLAUDE.md` décrit déjà la startup, lis-le et ne redemande rien.

## 2. Lancer les recherches EN PARALLÈLE avec des subagents
Dans un seul message, lance plusieurs subagents (outil Agent), un par axe :
- **Taille de marché** : chiffres récents (< 3 ans) avec sources, approche top-down ET bottom-up.
- **Concurrent 1…N** (un subagent par concurrent, 3 à 6 concurrents) : offre, prix, cible, levées de fonds, forces, faiblesses, avis clients (G2, Trustpilot, Reddit, App Store).
- **Tendances & signaux** : réglementation, technologie, comportements, ce qui change en ce moment.

Chaque subagent rend une synthèse courte avec ses URLs, pas des pages brutes. C'est tout l'intérêt : ton contexte principal reste propre.

## 3. Synthèse
Crée `startup/marche/etude-de-marche.md` :
- **TAM / SAM / SOM** avec le calcul détaillé et les hypothèses visibles.
- **Tableau concurrentiel** : `Concurrent | Prix | Cible | Force | Faiblesse | Note avis`.
- **Carte de positionnement** : 2 axes pertinents, où se place chaque acteur, où est le vide.
- **3 opportunités** et **3 menaces**.
- **Sources** : liste de toutes les URLs.

## Règles
- Jamais de chiffre inventé. Pas de source = écrire "non trouvé" et proposer une estimation bottom-up explicite.
- Distinguer clairement fait sourcé et estimation.
- Si l'utilisateur veut un livrable, proposer un export `.xlsx` (tableau concurrentiel) ou `.pptx`.
