#criando meu banco de dados
create database sistema;
use sistema;cidade

create table cidade (
codigo int primary key auto_increment,
nome varchar (100) not null
);

create table estado(
	codigo int primary key auto_increment,
	nome varchar(100) not null,
    sigla varchar(2) not null
);

create table pessoa (
	codigo int primary key auto_increment,
    nome varchar(100) not null,
    cpf varchar(11) default '00000000000'
);

alter table cidade
add column codigoEstado int not null;
 
 
 alter table cidade
 add constraint fk_estado foreign key(codigoEstado) references estado(codigo);
 

 alter table pessoa
 add column codigoCidade int not null;

 
 alter table pessoa
 add constraint fk_cidade foreign key(codigoCidade) 
 references cidade(codigo);
 
 # comandos DML
 # selecionando todos os dados da tabela
 select * from estado;		
 insert into estado (nome,sigla)  values ('Rio Grande do Sul','RS');
 insert into estado (nome,sigla)  values ('Santa Catarina','SC');
 insert into estado (nome,sigla)  values ('Paraná','PR');
 insert into estado (nome,sigla)  values ('Espírito Santo','ES');
 insert into estado (nome,sigla)  values ('Minas Gerais','MG');
 insert into estado (nome,sigla)  values ('Rio de Janeiro','RJ');
 insert into estado (nome,sigla)  values ('São Paulo','SP');

 #outra forma
 insert into estado (nome,sigla) values
 ('Maranhão','MA'),('Piaui','PI'),('Ceara','CE'),('Rio Grande do Norte','RN'),('Paraíba','PB'),('Pernambuco','PE'),
('Alagoas','AL'),('Sergipe','SE'),('Bahia','BA'),('Amazonas','AM'),('Pará','PA'),('Acre','AC'),('Roraima','RR'),('Rondônia','RO'),('Amapá','AP'),('Tocantins','TO');

desc estado;

insert into estado (nome) values ('yyy');
insert into estado (nome,sigla) values ('yyy',null);
insert into estado (nome,sigla) values ('yyy','');
 
 show tables;
 
insert into cidade (nome, codigoEstado) 
values ('Porto Alegre',1);
 
 select*from cidade;
 insert into cidade(nome, codigoEstado) values ('Canoas',1);
 
 
 