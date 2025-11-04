alter session set container=FREEPDB1;

CREATE USER my_user IDENTIFIED BY my_user QUOTA UNLIMITED ON USERS;

CONNECT my_user/my_password@FREEPDB1;
-- Cria o diretório
-- CREATE OR REPLACE DIRECTORY DATA_DIR AS '/opt/init-scripts/data';

-- Concede permissão ao seu usuário de aplicação
GRANT READ, WRITE ON DIRECTORY DATA_DIR TO my_user;

GRANT CONNECT, RESOURCE TO my_user;