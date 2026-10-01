# track-entrepreneurship-CC

**Devenir super-user de Claude Code et l'utiliser pour lancer (et faire tourner) une startup.**
Kit du cours *Entrepreneurship* — ESILV.

📑 **Les slides du cours : [`slides/Claude-Code-pour-entrepreneurs.pdf`](slides/Claude-Code-pour-entrepreneurs.pdf)**

## ⚡ Démarrage en 30 secondes

```bash
git clone https://github.com/ebenbaruk/track-entrepreneurship-CC.git ma-startup
cd ma-startup
claude
```

1. Claude Code demande si tu fais confiance au dossier → **Oui**.
2. Les skills et les agents sont **déjà dans les bons dossiers** (`.claude/skills/`, `.claude/agents/`) : rien à installer.
3. Tape `/` pour voir les skills. **Ils ne se lancent jamais tout seuls** : c'est toi qui décides, avec `/nom-du-skill`.
4. Premier prompt : « Aide-moi à remplir CLAUDE.md pour ma startup. »

> 💡 Bouton **« Use this template »** sur GitHub : crée ta propre copie du repo pour ta startup.

### Ce qu'il y a dans le dossier

```
ma-startup/
├── CLAUDE.md               ← la mémoire de ta startup (à remplir)
├── .claude/
│   ├── skills/             ← 36 skills, appelables avec /nom
│   └── agents/             ← 3 subagents : investisseur-sceptique, client-cible, mentor
├── slides/               ← les slides du cours en PDF
├── THIRD_PARTY.md          ← d'où viennent les skills de la communauté (sources, licences)
├── .claude-plugin/         ← pour installer le kit partout (hors de ce dossier)
├── install.sh              ← installation globale (optionnelle)
└── startup/                ← tes livrables (créé par Claude au fur et à mesure)
```

### Les 36 skills du dossier

| Famille | Commandes |
|---|---|
| 🚀 **Startup** (les nôtres) | `/valider-idee` `/etude-de-marche` `/lean-canvas` `/pitch-deck` `/cold-email` `/landing-page` `/previsionnel` `/veille-concurrents` |
| 📈 **Marketing** (Corey Haines) | `/copywriting` `/cro` `/launch` `/pricing` `/customer-research` `/competitors` `/product-marketing` `/marketing-ideas` `/marketing-plan` `/seo-audit` `/social` `/emails` |
| 🦸 **Méthode** (Superpowers) | `/brainstorming` `/writing-plans` `/executing-plans` `/dispatching-parallel-agents` `/subagent-driven-development` `/systematic-debugging` `/test-driven-development` `/verification-before-completion` |
| 🎨 **Design & contenu** | `/frontend-design` `/ui-ux-pro-max` `/frontend-slides` `/humanizer` |
| 🧰 **Outils** | `/caveman` `/last30days` `/skill-creator` `/installer-documents` |

**PowerPoint, Word, Excel, PDF** : tape **`/installer-documents`**. Il installe les skills officiels d'Anthropic (`pptx`, `docx`, `xlsx`, `pdf`). Ils ne peuvent pas être copiés dans ce repo, leur licence interdit la redistribution ; ils s'installent donc depuis la source officielle, en une commande.

**Pourquoi manuels ?** Chaque skill a `disable-model-invocation: true` dans son `SKILL.md`. Avantages : Claude ne lance rien sans toi, et leurs descriptions ne remplissent pas son contexte. Pour qu'un skill se déclenche tout seul, supprime cette ligne.

**Les agents** s'appellent en le demandant : « Demande à l'investisseur sceptique de critiquer mon deck », ou avec `@investisseur-sceptique`.

### Utiliser le kit dans TOUS tes projets (optionnel)

```bash
bash install.sh          # pack essentiel, installé pour ton utilisateur
bash install.sh --all    # + pack avancé
```

---

## Sommaire

0. [Installer Claude Code](#0-installer-claude-code)
1. [Chatbot vs agent](#1-chatbot-vs-agent)
2. [Le contexte — la compétence n°1](#2-le-contexte--la-compétence-n1)
3. [Subagents — travailler en équipe](#3-subagents--travailler-en-équipe)
4. [Skills — des super-pouvoirs à la demande](#4-skills--des-super-pouvoirs-à-la-demande)
5. [MCP — brancher Claude sur tes outils](#5-mcp--brancher-claude-sur-tes-outils)
6. [Plugins & marketplaces](#6-plugins--marketplaces)
7. [Hooks — les automatismes](#7-hooks--les-automatismes)
8. [Agents qui tournent sans toi](#8-agents-qui-tournent-sans-toi)
9. [Les skills de ce repo](#9-les-skills-de-ce-repo)
10. [Le catalogue : les meilleurs skills de la communauté](#10-le-catalogue--les-meilleurs-skills-de-la-communauté)
11. [Playbook : ta startup de A à Z](#11-playbook--ta-startup-de-a-à-z)
12. [Claude Code pour toute ta vie](#12-claude-code-pour-toute-ta-vie)
13. [Sécurité & bonnes pratiques](#13-sécurité--bonnes-pratiques)
14. [Cheat sheet](#14-cheat-sheet)
15. [Pour aller plus loin](#15-pour-aller-plus-loin)

---

## 0. Installer Claude Code

| Système | Commande |
|---|---|
| macOS / Linux / WSL | `curl -fsSL https://claude.ai/install.sh \| bash` |
| Windows (PowerShell) | `irm https://claude.ai/install.ps1 \| iex` |

Puis, dans n'importe quel dossier : `claude` → connecte-toi avec ton compte Claude (Pro ou Max).

Pas fan du terminal ? Claude Code existe aussi en **app desktop**, sur le **web** ([claude.ai/code](https://claude.ai/code)) et dans **VS Code / JetBrains**. Même agent, même puissance.

> 💡 Règle : **un dossier = un projet.** Crée un dossier `ma-startup/`, ouvre Claude dedans. Tout ce qu'il produit (études, deck, site, Excel) atterrit là.

---

## 1. Chatbot vs agent

| ChatGPT / Claude.ai classique | Claude Code |
|---|---|
| Te **répond** | **Agit** |
| Tu copies-colles | Il lit et écrit les fichiers lui-même |
| Une réponse | Une boucle jusqu'à ce que ce soit fini |
| Consultant au téléphone | Stagiaire assis à ton bureau, sur ton ordi |

### La boucle agentique

```
   ┌──────────────┐
   │   Réfléchir   │ ◄─────────────┐
   └──────┬───────┘               │
          ▼                        │
   ┌──────────────┐        ┌──────┴───────┐
   │  Agir (outil) │ ─────► │   Observer    │
   └──────────────┘        └──────────────┘
           … jusqu'à ce que la tâche soit finie
```

Ses **outils** : lire/écrire des fichiers, lancer des commandes (terminal), chercher sur le web, piloter un navigateur, appeler tes apps (Gmail, Notion…), lancer d'autres agents.

### Les modes (Shift+Tab pour changer)
- **Normal** : il demande la permission avant les actions sensibles.
- **Auto-accept** : il modifie les fichiers sans demander.
- **Plan mode** : il **réfléchit et propose un plan sans rien toucher**. À utiliser avant toute grosse tâche.

> 🎯 Réflexe super-user : **Plan → Valider → Exécuter → Vérifier.**

---

## 2. Le contexte — la compétence n°1

Le **contexte**, c'est la mémoire de travail de Claude : tout ce qu'il « voit » en ce moment (ta conversation, les fichiers lus, les résultats des commandes). Elle est **grande mais limitée**, et **plus elle est encombrée, moins il est bon.**

> 🧠 Analogie : le contexte = **ton bureau**. Les fichiers = **l'armoire**. Un bureau couvert de papiers = du travail bâclé.

### Les commandes à connaître

| Commande | Effet | Quand |
|---|---|---|
| `/context` | Montre ce qui remplit la mémoire | Quand il devient « bizarre » |
| `/compact` | Résume la conversation pour libérer de la place | Session longue sur la même tâche |
| `/clear` | Repart de zéro | **Nouvelle tâche = nouvelle session** |
| `/resume` | Reprend une ancienne conversation | Le lendemain |
| `@fichier` | Injecte un fichier précis | Plutôt que « regarde dans le dossier » |
| `Esc` `Esc` / `/rewind` | Revient en arrière | Il est parti dans une mauvaise direction |

### `CLAUDE.md` : la mémoire permanente
Un fichier `CLAUDE.md` à la racine du projet est **lu automatiquement au début de chaque session**. Mets-y : le projet, la cible, le ton, les règles. → [`CLAUDE.md`](CLAUDE.md) de ce repo

- `/init` génère un `CLAUDE.md` à partir du dossier.
- `~/.claude/CLAUDE.md` = tes préférences **globales** (« réponds en français », « sois direct »).
- Garde-le **court** : chaque ligne est relue à chaque fois.

### Les 5 règles d'or du contexte
1. **Une tâche, une session.** `/clear` entre deux sujets.
2. **Des fichiers plutôt que des messages** : un brief dans `brief.md` > un pavé dans le chat.
3. **Sois précis** : `@marche/etude.md` > « le fichier de l'étude ».
4. **Délègue la lecture aux subagents** (section suivante).
5. **Écris les décisions dans `CLAUDE.md`** pour ne pas les répéter.

---

## 3. Subagents — travailler en équipe

Un **subagent**, c'est un Claude lancé par Claude, avec **son propre contexte vierge**. Il fait une mission, puis **rend seulement la conclusion**.

```
                 ┌──────────────────┐
                 │   Claude (toi)    │   contexte propre ✨
                 └───┬────┬────┬────┘
          ┌──────────┘    │    └──────────┐
          ▼               ▼               ▼
   ┌────────────┐  ┌────────────┐  ┌────────────┐
   │ Concurrent │  │ Concurrent │  │  Taille de │   chacun lit 50 pages…
   │     A      │  │     B      │  │   marché   │
   └─────┬──────┘  └─────┬──────┘  └─────┬──────┘
         └───────────────┼───────────────┘
                         ▼
                 5 lignes chacun
```

**Deux super-pouvoirs :**
1. **Parallélisme** : 5 recherches en même temps au lieu de l'une après l'autre.
2. **Contexte protégé** : les 50 pages lues restent chez le subagent.

**En pratique**, demande simplement :
> « Lance 5 subagents en parallèle, un par concurrent, et fais-moi un tableau comparatif. »

### Créer tes propres agents
`/agents` → créer, ou un fichier `.claude/agents/nom.md` :

```markdown
---
name: investisseur-sceptique
description: VC exigeant qui démonte un pitch. Utiliser avant une levée.
tools: Read, WebSearch
---
Tu es partenaire d'un fonds seed. Trouve les 3 drapeaux rouges...
```

Ce repo en fournit 3 : `investisseur-sceptique`, `client-cible`, `mentor` (→ [section 9](#9-les-skills-de-ce-repo)).

> ⚠️ Plus d'agents = plus de tokens consommés. Pour une question simple, pas besoin d'une armée.

---

## 4. Skills — des super-pouvoirs à la demande

Un **skill**, c'est un **savoir-faire packagé** : un dossier avec un fichier `SKILL.md` (des instructions) et éventuellement des scripts ou modèles.

```
mon-skill/
├── SKILL.md        ← nom + description + instructions
├── template.xlsx   ← optionnel
└── script.py       ← optionnel
```

**Le génie du système :** Claude ne lit que **le nom et la description** de chaque skill. Il charge le reste **seulement quand il en a besoin**. Tu peux donc en installer des dizaines sans encombrer son contexte.

### Les utiliser
- **Automatiquement** : « fais-moi un pitch deck » → Claude reconnaît le skill `pitch-deck` et l'utilise.
- **Manuellement** : tape `/` + le nom (`/pitch-deck`, `/caveman`…).

### Où ils vivent
| Emplacement | Portée |
|---|---|
| `~/.claude/skills/` | Tous tes projets |
| `.claude/skills/` dans un projet | Ce projet (partagé via git avec ton équipe) |
| Dans un plugin | Installé via `/plugin` |

### Créer le tien en 2 minutes
> « Utilise le skill skill-creator pour créer un skill `/compte-rendu` qui transforme mes notes de réunion en compte rendu + liste d'actions. »

Ou écris-le à la main :

```markdown
---
name: compte-rendu
description: Transforme des notes de réunion en compte rendu structuré avec actions. Utiliser quand l'utilisateur colle des notes de réunion.
---
1. Résume en 5 puces max.
2. Liste les décisions.
3. Tableau des actions : Qui | Quoi | Quand.
```

> 💡 **La description est le plus important** : c'est elle qui fait que Claude pense à l'utiliser. Dis *quoi* et *quand*.

**Quelle différence avec…**
- **`CLAUDE.md`** : toujours chargé (contexte permanent). Un skill : chargé à la demande.
- **Un agent** : un skill = une *recette* que Claude suit lui-même ; un agent = un *collègue* à qui il délègue.

---

## 5. MCP — brancher Claude sur tes outils

**MCP** (Model Context Protocol) = la « prise USB » qui connecte Claude à n'importe quelle app : Gmail, Google Calendar, Drive, Notion, Slack, Stripe, Figma, Canva, HubSpot, Supabase…

- Sur claude.ai : **Paramètres → Connecteurs**. Ils deviennent disponibles dans Claude Code.
- Dans le terminal : `claude mcp add <nom> …` puis `/mcp` pour vérifier.

**Exemples entrepreneur :**
> « Lis mes 20 derniers emails de prospects dans Gmail, classe-les par chaleur dans un tableau Notion, et propose une réponse en brouillon pour les 3 plus chauds. »

> « Trouve un créneau de 30 min avec chaque personne de cette liste la semaine prochaine. »

> « Crée un lien de paiement Stripe à 29 € pour mon offre early-bird. »

---

## 6. Plugins & marketplaces

Un **plugin** = un paquet de skills + agents + connecteurs MCP + hooks, installable en une commande. Une **marketplace** = un catalogue de plugins (souvent un repo GitHub).

```bash
/plugin                                         # interface pour parcourir / installer
/plugin marketplace add ebenbaruk/track-entrepreneurship-CC
/plugin install entrepreneur@track-entrepreneurship-cc
```

Ou depuis le terminal : `claude plugin marketplace add …` / `claude plugin install …`.

La marketplace officielle d'Anthropic (`claude-plugins-official`) contient plus de 300 plugins : `frontend-design`, `superpowers`, `context7`, `stripe`, `vercel`, `notion`, `figma`, `canva`, `hubspot-sales`, `aws-startup-advisor`…

---

## 7. Hooks — les automatismes

Un **hook** = une commande qui s'exécute **automatiquement** à un moment précis (avant/après une action, à la fin d'une réponse…). C'est le harness qui l'exécute, pas Claude : c'est donc **garanti**.

Exemples :
- Notification sur ton téléphone quand Claude a fini.
- Formater automatiquement chaque fichier modifié.
- Bloquer toute commande qui touche à `.env`.

> « Ajoute un hook qui m'envoie une notification macOS quand tu as fini une tâche. »

Commande : `/hooks`.

---

## 8. Agents qui tournent sans toi

| Outil | Ce que ça fait | Exemple |
|---|---|---|
| `/loop 10m <tâche>` | Répète une tâche à intervalle tant que la session est ouverte | Surveiller un déploiement |
| `/schedule` | Agent dans le cloud, sur un horaire (cron), même ordi éteint | « Chaque lundi 8h : veille concurrentielle → email » |
| `claude -p "…"` | Mode non-interactif, scriptable | Dans un script, une GitHub Action |
| Claude Code sur le web / mobile | Lancer une tâche depuis ton téléphone | Corriger le site depuis le métro |

> « /schedule chaque lundi à 8h, lance /veille-concurrents et envoie-moi le TL;DR sur Gmail. »

---

## 9. Les skills de ce repo

**Déjà actifs** quand tu ouvres Claude Code dans ce dossier : ils vivent dans [`.claude/skills/`](.claude/skills) et [`.claude/agents/`](.claude/agents). Pour les avoir partout : `bash install.sh`.

### Skills

| Skill | Ce qu'il fait | Essaie |
|---|---|---|
| [`/valider-idee`](.claude/skills/valider-idee/SKILL.md) | Hypothèses à risque + script d'interview *Mom Test* + plan de test 7 jours | « J'ai une idée : … Est-ce que ça vaut le coup ? » |
| [`/etude-de-marche`](.claude/skills/etude-de-marche/SKILL.md) | TAM/SAM/SOM + concurrents analysés **en parallèle** par des subagents, sources à l'appui | « Étude de marché des box repas pour étudiants en France » |
| [`/lean-canvas`](.claude/skills/lean-canvas/SKILL.md) | Lean Canvas critique + la case la plus risquée | « Fais le lean canvas de mon projet » |
| [`/pitch-deck`](.claude/skills/pitch-deck/SKILL.md) | Deck 12 slides, peu de texte + script de 3 min + questions pièges | « Prépare mon pitch pour le concours » |
| [`/cold-email`](.claude/skills/cold-email/SKILL.md) | Séquences de prospection < 100 mots, personnalisées, en brouillons Gmail | « Écris à ces 20 restaurants pour une démo » |
| [`/landing-page`](.claude/skills/landing-page/SKILL.md) | Copy → design → formulaire waitlist → mise en ligne | « Fais une landing page avec waitlist et mets-la en ligne » |
| [`/previsionnel`](.claude/skills/previsionnel/SKILL.md) | Excel 36 mois avec vraies formules, unit economics, scénarios | « Fais mon prévisionnel sur 3 ans » |
| [`/veille-concurrents`](.claude/skills/veille-concurrents/SKILL.md) | Digest de ce qui a changé chez les concurrents, prévu pour `/schedule` | « Lance ma veille de la semaine » |

### Agents

| Agent | Rôle | Essaie |
|---|---|---|
| [`investisseur-sceptique`](.claude/agents/investisseur-sceptique.md) | VC qui démonte ton pitch : 3 drapeaux rouges, 10 questions dures, le concurrent oublié | « Demande à l'investisseur sceptique de critiquer mon deck » |
| [`client-cible`](.claude/agents/client-cible.md) | Simule un client pour t'entraîner aux interviews (et te corrige à la fin) | « Je veux m'entraîner à interviewer le client cible » |
| [`mentor`](.claude/agents/mentor.md) | Office hours : diagnostic + LA prochaine action | « Appelle le mentor, je suis bloqué » |

---

## 10. Le catalogue : les meilleurs skills de la communauté

Étoiles GitHub relevées début octobre 2026. Tous ont été vérifiés (dépôt existant, licence, commande d'installation). ✅ = **déjà inclus dans `.claude/skills/` de ce repo** (rien à installer, appelle-le avec `/`).

### ⭐ Les stars

#### 🪨 Caveman ✅ — *« why use many token when few token do trick »*
[JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) · ~108k ⭐ · Apache-2.0
Claude répond comme un homme des cavernes : zéro politesse, zéro blabla, uniquement l'info. **Réduit d'environ 65 % les tokens de sortie** → plus rapide, moins cher, plus de place dans le contexte. Trois niveaux : lite, full, ultra.
```bash
/plugin marketplace add JuliusBrussee/caveman
/plugin install caveman@caveman
```

#### 🧠 GBrain — le « second cerveau » de Garry Tan (CEO de Y Combinator)
[garrytan/gbrain](https://github.com/garrytan/gbrain) · ~30k ⭐ · MIT
Une **mémoire persistante** pour ton agent : un repo de notes Markdown (personnes, entreprises, réunions, idées) que l'agent lit et écrit, indexé pour la recherche. Garry Tan l'utilise avec des dizaines de milliers de pages. Idéal pour un fondateur qui veut un CRM/mémoire personnel piloté par l'IA. *Avancé : nécessite [Bun](https://bun.sh).*
```bash
/plugin marketplace add garrytan/gbrain
/plugin install gbrain@gbrain           # ou gbrain-daily (usage perso) / gbrain-coding
```

#### 🏗️ gstack — l'équipe complète de Garry Tan
[garrytan/gstack](https://github.com/garrytan/gstack) · ~135k ⭐ · MIT
Le setup Claude Code exact du CEO de YC : **une vingtaine de commandes qui jouent chacune un rôle** — `/office-hours` (office hours YC pour ton idée), `/plan-ceo-review` (le CEO challenge ton plan), `/design-review`, `/qa` (teste ton site dans un vrai navigateur), `/ship`, `/retro`… Parfait pour construire ton MVP comme une vraie équipe. *Nécessite [Bun](https://bun.sh).*
```bash
git clone --single-branch --depth 1 https://github.com/garrytan/gstack.git ~/.claude/skills/gstack
cd ~/.claude/skills/gstack && ./setup
```
> Commence par **`/office-hours`** : c'est la meilleure commande pour un entrepreneur.

#### 🦸 Superpowers ✅ — la méthode
[obra/superpowers](https://github.com/obra/superpowers) · ~294k ⭐ (le repo de skills le plus étoilé) · MIT
Une méthode complète : brainstorming → plan → exécution par subagents → tests → vérification. Claude devient beaucoup plus rigoureux sur les gros projets.
```bash
/plugin install superpowers@claude-plugins-official
```

#### 🎓 Karpathy Skills — 4 principes anti-erreurs
[forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills) · ~216k ⭐
Un simple `CLAUDE.md` tiré des observations d'Andrej Karpathy sur les erreurs des IA : **réfléchir avant d'agir, simplicité d'abord, changements chirurgicaux, objectif vérifiable.** (Pas de licence sur le repo, donc pas inclus ici : ses 4 principes sont résumés dans notre [`CLAUDE.md`](CLAUDE.md).)
```bash
/plugin marketplace add forrestchang/andrej-karpathy-skills
/plugin install andrej-karpathy-skills@karpathy-skills
```

### 📈 Business, marketing & vente

| Skill | ⭐ | Pourquoi | Installation |
|---|---|---|---|
| ✅ [**Marketing Skills**](https://github.com/coreyhaines31/marketingskills) (Corey Haines) | ~52k | 40+ skills : copywriting, CRO, SEO, pricing, cold email, lancement, paywalls, referral, ads… | `/plugin marketplace add coreyhaines31/marketingskills` → `/plugin install marketing-skills@marketingskills` |
| [**Knowledge Work Plugins**](https://github.com/anthropics/knowledge-work-plugins) (Anthropic) | ~26k | Plugins métier officiels : `small-business`, `sales`, `marketing`, `finance`, `legal`, `product-management`, `customer-support` | `/plugin marketplace add anthropics/knowledge-work-plugins` → `/plugin install sales@knowledge-work-plugins` |
| ✅ [**last30days**](https://github.com/mvanhorn/last30days-skill) | ~63k | Recherche ce qui se dit sur un sujet ces 30 derniers jours (Reddit, X, YouTube, HN…) et en fait une synthèse — parfait pour la veille et valider une tendance | `/plugin marketplace add mvanhorn/last30days-skill` → `/plugin install last30days` |
| ✅ [**Humanizer**](https://github.com/blader/humanizer) | ~53k | Retire les tics d'écriture d'IA d'un texte (posts LinkedIn, emails, site) | `/plugin marketplace add blader/humanizer` → `/plugin install humanizer@humanizer` |
| [**Claude SEO**](https://github.com/AgriciDaniel/claude-seo) | ~18k | Audit SEO complet : technique, contenu, schema, référencement dans les IA | `/plugin marketplace add AgriciDaniel/claude-seo` → `/plugin install claude-seo@agricidaniel-claude-seo` |
| **aws-startup-advisor** (officiel) | — | Conseils d'architecture et de coûts cloud pour startups | `/plugin install aws-startup-advisor@claude-plugins-official` |
| [**founder-skills**](https://github.com/ognjengt/founder-skills) | ~0,4k | Petits skills pour fondateurs (stratégie, produit, opérations) | voir le README du repo |

### 🎨 Design, documents & contenu

| Skill | ⭐ | Pourquoi | Installation |
|---|---|---|---|
| [**Anthropic Skills**](https://github.com/anthropics/skills) (officiel) | ~179k | **PowerPoint, Word, Excel, PDF** de qualité pro (licence propriétaire : tape `/installer-documents` ; `frontend-design` et `skill-creator` sont inclus ✅) | `/plugin marketplace add anthropics/skills` → `/plugin install document-skills@anthropic-agent-skills` |
| ✅ **frontend-design** (officiel) | — | Des interfaces qui n'ont pas l'air générées par une IA | `/plugin install frontend-design@claude-plugins-official` |
| ✅ [**UI UX Pro Max**](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | ~132k | Base de styles, palettes, typos et règles UX pour des sites pro | `/plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill` → `/plugin install ui-ux-pro-max@ui-ux-pro-max-skill` |
| ✅ [**Frontend Slides**](https://github.com/zarazhangrui/frontend-slides) | ~30k | De belles présentations en HTML (pitch, cours) | `/plugin marketplace add zarazhangrui/frontend-slides` → `/plugin install frontend-slides@frontend-slides` |
| [**Remotion skills**](https://github.com/remotion-dev/skills) | ~5k | Créer des **vidéos** (démo produit, pub) en code | `npx skills add remotion-dev/skills` |

### 🧩 Productivité, mémoire & méthode

| Skill | ⭐ | Pourquoi | Installation |
|---|---|---|---|
| **context7** (officiel) | ~63k | Doc à jour de n'importe quelle librairie → moins d'erreurs de code | `/plugin install context7@claude-plugins-official` |
| [**claude-mem**](https://github.com/thedotmack/claude-mem) | ~95k | Mémoire automatique entre les sessions | `npx claude-mem install` |
| [**Planning with Files**](https://github.com/OthmanAdi/planning-with-files) | ~27k | Plans persistants en Markdown pour les longues tâches | `npx skills add OthmanAdi/planning-with-files --skill planning-with-files -g` |
| [**Obsidian Skills**](https://github.com/kepano/obsidian-skills) (CEO d'Obsidian) | ~49k | Claude gère ton coffre de notes Obsidian | `/plugin marketplace add kepano/obsidian-skills` → `/plugin install obsidian@obsidian-skills` |
| [**Matt Pocock Skills**](https://github.com/mattpocock/skills) | ~273k | Skills d'ingénieur « pour de vrai » (TypeScript, tests, planification) | `npx skills@latest add mattpocock/skills` |
| [**Graphify**](https://github.com/Graphify-Labs/graphify) | ~123k | Transforme un projet (code, docs, PDF) en graphe de connaissances interrogeable | voir le README |
| [**Spec Kit**](https://github.com/github/spec-kit) (GitHub) | ~140k | Développement piloté par les spécifications : spec → plan → tâches → code | voir le README |

### 📚 Annuaires pour en trouver d'autres
- [hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) — la liste de référence (skills, hooks, agents, outils)
- [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) — skills + 850 intégrations SaaS
- [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) — 1 000+ skills
- [msitarzewski/agency-agents](https://github.com/msitarzewski/agency-agents) — une « agence » complète d'agents spécialisés (marketing, design, growth…)
- [vercel-labs/skills](https://github.com/vercel-labs/skills) — l'outil `npx skills` pour installer des skills dans n'importe quel agent
- `/plugin` dans Claude Code → onglet *Discover*

> ⚠️ **Un skill, c'est du code et des instructions que Claude va suivre.** N'installe que des sources que tu as lues ou qui sont reconnues. Voir [section 13](#13-sécurité--bonnes-pratiques).

---

## 11. Playbook : ta startup de A à Z

Clone ce repo (c'est ton espace de travail), remplis [`CLAUDE.md`](CLAUDE.md), puis :

| Étape | Prompt (copie-colle) | Outils |
|---|---|---|
| **1. Idée** | « Voici mon idée : … Utilise /valider-idee. Sois brutalement honnête. » | `valider-idee`, gstack `/office-hours` |
| **2. Marché** | « /etude-de-marche pour [secteur] en France. 5 concurrents en parallèle. » | subagents, `last30days` |
| **3. Interviews** | « Je veux m'entraîner : joue le client cible. » puis de vraies interviews → « Analyse ces 10 transcripts dans `validation/`, quels patterns ? » | `client-cible` |
| **4. Business model** | « /lean-canvas, puis propose 3 grilles tarifaires. » | `lean-canvas`, marketing `pricing` |
| **5. MVP / landing** | « /landing-page avec waitlist, mets-la en ligne et donne-moi l'URL. » | `frontend-design`, Vercel |
| **6. Acquisition** | « /cold-email pour ces 30 prospects (`prospects.csv`), en brouillons Gmail. » | Gmail MCP, `humanizer` |
| **7. Finance** | « /previsionnel sur 3 ans, scénario prudent / central / ambitieux. » | `xlsx` |
| **8. Pitch** | « /pitch-deck, puis demande à l'investisseur sceptique de le démonter, puis corrige. » | `pptx`, `investisseur-sceptique` |
| **9. Pilote auto** | « /schedule chaque lundi 8h : /veille-concurrents + résumé par email. » | `/schedule` |

**Bonus fondateur :**
- « Rédige les CGV et la politique de confidentialité RGPD de mon site (à faire relire par un juriste). »
- « Compare les statuts SAS / SASU / micro-entreprise pour mon cas. »
- « Prépare mon dossier de candidature à [incubateur / BPI / concours]. »
- « Analyse cet export Stripe / Google Analytics et dis-moi ce qui cloche. »

---

## 12. Claude Code pour toute ta vie

Claude Code n'est pas réservé au code. Tout ce qui se fait sur un ordinateur avec des fichiers, il peut t'aider à le faire :

- 📂 **Ranger ton ordi** : « Trie mon dossier Téléchargements par type et par date. »
- 🎓 **Cours** : « Transforme ces 12 PDF de cours en fiches de révision + 30 questions de quiz. »
- 💼 **Stage / alternance** : « Adapte mon CV et ma lettre à cette offre. » · « Trouve 20 startups qui recrutent en alternance data à Paris, en tableau. »
- 💶 **Budget** : « Analyse mon relevé bancaire CSV et dis-moi où part mon argent. »
- 🏠 **Appart** : « Compare ces 5 annonces : prix au m², transports jusqu'à l'ESILV. »
- ✈️ **Voyage** : « Planifie 5 jours à Lisbonne, budget 400 €, en tableau jour par jour. »
- 📸 **Fichiers** : « Renomme mes 300 photos par date et lieu. » · « Convertis ces vidéos en MP4 compressé. »
- 📧 **Admin** : « Résume mes emails non lus importants et prépare les réponses. »

---

## 13. Sécurité & bonnes pratiques

- 🔑 **Jamais de mots de passe ou clés API dans le chat.** Utilise un fichier `.env` (et ajoute-le à `.gitignore`).
- 👀 **Lis avant d'accepter** les commandes sensibles : suppression, envoi d'email, paiement, publication.
- 🧪 **Prompt injection** : une page web ou un email peut contenir des instructions cachées. Claude est entraîné à s'en méfier, mais reste vigilant quand il lit du contenu externe et agit ensuite (envoi, paiement).
- 🧩 **Skills et plugins = code tiers.** Préfère les sources officielles ou très reconnues ; lis le `SKILL.md` avant.
- 💾 **Git = ta machine à remonter le temps.** `git init` dans chaque projet ; demande à Claude de committer à chaque étape.
- ✅ **Vérifie** : chiffres, sources, juridique. Claude peut se tromper avec aplomb.
- 💸 **Coûts** : `/usage` pour suivre ta consommation ; `caveman` et des sessions courtes économisent beaucoup.

---

## 14. Cheat sheet

### Commandes
| | |
|---|---|
| `claude` | Lancer dans le dossier courant |
| `claude -c` | Continuer la dernière conversation |
| `claude -p "…"` | Une tâche sans interface (scripts) |
| `/init` | Générer le `CLAUDE.md` |
| `/context` · `/compact` · `/clear` | Gérer la mémoire |
| `/resume` · `/rewind` | Reprendre · revenir en arrière |
| `/model` | Changer de modèle |
| `/agents` | Gérer les subagents |
| `/plugin` | Parcourir et installer des plugins |
| `/mcp` | Connecteurs |
| `/hooks` | Automatismes |
| `/schedule` · `/loop` | Agents récurrents |
| `/code-review` · `/security-review` | Relire du code |
| `/config` · `/permissions` | Réglages |
| `/help` | Aide |

### Raccourcis
| | |
|---|---|
| `Shift+Tab` | Changer de mode (normal / auto-accept / plan) |
| `Esc` | Interrompre Claude |
| `Esc` `Esc` | Revenir à un message précédent |
| `@` | Mentionner un fichier |
| `!` | Lancer une commande shell directement |
| `/` | Liste des commandes et skills |

### Le prompt parfait
```
CONTEXTE  : qui je suis, le projet (ou : lis CLAUDE.md)
OBJECTIF  : le résultat attendu, concret
CONTRAINTES : format, longueur, ton, ce qu'il ne faut PAS faire
FINI QUAND : comment on vérifie que c'est réussi
```

---

## 15. Pour aller plus loin

- 📖 Documentation officielle : [code.claude.com/docs](https://code.claude.com/docs)
- 🎓 Cours gratuits Anthropic : [anthropic.skilljar.com](https://anthropic.skilljar.com)
- 🛠️ Les skills officiels : [github.com/anthropics/skills](https://github.com/anthropics/skills)
- 🧰 Les plugins officiels : [github.com/anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official)

---

Licence MIT. Les skills tiers listés appartiennent à leurs auteurs respectifs, sous leurs propres licences.
