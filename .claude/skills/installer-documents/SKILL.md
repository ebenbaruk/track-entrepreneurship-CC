---
disable-model-invocation: true
name: installer-documents
description: Installe les skills officiels d'Anthropic pour créer et éditer des PowerPoint (pptx), Word (docx), Excel (xlsx) et PDF. Ils ne peuvent pas être inclus dans ce repo (licence Anthropic), on les installe donc depuis la source officielle.
---

# Installer les skills documents d'Anthropic (pptx, docx, xlsx, pdf)

1. Lance ces deux commandes (Bash) :
   ```bash
   claude plugin marketplace add anthropics/skills
   claude plugin install document-skills@anthropic-agent-skills
   ```
   Si la marketplace existe déjà, ignore l'erreur de la première commande et continue.
2. Vérifie avec `claude plugin list` que `document-skills@anthropic-agent-skills` apparaît.
3. Dis à l'utilisateur, en une phrase : « C'est installé. Quitte Claude Code (`/exit`) et relance `claude` pour activer pptx, docx, xlsx et pdf. »
4. Donne 3 exemples à essayer :
   - « Transforme startup/pitch/script.md en pitch deck PowerPoint. »
   - « Fais mon prévisionnel dans un Excel avec de vraies formules. »
   - « Remplis ce formulaire PDF avec les infos de CLAUDE.md. »

Pourquoi ce n'est pas inclus dans le repo : la licence de ces skills (© Anthropic) interdit de les copier ou de les redistribuer. L'installation via le plugin officiel est la voie prévue.
