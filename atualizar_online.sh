#!/bin/bash
# CAPTURAOBRA — Atualiza o sistema online
# Uso: ./atualizar_online.sh "descrição da atualização"
# Os agentes do Claude Code chamam este script automaticamente.

cd /Users/sergiopessoa/Desktop/CapturaObra

MENSAGEM="${1:-Atualização automática — $(date '+%d/%m/%Y %H:%M')}"

git add sistema_capturaobra.html
git commit -m "$MENSAGEM" 2>/dev/null || echo "Nada novo para commitar."
git push origin main 2>&1

echo ""
echo "✅ Online em: https://alkreformascuritiba-ux.github.io/capturaobra/"
