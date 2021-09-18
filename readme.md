#Commands

- mkdir flask_starter_app && cd flask_starter_app

- python3 -m venv venv
- source venv/bin/activate
- pip install flask flask-bootstrap jikanpy 
- pip freeze > requirements.txt

- docker build -t flask-starter-app . 

- docker run --name=flask-app -p 5001:5000 -t -i flask-starter-app