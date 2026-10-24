#!/usr/bin/env bash
# Тестовая заявка с «сайта». Адрес возьмите из узла «Форма на сайте» (Production URL).
URL=${1:-http://localhost:5678/webhook/lead}
curl -s -X POST "$URL" -H 'Content-Type: application/json' -d '{
  "name": "Сергей",
  "phone": "8 (912) 345-67-89",
  "email": "loft@example.com",
  "message": "Добрый день! Срочно нужно на сегодня 6 кг зернового кофе и 12 литров молока 3,2% в бар «Лофт» на Садовой."
}'
echo
