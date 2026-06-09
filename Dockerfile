# 1. Použijeme odlehčený Python obraz
FROM python:3.11-slim

# 2. Nastavíme pracovní složku uvnitř kontejneru
WORKDIR /app

# 3. Nainstalujeme framework Flask přímo do kontejneru
RUN pip install flask

# 4. Zkopírujeme náš kód app.py do kontejneru
COPY app.py .

# 5. Otevřeme síťový port 5000 navenek
EXPOSE 5000

# 6. Příkaz, který se provede při startu kontejneru
CMD ["python", "app.py"]
