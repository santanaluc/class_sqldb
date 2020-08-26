CREATE DATABASE fatecrl

use [fatecrl]

-- Criando as tabelas
-- table vendedor
create table vendedor (
    cd_vendedor int not null, --primarykey
    nm_vendedor varchar(40),
    ds_endereco varchar(40),
    cd_cpf varchar(15),
    nm_cidade varchar(40),
    nm_bairro varchar(40),
    sg_estado char(02),
    cd_telefone varchar(20),
    ds_email varchar(60)
)

-- table imovel
create table imovel (
    cd_imovel int not null, -- primarykey
    cd_vendedor int not null, -- foreignkey
    cd_bairro int not null, -- foreignkey
    cd_cidade int,
    sg_estado char(02) not null, -- foreignkey
    ds_endereco varchar(40),
    qt_areaUtil decimal(10, 2),
    qt_areaTotal decimal(10, 2),
    ds_imovel money,
    qt_oferta int,
    k_vendido char(1),
    dt_lancto datetime,
    qt_imovelIndicado int
)

-- table comprador
create table comprador (
    cd_comprador int not null, -- primarykey
    nm_comprador varchar(40),
    ds_endereco varchar(40),
    cd_cpf varchar(20),
    nm_cidade varchar(40),
    nm_bairro varchar(40),
    sg_estado varchar(40),
    cd_telefone varchar(20),
    ds_email varchar(60)
)

-- table oferta
create table oferta (
    cd_comprador int not null, -- primarykey
    cd_imovel int not null, -- primarykey
    vl_oferta money,
    dt_oferta datetime
)

-- table estado
create table estado (
    sg_estado char(02) not null, --primarykey
    nm_estado varchar(40)
)

-- table cidade 
create table cidade (
    cd_cidade int not null, -- primarykey
    sg_estado char(02) not null, -- primarykey
    nm_cidade varchar(40)
)

-- table bairro
create table bairro (
    cd_bairro int not null, -- primarykey
    cd_cidade int not null, -- primarykey
    sg_estado char(02) not null, -- primarykey
    nm_bairro varchar(40)
)

-- table faixa_imovel 
create table faixa_imovel (
    cd_faixa int not null, -- primarykey
    nm_faixa varchar(40),
    vl_maximo money,
    vl_minimo money
)

-- Criar chaves primárias para cada tabela:
-- table vendedor
alter table vendedor add primary key (cd_vendedor)

-- table comprador
alter table comprador add primary key (cd_comprador)

--table imovel
alter table imovel add primary key (cd_imovel)

-- table oferta
alter table oferta add primary key (cd_comprador, cd_imovel)

-- table estado
alter table estado add primary key (sg_estado)

-- table cidade 
alter table cidade add primary key (cd_cidade, sg_estado)

-- table bairro 
alter table bairro add primary key (cd_bairro, cd_cidade, sg_estado)

-- table faixa_imovel
alter table faixa_imovel add primary key (cd_faixa)

-- Criando as chaves estrangeiras das tabelas
-- imovel - vendedor
Alter table imovel add foreign key (cd_vendedor) references vendedor

-- imovel - bairro
Alter table imovel add foreign key (cd_bairro, cd_cidade, sg_estado) references bairro -- erro / resolvido

-- bairro - cidade
alter table bairro add foreign key (cd_cidade, sg_estado) references cidade -- erro

-- cidade - estado
alter table cidade add foreign key (sg_estado) references estado

-- oferta - comprador
alter table oferta add foreign key (cd_comprador) references comprador -- erro / resolvido

-- oferta - imovel
alter table oferta add foreign key (cd_imovel) references imovel