---
name: veille-concurrents
description: Veille concurrentielle et sectorielle — résume ce qui a changé chez les concurrents et dans le marché (nouveaux produits, prix, levées, recrutements, buzz Reddit/X/LinkedIn) depuis la dernière veille. Conçu pour tourner automatiquement chaque semaine via /schedule. Utiliser quand l'utilisateur veut surveiller ses concurrents, faire de la veille ou un digest d'actualité de son marché.
---

# Veille concurrentielle

## Mémoire
- La liste des concurrents et mots-clés est dans `veille/config.md`. S'il n'existe pas, le créer avec l'utilisateur (5 concurrents max + 5 mots-clés).
- Les veilles précédentes sont dans `veille/AAAA-MM-JJ.md`. Lire la dernière pour ne signaler **que ce qui est nouveau**.

## Collecte (en parallèle)
Un subagent par concurrent : site (pricing, changelog, blog), presse, LinkedIn (recrutements = signal de stratégie), levées de fonds. Un subagent pour le marché : mots-clés sur la presse, Reddit, Hacker News, X. Si le skill `last30days` est installé, l'utiliser pour cette partie.

## Sortie : `veille/AAAA-MM-JJ.md`
- **TL;DR** en 3 puces.
- **Par concurrent** : ce qui a changé + lien source. "Rien de nouveau" est une réponse valide.
- **Signal faible de la semaine** : une tendance à surveiller.
- **Action suggérée** pour notre startup (une seule).

## Automatiser
Proposer à l'utilisateur : `/schedule` → "chaque lundi à 8h, lance /veille-concurrents et envoie-moi le TL;DR par email" (connecteur Gmail) ou dans Notion.
