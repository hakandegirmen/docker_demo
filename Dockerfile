FROM python:3.6.2

COPY requirements.txt /

COPY docker_entrypoint.sh /

RUN chmod +x /docker_entrypoint.sh

COPY ./app /app

VOLUME /app

RUN pip install -r /requirements.txt

EXPOSE 5000

ENTRYPOINT ["/docker_entrypoint.sh"]