FROM python:3.9.6-slim-buster
WORKDIR /application
COPY ./ /application

RUN pip install -r requirements.txt

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

CMD gunicorn --bind 0.0.0.0:8000 --workers 2 dashboard.wsgi