# 🕵️‍♂️ Uptime Monitor & Status Page Projekt

Tento projekt slouží jako automatický hlídač dostupnosti webových aplikací.

## 🛠️ Jak projekt nastartovat

### 1. Spuštění falešného E-shopu (Docker)
Aplikace simuluje firemní web. Kvůli kolizi s funkcí AirPlay na macOS běží na vnějším portu `5001`.

* **Sestavení obrazu:** `docker build -t muj-eshop .`
* **Spuštění kontejneru:** `docker run -d -p 5001:5000 --name eshop-kontejner muj-eshop`
* **Testování:**
  * Hlavní stránka: `http://localhost:5001` (Vrátí HTTP 200)
  * Sabotáž (pád): `http://localhost:5001/crash` (Vrátí HTTP 500)

### 2. Spuštění hlídacího psa (Bash)
* **Spuštění kontroly:** `./monitor.sh`
