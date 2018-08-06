create database Sistema_Hospital
default character set utf8
default collate utf8_general_ci;

use Sistema_Hospital;

create table hospital(
idHospital int auto_increment,
nome varchar(100) not null,
endereco varchar(80) not null,
cnpj int not null,
telefone int not null,
primary key(idHospital)
) default charset utf8;

select * from hospital;

create table medico(
idMedico int auto_increment,
nome varchar(80) not null,
telefone int not null,
especialidade varchar(100) not null,
cpf varchar(11) not null unique,
crm varchar(13) not null unique,
idHospital int,
primary key(idMedico),
foreign key(idHospital) references hospital(idHospital)
) default charset utf8;


create table paciente(
IdPaciente int auto_increment,
nome varchar(80) not null,
cpf varchar(11) not null unique,
rg varchar(10) not null unique,
endereco varchar(100) not null,
bairro varchar(50) not null,
cidade varchar(50) not null,
estado varchar(25) not null,
telefone int,
sexo varchar(15) not null,
dtNasc date not null,
idHospital int,
idMedico int,
primary key(IdPaciente),
foreign key(IdHospital) references hospital(idHospital),
foreign key(IdMedico) references medico(idMedico)
) default charset utf8;

select * from paciente;