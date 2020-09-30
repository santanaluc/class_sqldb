-- 1 - Escreva uma instrução em SQL para alterar a tabela Custo de forma a incluir a chave primária nomeando a restrição para PK_Custo e as chaves
--estrangeiras, nomeando as restrições para FK_Equipamento e FK_Fornecedor
ALTER TABLE Custo ADD CONSTRAINT PK_Custo PRIMARY KEY (cd_forn, cd_equipamento)

ALTER TABLE Custo ADD CONSTRAINT FK_Equipamentos FOREIGN KEY (cd_equipamento) REFERENCES Equipamento

ALTER TABLE Custo ADD CONSTRAINT FK_Fornecedor FOREIGN KEY (cd_forn) REFERENCES Fornecedor 

-- 2 - Crie uma instrução para adicionar a coluna qt_Equipamento na tabela Custo, essa coluna deve aceitar números inferior a 20. Depois
--escreva outra instrução para remover a coluna qt_Equipamento da tabela Custo
ALTER TABLE Custo ADD qt_Equipamento int CONSTRAINT CK_qtEquipamento CHECK (qt_Equipamento < 20) 

ALTER TABLE Custo DROP CONSTRAINT CK_qtEquipamento

ALTER TABLE Custo DROP COLUMN qt_Equipamento

-- 3 - Renomear a coluna vl_Custo para vl_Equipamento
Exec sp_rename 'Custo.vl_Custo', 'vl_Equipamento'

-- 4 - Criar um comando para excluir da tabela Custo, os registros que possuem o código do fornecedor maior igual a 5 e que possuem o valor maior que
--150,00 
DELETE Custo WHERE cd_Forn >= 5 AND cd_Forn > 150

-- 5 - Alterar o valor dos equipamentos dos fornecedores 001, 005 e 008 para um aumento de 13,80% somente os valores maiores que R$
--120,00 e 15,20% para o valores menores iguais a R$ 120,00.
UPDATE Custo SET vl_Equipamento = vl_Equipamento * 1.138 WHERE vl_Equipamento > 120

UPDATE Custo SET vl_Equipamento = vl_Equipamento * 1.520 WHERE vl_Equipamento <= 120

-- 6 - Apresente o comando para gerar uma listagem com os códigos dos Equipamentos que possuem ao menos dois Fornecedores, mostrando a
--quantidade de Fornecedores por Equipamento
SELECT cd_Equipamento, COUNT(*) Total from Custo GROUP BY cd_Equipamento HAVING COUNT(*) > 1

-- 7 - Mostrar uma lista por código de fornecedor e a média dos valores dos equipamentos que atende
SELECT cd_forn, AVG(vl_Equipamento) FROM Custo GROUP BY cd_Forn

-- 8 - Mostrar uma consulta com os códigos e nomes dos equipamentos que possuem no nome a palavra “Hard Disk”SELECT cd_equipamento, ds_equipamento FROM Equipamento where ds_Equipamento like '%Hard Disk%'-- 9 - Crie uma condição para a tabela Custo, onde o não aceite valores menor que R$ 100,00. Utilize o nome CK_vlEquipamento para a restrição.ALTER TABLE Custo ADD CONSTRAINT CK_vlEquipamento CHECK (vl_Equipamento > 100)-- 10 - Destrua a chave primária da tabela Custo.ALTER TABLE Custo DROP CONSTRAINT PK_CustoALTER TABLE Custo DROP CONSTRAINT FK_EquipamentosALTER TABLE Custo DROP CONSTRAINT FK_Fornecedor