#!/usr/bin/env bash
# Installe le "starter pack" du cours : nos skills + les meilleurs skills de la communauté.
# Usage : bash install.sh            -> pack essentiel
#         bash install.sh --all      -> pack essentiel + pack avancé
# Prérequis : Claude Code installé (https://claude.com/claude-code)

set -u

if ! command -v claude >/dev/null 2>&1; then
  echo "❌ Claude Code n'est pas installé. Voir : https://code.claude.com/docs"
  exit 1
fi

ok=0; ko=0
# add <repo GitHub de la marketplace> <plugin@marketplace>
add() {
  echo "→ $2"
  claude plugin marketplace add "$1" >/dev/null 2>&1 || true   # déjà ajoutée = pas grave
  if claude plugin install "$2" >/dev/null 2>&1; then
    ok=$((ok+1)); echo "  ✅"
  else
    ko=$((ko+1)); echo "  ⚠️  échec — installe-le à la main : /plugin install $2"
  fi
}

echo "== Pack essentiel =="
add ebenbaruk/track-entrepreneurship-CC     entrepreneur@track-entrepreneurship-cc
add anthropics/skills                       document-skills@anthropic-agent-skills
add anthropics/claude-plugins-official      frontend-design@claude-plugins-official
add anthropics/claude-plugins-official      superpowers@claude-plugins-official
add anthropics/claude-plugins-official      context7@claude-plugins-official
add JuliusBrussee/caveman                   caveman@caveman
add forrestchang/andrej-karpathy-skills     andrej-karpathy-skills@karpathy-skills
add coreyhaines31/marketingskills           marketing-skills@marketingskills
add blader/humanizer                        humanizer@humanizer
add mvanhorn/last30days-skill               last30days@last30days-skill

if [ "${1:-}" = "--all" ]; then
  echo "== Pack avancé =="
  add nextlevelbuilder/ui-ux-pro-max-skill  ui-ux-pro-max@ui-ux-pro-max-skill
  add zarazhangrui/frontend-slides          frontend-slides@frontend-slides
  add anthropics/knowledge-work-plugins     small-business@knowledge-work-plugins
  add anthropics/knowledge-work-plugins     sales@knowledge-work-plugins
  add anthropics/knowledge-work-plugins     marketing@knowledge-work-plugins
  add anthropics/knowledge-work-plugins     finance@knowledge-work-plugins
  add anthropics/claude-plugins-official    aws-startup-advisor@claude-plugins-official
  add anthropics/claude-plugins-official    stripe@claude-plugins-official
  add anthropics/claude-plugins-official    vercel@claude-plugins-official
  add AgriciDaniel/claude-seo               claude-seo@agricidaniel-claude-seo
  add kepano/obsidian-skills                obsidian@obsidian-skills
fi

echo
echo "Terminé : $ok installé(s), $ko à faire à la main."
echo "Relance Claude Code, puis tape /plugin pour vérifier."
echo "gstack et GBrain s'installent à part : voir le README, section « Les stars »."
