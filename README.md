# API - Gerenciador de Cemitério - Laravel & Angular
## Pré-requisitos
Para rodar a API, bem como o frontend, são necessários os seguintes programas previamente instalados:

PHP 7.2, Angular, MySQL 5.7.

Opcionais:

Postman, Visual Studio Code, GIT.

### PHP 7.2
Com o PHP, são necessárias as seguintes dependências:

php7.2-mbstring

libapache2-mod-php7.2

php7.2-xml

### Angular
Angular CLI: 8.0.6

Node: 10.16.0

Angular: 8.0.3

npm: 6.9.0

## Instalar API
Acessar diretório que deseja alocar a API.

Executar o seguinte comando para baixar aplicação:

git clone https://github.com/adenardin/cemiterio.git

Copiar arquivo .env.example para .env

Editar entradas de banco de dados.
```php
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=cemiterio
DB_USERNAME=<seu usuario>
DB_PASSWORD=<sua senha>
```
## Banco de Dados MySQL 
### Versão 5.7
O banco de dados está disponível no arquivo de dump cemiterio.sql. Na raíz do projeto.

Para importar o dump, execute os comandos abaixo:

No MySQL:

CREATE DATABASE cemiterio;

No sistema operacional, preferencialmente na raiz do projeto, para executar o arquivo sql.

mysql -u username -p cemiterio < cemiterio.sql

## Iniciar API - Laravel
Acessar a raiz do Projeto no terminal e Executar:

php artisan serve

Deve retornar:

Laravel development server started: <http://127.0.0.1:8000>

## Iniciar Frontend Angular
Acessar resources/frontend e executar:

ng serve

Deve retornar:

** Angular Live Development Server is listening on localhost:4200, open your browser on http://localhost:4200/ **

## Postman
Importe o arquivo CEM.postman_collection.json para testar a API.
