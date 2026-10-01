---
disable-model-invocation: true
name: previsionnel
description: Construit un prévisionnel financier de startup sur 3 ans (revenus, coûts, trésorerie, besoin de financement, unit economics CAC/LTV) dans un fichier Excel avec de vraies formules. Utiliser quand l'utilisateur parle de prévisionnel, business plan financier, P&L, trésorerie, burn rate, levée de fonds ou unit economics.
---

# Prévisionnel financier

## 1. Les hypothèses d'abord
Liste et fais valider par l'utilisateur, dans un tableau :
- Prix, panier moyen, fréquence d'achat
- Acquisition : canaux, coût par client (CAC), taux de conversion
- Croissance mensuelle (prudent / central / ambitieux)
- Churn (si abonnement)
- Coûts fixes : salaires, outils, loyer ; coûts variables : % du CA
- Fiscalité/charges France : charges sociales ≈ 42-45 % du brut (salarié), IS 15 % puis 25 %, TVA 20 % — à faire confirmer par un expert-comptable

## 2. Le fichier Excel
Utiliser le skill `xlsx` (Anthropic) si installé, sinon Python `openpyxl`. Créer `startup/finance/previsionnel.xlsx` avec :
- **Onglet Hypothèses** : toutes les entrées, en bleu, modifiables.
- **Onglet Mensuel (36 mois)** : clients, CA, coûts, EBITDA, trésorerie — **uniquement des formules** qui pointent vers les hypothèses (jamais de valeurs en dur).
- **Onglet Annuel** : synthèse A1/A2/A3.
- **Onglet Unit economics** : CAC, LTV, LTV/CAC (cible > 3), délai de remboursement du CAC.
- **Onglet Scénarios** : prudent / central / ambitieux.

## 3. Lecture
En 5 lignes : point mort (mois), besoin de financement max (le creux de trésorerie + 6 mois de marge), la variable la plus sensible.

## Règles
- Tout chiffre = hypothèse visible et modifiable.
- Prévenir que c'est un outil de réflexion, pas un conseil financier.
