---
disable-model-invocation: true
name: pitch-deck
description: Crée un pitch deck investisseur percutant (10-12 slides, très peu de texte) et le script oral qui va avec. Utiliser quand l'utilisateur veut un pitch, un deck investisseur, une présentation de startup, ou préparer une levée de fonds ou un concours.
---

# Pitch deck

## Structure (inspirée Sequoia / YC)
1. **Titre** — nom + une phrase qui dit ce que vous faites (compréhensible par ta grand-mère)
2. **Problème** — une histoire ou un chiffre qui fait mal
3. **Solution** — ce que vous faites, en une image ou une démo
4. **Pourquoi maintenant** — ce qui a changé et rend ça possible aujourd'hui
5. **Marché** — TAM/SAM/SOM (reprendre `startup/marche/` si existant)
6. **Produit** — capture ou parcours en 3 étapes
7. **Traction** — le meilleur chiffre en grand (même petit : interviews, waitlist, LOI)
8. **Business model** — qui paie, combien, marge
9. **Concurrence** — matrice 2×2, pas un tableau de croix
10. **Équipe** — pourquoi VOUS
11. **Ask** — combien, pour quoi faire, quels jalons atteints avec
12. **Contact**

## Règles de design
- **Une idée par slide.** Max ~15 mots par slide. Les chiffres en très grand.
- Le titre de chaque slide est une affirmation ("Les PME perdent 6h/semaine sur X"), pas un thème ("Problème").
- Ne jamais inventer de traction ni de chiffres : mettre `[À COMPLÉTER]`.

## Livrables
1. Le deck : `.pptx` via le skill pptx d'Anthropic (`/plugin install document-skills@anthropic-agent-skills`) ou en HTML en suivant `.claude/skills/frontend-slides/SKILL.md` (lis-le et applique-le).
2. `startup/pitch/script.md` : ce qu'on dit sur chaque slide, timé pour **3 minutes** au total.
3. `startup/pitch/questions-investisseurs.md` : les 10 questions les plus dures + réponses. Pour aller plus loin, utiliser l'agent `investisseur-sceptique`.
