FROM python:3

LABEL version="0.1"

COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN pip3 install -r requirements.txt

COPY . /

ENTRYPOINT ["python3"]

CMD ["website/app.py"]
