FROM python:3.6-slim

RUN apt-get update && \
apt-get install -y libpq-dev && \
apt-get -y install gcc mono-mcs && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .

# -- Adding Pipfiles
COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock

# -- Install dependencies:
RUN pip3 install --upgrade pip \
    && pip3 install -r requirements.txt

# Export environments
ENV FLASK_ENV development
ENV FLASK_APP main.py
#ENV FLASK_ENV_FILE .env

# RUN Migrations
# RUN flask db migrate
# RUN flask db upgrade

# Run Application
#RUN flask run

ENTRYPOINT ["python"]
CMD ["main.py"]
