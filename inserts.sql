use OFICINA;

INSERT INTO Cliente (id, Nome, Telefone, Email)
 VALUES (1,'Manoel Osvaldo Paulo da Mota', '(74)9951.9880', 'manoel@osvaldo.com'),
		(2,'Nicole Jéssica', '(80)58050.4239', 'nicole@jessica.com'),
		(3,'Liz Mariana Mirella', '(36)91132.0658', 'liz@mariana.com'),
		(4,'Luan Calebe Ramos', '(21)40934-6790', 'luan@calebe.com'),
		(5,'Manoel Osvaldo Paulo', '(33)75364-5000', 'manoel@osvaldo.com');

INSERT INTO StatusOrdemServico (id,Identificacao)
VALUES (1,'ABERTO'),
	   (2,'EM ANDAMENTO'),
       (3,'EM PAUSA'),
       (4,'CANCELADO'),
	   (5,'CONCLUÍDO');
INSERT INTO OrdemServico (id,idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) 
VALUES (1,1, 1, '0000000001', '2022-09-09', null, 250, '2022-09-08', null),
	   (2,2, 1, '0000000002', '2022-09-10', null, 123, '2022-09-08', null);

INSERT INTO Marca (id,Identificacao) 
VALUES (1,'Ford'),
	   (2,'Renault'),
       (3,'Volkswagen'),
       (4,'Fiat');

INSERT INTO Modelo (id,idMarca, Identificacao, Ano)
 VALUES (1,1, 'KA', 2015),
	    (2,1, 'Fiesta', 2013),
		(3,2, 'Gol', 2015),
		(4,3, 'Fiat', 2010);

INSERT INTO Equipe (id,Identificacao)
VALUES (1,'Borracharia'),
	   (2,'Pintura'),
	   (3,'Funilaria'),
       (4,'Mecanica'),
	   (5,'Elétrica');

INSERT INTO StatusServico (id,Identificacao) 
 VALUES (1,'A FAZER'),
		(2,'FAZENDO'),
		(3,'AGUARANDO PEÇA'),
		(4,'CANCELADO'),
		(5,'CONCLUÍDO');

INSERT INTO TabelaServico (id,Identificacao, ValorTabela) 
 VALUES (1,'Pintura geral', 2000),
		(2,'Troca do motor', 1500),
		(3,'Troca de lampada do farol', 30),
		(4,'Troca de pneu', 50),
		(5,'Alinhamento', 50);

INSERT INTO Veiculo (id,idOrdemServico, idModelo, Cor, Placa)
 VALUES (1,1, 1, 250025, 2015),
		(2,1,2, 250025, 2013);
        
INSERT INTO Servico (id,idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino)
 VALUES (1,1, 1, 1, 1, 'Trocar Pneu', 0, 50, '2022-09-10', '2022-09-10'),
		(2,2, 2, 2, 2, 'Instalar som', 1500, 250, '2022-09-10', '2022-09-10');
 

INSERT INTO Especialidade (id,Identificacao) 
 VALUES (1,'Trocar Pneu'),
		(2,'Pintar'),
		(3,'Lixar'),
		(4,'Mecanica Hidráulico'),
		(5,'Instalar som');

INSERT INTO Mecanico (id,idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) 
 VALUES (1,1, 1, 'JÃO', 'João da Silva', '00000-000', 'Rua..', 'S/N', null),
		(2,2, 2, 'ZeH', 'José da Silva', '00000-000', 'Rua..', 'S/N', null),
		(3,3, 3, 'Bora Bill!', 'Bora Bill!', '00000-000', 'Rua..', 'S/N', null),
		(4,4, 4, 'Fil do Bill', 'Fil do Bill', '00000-000', 'Rua..', 'S/N', null);

INSERT INTO Peca (id,Identificacao, ValorReferencia) 
 VALUES (1,'Tinta Galão', 150),
		(2,'Óloe 1lt', 40),
		(3,'Lâmpada do farol', 30),
		(4,'Pneu', 450),
		(5,'Filtro de óleo', 50);

INSERT INTO ServicoPeca (id,idServico, idPeca, ValorPeca) 
 VALUES (1,1, 1, 50),
		(2,2, 2, 50);
		
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (4, 4, 50);