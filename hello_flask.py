from flask import Flask
app = Flask(__name__)


@app.route('/')
def index():
    return 'hello man'

if __name__ == '__main__':
    app.debug = True
    app.run(debug=True, host='0.0.0.0', port=8888)
    # docker run -p 80:8888 flask_im
