---
disable-model-invocation: true
name: lean-canvas
description: Construit un Lean Canvas (ou Business Model Canvas) complet et critique pour une startup, puis identifie la case la plus risquée. Utiliser quand l'utilisateur parle de business model, modèle économique, lean canvas, BMC ou proposition de valeur.
---

# Lean Canvas

## Étapes
1. Lis `CLAUDE.md` et les fichiers du projet (`startup/validation/`, `startup/marche/`) s'ils existent.
2. Remplis les 9 cases, **une phrase concrète par élément** (pas de jargon) :
   1. Problème (top 3) + alternatives existantes
   2. Segments de clients + early adopters
   3. Proposition de valeur unique (une phrase) + "concept de haut niveau" (X pour Y)
   4. Solution (top 3 fonctionnalités)
   5. Canaux d'acquisition
   6. Sources de revenus (prix, modèle)
   7. Structure de coûts
   8. Indicateurs clés (la métrique Nord + 2 secondaires)
   9. Avantage déloyal (ce qui ne peut pas être copié ou acheté — souvent "aucun pour l'instant", et c'est OK de le dire)
3. **Critique** : pour chaque case, note la confiance (faible / moyenne / forte) et pourquoi.
4. **Case la plus risquée** : laquelle, et l'expérience la moins chère pour la tester.

## Sortie
- `startup/business/lean-canvas.md` : tableau markdown 3×3 + critique.
- Proposer une version visuelle (page HTML ou slide) si l'utilisateur veut la présenter.
- Pour un **Business Model Canvas** classique (partenaires, activités, ressources, relations clients…), adapter les cases sur demande.
