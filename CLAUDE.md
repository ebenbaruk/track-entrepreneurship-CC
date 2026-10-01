# Espace de travail startup — [Nom de la startup]

> Claude lit ce fichier au début de CHAQUE session : c'est sa mémoire du projet.
> Remplis les [crochets] au fur et à mesure (ou demande à Claude : « aide-moi à remplir CLAUDE.md »).
> Garde-le court : chaque ligne coûte du contexte.

## Le projet en une phrase
[Cible] a du mal à [problème]. Nous proposons [solution] qui [bénéfice].

## Où on en est
- Étape : [idée / interviews / MVP / premiers clients / levée]
- Métrique Nord : [ex. inscrits waitlist] — actuellement : [chiffre]
- Cette semaine : [l'objectif unique]

## Cible
- Persona principal : [qui, où on le trouve, ce qu'il utilise aujourd'hui]
- Early adopters : [les plus motivés]

## Équipe
- [Prénom] — [rôle, forces]

## Ton & marque
- Ton : [ex. direct, tutoiement, pas de jargon]
- Langue : français
- Couleurs / typo : [si défini]

## Le kit installé dans ce dossier
- Tous les skills de `.claude/skills/` sont **manuels** : ne les lance que si je tape `/nom-du-skill`.
- Skills startup : `/valider-idee`, `/etude-de-marche`, `/lean-canvas`, `/pitch-deck`, `/cold-email`, `/landing-page`, `/previsionnel`, `/veille-concurrents`.
- Agents (`.claude/agents/`) : `investisseur-sceptique`, `client-cible`, `mentor`.
- Skills de la communauté : voir `THIRD_PARTY.md`.

## Organisation des fichiers
Range les livrables dans `startup/` :
- `startup/validation/` interviews et hypothèses
- `startup/marche/` études de marché
- `startup/business/` lean canvas, pricing
- `startup/pitch/` deck et script
- `startup/finance/` prévisionnel
- `startup/prospection/` emails, CRM
- `startup/landing/` site
- `startup/veille/` veille concurrentielle

## Règles pour Claude
- Avant une tâche de plus de 3 étapes, propose un plan et attends mon OK.
- Ne jamais inventer un chiffre, une citation ou un témoignage : écrire `[À COMPLÉTER]`.
- Toujours citer les sources (URL) des données de marché.
- Ne jamais envoyer un email, publier ou payer quoi que ce soit sans ma confirmation explicite.
- Pour les recherches longues, utilise des subagents en parallèle.
- Réponses courtes et directes. Si mon idée a un défaut, dis-le.

## Principes de travail (Andrej Karpathy — github.com/forrestchang/andrej-karpathy-skills)
- **Réfléchir avant d'agir** : expliciter les hypothèses, demander si c'est ambigu.
- **Simplicité d'abord** : la solution la plus simple qui marche.
- **Changements chirurgicaux** : ne toucher que ce qui est demandé.
- **Objectif vérifiable** : définir comment on saura que c'est réussi, puis vérifier.
