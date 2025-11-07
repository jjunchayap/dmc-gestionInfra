from flask import Flask

app = Flask(__name__)

@app.route("/saludo")
def saludo():
    return "Hola, este el el trabajo de Gestion de Infraestructura-Devops"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5050)