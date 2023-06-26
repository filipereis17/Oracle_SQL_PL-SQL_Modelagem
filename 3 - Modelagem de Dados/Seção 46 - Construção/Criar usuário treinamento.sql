CREATE USER treinamento
IDENTIFIED BY treinamento
default tablespace users
temporary tablespace temp
quota unlimited on users;

grant connect, resource to treinamento;