-- Criando o database 
CREATE DATABASE fatecrl_ex_aula

use fatecrl_ex_aula

-- Criando as tabelas
-- Sempre colocar "not null" para chaves primárias
create table venda (
cd_venda int not null, -- chave primaria tabela venda
dt_venda datetime,
vl_total money
)

create table vendaProd ( -- tabela de resolução do relacionamento de 1 x 1
cd_venda int not null, -- chave primaria tabela venda
cd_produto int not null, -- chave primaria da tabela produto
qt_produto int
)

create table produto (
cd_produto int not null, -- chave primaria da tabela produto
ds_produto varchar(40),
vl_produto money
)

-- Criando as chaves primárias de cada tabela
Alter table venda add primary key (cd_venda) -- vai pegar o campo "cd_venda" e declara-la como chave primaria

Alter table produto add primary key (cd_produto) -- vai pegar o campo "cd_produto" e declara-la como chave primaria

Alter table vendaProd add primary key (cd_venda, cd_produto) -- adicionará uma chave primária composta na tabela

-- Criar as chaves estrangeiras:
Alter table vendaProd add foreign key (cd_venda) References venda
    -- o campo da tabela vendaProd fará ligação à tabela venda
Alter table vendaProd add foreign key (cd_produto) References produto
    -- mesma coisa da anterior, mas fará ligação com a tabela produto