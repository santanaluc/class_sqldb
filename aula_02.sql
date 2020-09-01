-- Aula sobre Constraint
/*
	
*/

--Excluindo chave estrangeira(rela��o entre uma tabela e outra) da tabela vendaProd
alter table vendaProd drop constraint [FK__vendaProd__cd_ve__3A81B327] -- FK excluida

--Excluindo a chave prim�ria da tabela venda
alter table venda drop constraint [PK__venda__8C6EA002DD3156E2] -- PK exclu�da

--Recriando chave prim�ria da tabela venda
alter table venda add constraint PK_Venda Primary key (cd_venda) 

--Recriando o relacionamento entre a tabela venda e vendaProd
alter table vendaProd add constraint FK_Venda foreign key (cd_venda) references venda -- adicionou a chave estrangeira com o nome FK_Produto


-- Replicando para o outro relacionamento

--Excluir relacao entre as tabelas vendaProd e produto
alter table vendaProd drop constraint [FK__vendaProd__cd_pr__5CD6CB2B]

--Excluir primary key da tabela produto
alter table produto drop constraint [PK__produto__5D5AA9F3BDD4352F]

--Criando chave prim�ria da tabela produto
alter table produto add constraint PK_Produto primary key (cd_produto)

--Recriando relacionamento entre a tabela produto e vendaProd
alter table vendaProd add constraint FK_Produto foreign key (cd_produto) references produto


-- Adicionar um check na tabela produto para o vl_produto == adicionar uma restri��o 
alter table produto add constraint CK_vlProduto check (vl_produto > 5) -- j� com o nome definido


--Alterar a coluna vl_produto da tabela produto para not null
alter table produto alter column vl_produto money not null 