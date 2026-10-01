---
name: landing-page
description: Crée et met en ligne une landing page de startup qui convertit (waitlist, pré-commande, démo), avec un vrai design et pas un template générique. Utiliser quand l'utilisateur veut un site, une landing page, une page de waitlist, ou tester la demande pour son produit.
---

# Landing page

Objectif : une page en ligne aujourd'hui qui mesure si les gens veulent le produit.

## 1. Le message avant le design
Écris d'abord `landing/copy.md` :
- **Headline** (≤ 8 mots) : le résultat pour le client, pas la techno.
- **Sous-titre** (≤ 20 mots) : pour qui + comment.
- **3 bénéfices** (pas des fonctionnalités).
- **Preuve** : chiffre, citation d'interview réelle, logo — ou rien (jamais de faux témoignages).
- **CTA unique** : "Rejoindre la liste d'attente", "Pré-commander", "Réserver une démo".
- **FAQ** : les 4 objections entendues en interview.

Montre le copy à l'utilisateur et itère AVANT de coder.

## 2. Le design
- Si le skill `frontend-design` (Anthropic) ou `ui-ux-pro-max` est installé, l'utiliser.
- Sinon : une typo distinctive, une couleur d'accent, beaucoup d'espace, pas de dégradé violet générique, mobile d'abord.
- Stack simple : un seul `index.html` (+ Tailwind CDN) suffit pour valider une idée. Next.js seulement si l'utilisateur le demande.

## 3. Capturer les leads
Formulaire email branché sur un service sans backend (Formspree, Tally, Google Forms) ou, si l'utilisateur veut, une vraie base. Pour un test de prix : un **Payment Link Stripe** en mode test.

## 4. Mettre en ligne
- Vercel (`npx vercel --yes`) ou GitHub Pages ou Netlify Drop.
- Donne l'URL à l'utilisateur et propose d'ajouter des analytics (Vercel Analytics, Plausible).

## 5. Mesurer
Définis le seuil : ex. "≥ 10 % des visiteurs laissent leur email = signal positif".
