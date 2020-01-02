# Textual Analysis

Execução manual
- Na raiz: 
    - Instalar dependencias SO
        - Ubuntu
            - $ sudo apt-get install libpq-dev
        - MySQL
            - $ sudo apt-get install libmysqlclient-dev
    - $ pipenv --three
    - $ pipenv shell
    - Caso exista um requirements.txt executar 
        -  $ pipenv install
    - $ flask run
  Modo iterativo:
    - $ flask shell
    
- Docker
    - $ docker-compose up -d --build


### Flask DB
- Comandos do flask db:
    - flask db init: prepara as migrations (models.py)
    - flask db migrate: executa as migrations
    - flask db upgrate: envia as tabelas

- Acessar postgres  
  - docker network create --driver bridge postgres-network
  - docker run -it --rm --name somoe-postgres --network postgres-network -e "POSTGRES_PASSWORD=123456" -p 5432:5432 -d 
  postgres
  - docker exec -it some-postgres bash
    -  psql -U postgres
- Helps Postregs
    - `\l`: lista databases
    - `create database <database>;` : cria um database, ex: flask_contacts
    - `\connect <database>`: seleciona database
    - `\dt`: lista as tabelas de um <database>
    - `\d+ <table>`: mostra a estrutura da tabela

### Helpers
- Atualizar pipenv
    - $ pipenv lock -r > requirements.txt

### Suport ao Postman
Importar o arquivo `Flask-Contacts.postman_collection.json` para o Postman

### Referências
- https://www.youtube.com/channel/UCedHFDY78egBPEJXL2d8OiQ/videos