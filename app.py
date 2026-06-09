from flask import Flask

app = Flask(__name__)

# Globální proměnná - drží stav e-shopu
e_shop_jede = True

@app.route('/')
def home():
    global e_shop_jede
    if e_shop_jede:
        return "🛒 Vitejte na nasem e-shopu! Vsechny systemy jsou stabilni.", 200
    else:
        return "🚨 SYSTEM CRASH: E-shop je momentalne nedostupny!", 500

@app.route('/crash')
def crash():
    global e_shop_jede
    e_shop_jede = False
    return "💥 Pozor! Stiskl jsi krizove tlacitko. E-shop prave spadl.", 200

if __name__ == '__main__':
    # Spustíme server na portu 5000
    app.run(host='0.0.0.0', port=5000)
