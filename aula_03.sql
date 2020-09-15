create database temp

use temp

--1
create table estado (
	sg_Estado char(02),
	nm_Estado varchar(40)
)

insert into estado(sg_Estado, nm_Estado) values ('SP', 'Sao Paulo')
insert into estado(sg_Estado, nm_Estado) values ('RJ', 'Rio de Janeiro')

--2
create table cidade (
	cd_cidade int not null,
	nm_cidade varchar(40),
	sg_estado char(02)
)

insert into cidade(cd_cidade, nm_cidade, sg_estado) 
values (1, 'São Paulo', 'SP'), (2, 'Santo André', 'SP'), (3, 'Campinas', 'SP'), (1, 'Rio de Janeiro', 'RJ'), (2, 'Niteroi', 'RJ')

--3 
create table bairro (
	cd_bairro int not null,
	nm_bairro varchar(40),
	cd_cidade int not null,
	sg_estado char(02)
)

insert into bairro(cd_bairro, nm_bairro, cd_cidade, sg_estado) values (1, 'Jardins', 1, 'SP'),
(2, 'Morumbi', 1, 'SP'), (3, 'Aeroporto', 1, 'SP'), (1, 'Aeroporto', 1, 'RJ'), (2, 'Niteroi', 1, 'RJ')

--4
create table vendedor (
	cd_vendedor int not null,
	nm_vendedor varchar(40),
	ds_endereco varchar(50),
	ds_email varchar(60)
)

insert into vendedor(cd_vendedor, nm_vendedor, ds_endereco, ds_email) 
values (1, 'Maria da Silva', 'Rua do Grito, 45', 'msiva@nova.com'), (2, 'Marco Andrade', 'Av. da Saudade, 325', 'mandrade@nova.com'),
(3, 'André Cardoso', 'Av. Brasil, 401', 'acardoso@nova.com'), (4, 'Tatiana Souza', 'Rua Imperador, 778', 'tsouza@nova.com')