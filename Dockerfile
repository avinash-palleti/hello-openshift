FROM openvino/ubuntu18_dev
USER root
RUN apt-get update && apt-get install -y python3 python3-pip sudo

RUN pip3 install flask
USER 1001
COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080