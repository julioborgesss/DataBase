create database RJJsql;
use RJJsql;
create table usuario(
 id int primary key auto_increment,
 nome varchar(45) not null,
 email varchar(45) not null
 );
 create table telefone(
 id int primary key not null auto_increment,
 ddd int not null,
 numero int not null,
 idUsuario int not null,
 foreign key (idUsuario) references usuario(id)
 );
 create table pessoa(
 id int primary key not null,
 rg int not null,
 idade int not null,
 endereco varchar(100) not null
 );
 create table registro(
 id int primary key not null auto_increment,
 idUser int not null, 
 idPessoa int not null,
 foreign key (idUser) references usuario(id),
 foreign key (idPessoa) references pessoa(id)
 );
 create table Ongs(
 id int primary key auto_increment,
 cnpj int not null,
 nomeSocial int not null,
 RazaoSocial varchar(100)
 );
 create table triagem(
 id int primary key auto_increment,
 tipo varchar(150) not null,
 idOngs int not null,
 foreign key (idOngs) references Ongs(id)
 );
 create table pessoa_triagem(
 id int primary key auto_increment,
 idPessoa int not null,
 idTriagem int not null,
 foreign key (idPessoa) references pessoa(id),
 foreign key (idTriagem) references triagem(id)
 );
 alter table pessoa
 add column nome varchar(100) not null;
 
 
 
 
 
