FROM ubuntu
RUN apt-get update -y && apt-get install git python python-pip -y

WORKDIR /tornada
COPY . /tornada

RUN pip install -r requirements.txt

EXPOSE 8888

CMD ["python", "app.py"]
