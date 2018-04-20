create database sge;
use sge;
create table usuario(
	id int auto_increment not null,
	nome varchar(200) not null,
	email varchar(200) not null,
	senha varchar(200) not null,
	tipo int not null,
	primary key(id)
);
create table logs(
	id int auto_increment not null,
	data_i varchar(200) not null,
	acao varchar(200) not null,
	id_usuario int not null,
	primary key(id),
	foreign key(id_usuario) references usuario(id)
);

create table produto(
	id int auto_increment not null,
	descricao text not null,
	tipo text not null,
	estoque_minimo int not null,
	primary key(id)
);
create table entrada(
	id int auto_increment not null,
	id_produto int not null,
	id_usuario int not null,
	qtd int not null,
	data_entrada text not null,
	data_validade text not null,
	data_fabricacao text not null,
	observacao text,
	primary key(id)
);
create table saida(
	id int auto_increment not null,
	id_produto int not null,
	id_usuario int not null,
	qtd int not null,
	data_saida text not null,
	observacao text,
	primary key(id)
);



