﻿Create database Equipa
go
use Equipa
go
-- Tabelas
Create Table Equipamento(
	cd_Equipamento int not null,
	ds_Equipamento varchar(40))
go
Create Table Fornecedor(
	cd_Forn int not null,
	nm_Forn varchar(40),
	nm_Matriz varchar(30))
go
Create Table Custo(
	cd_Forn int not null,
	cd_Equipamento int not null,
	vl_Custo money)
go
-- Chaves Primarias
Alter Table Equipamento
	Add Primary Key (cd_Equipamento)
go
Alter Table Fornecedor
	Add Primary Key (cd_Forn)
go
-- Chaves Estrangeiras

go
-- Registros
Insert Into Equipamento
	values (2000,'Servidores Alpha'),
		(3000,'Servidores Intel'),
		(4020,'Placa de v�deo de 2 Gb'),
		(4040,'Placa de v�deo de 4 Gb'),
		(4100,'Placa bluetooth notebook'),
		(4200,'Placa bluetooth PC'),
		(4300,'Placa m�e Asus'),
		(4400,'Placa m�e gamer'),
		(4501,'Placa de rede NE 2000'),
		(4502,'Placa de rede DEC 305'),
		(4503,'Placa de rede 3com'),
		(4504,'Placa de rede SMC'),
		(5010,'Hard Disk 1 Tb'),
		(5020,'Hard Disk 2 Tb'),
		(5021,'Hard Disk 2 Tb SCSI'),
		(5040,'Hard Disk 4 Tb'),
		(6020,'Pente de mem�ria 8 Gb') 
go
Insert Into Fornecedor
	Values 	(001,'ISM','S�o Paulo'),
		(002,'M.A Inform�tica','Rio de Janeiro'),
		(003,'Decatron','Rio de Janeiro'),
		(004,'S&S Systems','Santos'),
		(005,'Enterdata','Santos'),
		(006,'Sisgraph','S�o Paulo'),
		(007,'Digital','Rio de Janeiro'),
		(008,'NetDb','Santos'),
		(009,'CenterSoft','Santos'),
		(010,'TrTec','Campinas')
go
Insert Into Custo
	Values 	(001,5010,130.00),
		(001,4040,100.00),
		(010,4501,60.00),
		(009,4400,200.00),
		(008,4200,230.00),
		(007,2000,80000.00),
		(006,3000,42000.00),
		(005,4502,150.00),
		(004,4020,90.00),
		(002,4020,85.00),
		(003,2000,65000.00),
		(001,6020,250.00),
		(004,4100,198.00),
		(005,4100,190.00),
		(008,4504,180.00)


