# Uptime Monitor & Status Page Projekt

Tento projekt slouží jako automatický hlídáč dostupnosti webových aplikací.

## Jak projekt nastartovat
*(sem budeme postupně dopisovat příkazy)*

### 1. Spuštění falešného E-shopu (Docker)
Aplikace simuluje firemní web a běží na portu `5000`.

* **Sestavení obrazu:** `docker build -t muj-eshop .`
* **Spuštění kontejneru:** `docker run -d -p 5000:5000 --name eshop-kontejner muj-eshop`
* **Testování:** * Hlavní stránka: `http://localhost:5000` (Vrátí HTTP 200)
  * Sabotáž (pád): `http://localhost:5000/crash` (Vrátí HTTP 500)
