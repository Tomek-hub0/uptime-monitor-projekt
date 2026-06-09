#!/bin/bash

URL="http://localhost:5001"

echo "🐕 Hlídací pes nastartoval a hlídá web v nekonečné smyčce..."
echo "⏱️ Kontrola probíhá každých 5 vteřin. (Zastavíš mě pomocí Ctrl + C)"

while true; do
    # Vytáhneme HTTP kód
    HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" $URL)
    CAS=$(date +%H:%M:%S)

    if [ "$HTTP_CODE" -eq 200 ]; then
        echo "[$CAS] 🟢 Web je online (HTTP 200)"
        echo "[$CAS] ONLINE" >> kontroly.log
    else
        echo "[$CAS] 🚨 DETEKCE PÁDU! Web vrátil HTTP $HTTP_CODE"
        echo "[$CAS] VÝPADEK (HTTP $HTTP_CODE)" >> kontroly.log
    fi

    # Počkej 5 vteřin před dalším kolem
    sleep 5
done
