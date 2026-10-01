---
name: cold-email
description: Écrit des séquences de prospection (cold email, LinkedIn) personnalisées et courtes pour trouver des clients, des partenaires, des mentors ou des investisseurs. Peut créer les brouillons dans Gmail si le connecteur est disponible. Utiliser quand l'utilisateur veut prospecter, contacter quelqu'un, écrire un cold email ou un message LinkedIn.
---

# Cold email & prospection

## Entrées
- Qui on contacte (liste, fichier CSV, ou profil type) et **pourquoi lui/elle précisément**.
- L'objectif : un call de 15 min, un retour, une démo, une intro.
- Le contexte de la startup (`CLAUDE.md`).

## Règles d'écriture
- **< 100 mots.** Lisible sur téléphone en 20 secondes.
- Objet : 2 à 5 mots, minuscules, pas de pièges ("re:", "urgent").
- Ligne 1 : sur **elle/lui** (un détail réel et vérifiable : post, projet, article), jamais "Je me permets de…".
- Une seule demande, facile à accepter ("Ouvert(e) à 15 min jeudi ?").
- Pas de pièce jointe, pas de lien de tracking, pas de flatterie générique.
- Ton : étudiant(e) curieux(se) et direct(e) — c'est un avantage, l'utiliser.

## Séquence
- Email 1 (J0) — le message principal.
- Relance 1 (J+3) — 2 lignes, nouvel angle ou nouvelle info.
- Relance 2 (J+7) — "dernière relance", porte de sortie polie.

## Personnalisation en masse
Si l'utilisateur fournit une liste : un subagent par lot de 5-10 contacts pour rechercher un détail personnel sur chacun (site, LinkedIn public, articles), puis écrire chaque email. Sortie : `prospection/emails.csv` (`nom, email, objet, corps, relance1, relance2`).

## Envoi
Si le connecteur Gmail est disponible : **créer des brouillons**, ne jamais envoyer sans confirmation explicite de l'utilisateur, email par email ou en lot validé.

## Éthique
Pas d'usurpation, pas de fausse familiarité ("Suite à notre échange…" s'il n'y en a pas eu), respecter le RGPD (B2B, intérêt légitime, désinscription facile).
