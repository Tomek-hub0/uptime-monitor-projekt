#!/bin/bash

# Změnili jsme port na 5001, aby nám do toho nekecal AirPlay z macOS
URL="http://localhost:5001"

echo "🐕 Spouštím hlídacího psa pro web: $URL"

HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

echo "🔍 Kontrola webu... Výsledný HTTP kód je: $HTTP_CODE"

if [ "$HTTP_CODE" -eq 200 ]; then
    echo "🟢 E-shop funguje bez problémů."
else
    echo "🚨 POPLACH! Firemní e-shop spadl! HTTP kód je $HTTP_CODE"
fi
