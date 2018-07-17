from flask import Flask, Response
app = Flask(__name__)

@app.route('/is/it/working')
def is_it_working():
    return Response('YES', status=200)

