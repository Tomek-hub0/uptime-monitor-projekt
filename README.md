# Uptime Monitor & Status Page Projekt

Tento projekt slouží jako automatický hlídač dostupnosti webových aplikací s ukládáním historie do databáze Redis.

## 🏗️ Architektura projektu
Projekt se skládá ze dvou kontejnerů řízených pomocí Docker Compose:
1. **Flask Web (E-shop)** – Běží na portu `5001`. Má sabotážní adresu `/crash`.
2. **Redis Databáze** – Běží na portu `6379`. Ukládá logy hlídače.

## Jak projekt nastartovat

### 1. Spuštění celé infrastruktury (Docker Compose)
Tento příkaz stáhne databázi, sestaví e-shop a spustí oba kontejnery na pozadí:
`docker compose up -d`

### 2. Spuštění hlídacího psa (Bash)
Spustí nekonečnou smyčku, která každých 5 vteřin kontroluje web a posílá výsledky do Redisu:
`./monitor.sh`

### 3. Kontrola dat v databázi Redis
Pro zobrazení historie kontrol uložené uvnitř databáze použijte příkaz:
`docker compose exec databaze redis-cli LRANGE uptime_logy 0 -1`

### 🛑 Jak projekt kompletně vypnout a uklidit
`docker compose down` 
