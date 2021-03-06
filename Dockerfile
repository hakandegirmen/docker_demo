# the base image
FROM python:3.6.2

# copy necessary files
COPY requirements.txt /

COPY docker_entrypoint.sh /
RUN chmod +x /docker_entrypoint.sh

COPY ./app /app

# define the volume
VOLUME /app

# install python packages
RUN pip install -r /requirements.txt

# expose port
EXPOSE 5000

ENTRYPOINT ["/docker_entrypoint.sh"]