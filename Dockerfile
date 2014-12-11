FROM ubuntu

RUN apt-get update
RUN apt-get install -y python-pip python-dev
ADD ./ /opt/flask_hello_world
RUN pip install -r /opt/flask_hello_world/requirements.txt
EXPOSE 5000
WORKDIR /opt/flask_hello_world
CMD python app.py
