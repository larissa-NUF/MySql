-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE redator (
email varchar(255),
rua varchar(255),
logradouro varchar(255),
complemento varchar(255),
cidade varchar(255),
cep varchar(255),
num varchar(255),
uf varchar(255),
bairro varchar(255),
rg varchar(255),
rm varchar(255),
codRedator int PRIMARY KEY,
nasDia int,
dasMes int,
nasAno int,
sobrenome varchar(255),
nome varchar(255),
cpf varchar(255),
telFixo varchar(255),
telCel varchar(255),
telRecado varchar(255),
telOutro varchar(255),
codAnoSala int
)

CREATE TABLE anoSala (
sala varchar(255),
ano varchar(255),
codAnoSala int PRIMARY KEY
)

CREATE TABLE funcao (
funcao varchar(255),
codFuncao int PRIMARY KEY
)

CREATE TABLE categoria (
codCategoria int PRIMARY KEY,
varchar(255) Texto(1)
)

CREATE TABLE impressao (
mes int,
dia int,
ano int,
codImpressao int PRIMARY KEY,
qtde int,
Atributo_3 Texto(1),
lote varchar(255),
codedicao int
)

CREATE TABLE funcionario (
rm varchar(255),
logradouro varchar(255),
complemento varchar(255),
cidade varchar(255),
cep varchar(255),
num varchar(255),
uf varchar(255),
bairro varchar(255),
rua varchar(255),
nasDia int,
dasMes int,
nasAno int,
cpf varchar(255),
email varchar(255),
sobrenome varchar(255),
nome varchar(255),
telFixo varchar(255),
telCel varchar(255),
telRecado varchar(255),
telOutro varchar(255),
rg varchar(255),
codFuncionario int PRIMARY KEY,
codAnoSala int,
codFuncao int,
FOREIGN KEY(codAnoSala) REFERENCES anoSala (codAnoSala),
FOREIGN KEY(codFuncao) REFERENCES funcao (codFuncao)
)

CREATE TABLE materia (
codMateria int PRIMARY KEY,
titulo varchar(255),
texto varchar(255),
ano int,
mes int,
-- Erro: nome do campo duplicado nesta tabela!
ano int,
codRedator int,
codedicao int,
codCategoria int,
FOREIGN KEY(codRedator) REFERENCES redator (codRedator),
FOREIGN KEY(codCategoria) REFERENCES categoria (codCategoria)
)

CREATE TABLE jornal (
dia int,
ano int,
mes int,
nome varchar(255),
edicao varchar(255),
codedicao int PRIMARY KEY
)

CREATE TABLE trabalha (
codFuncionario int,
codedicao int,
FOREIGN KEY(codFuncionario) REFERENCES funcionario (codFuncionario),
FOREIGN KEY(codedicao) REFERENCES jornal (codedicao)
)

ALTER TABLE redator ADD FOREIGN KEY(codAnoSala) REFERENCES anoSala (codAnoSala)
ALTER TABLE impressao ADD FOREIGN KEY(codedicao) REFERENCES jornal (codedicao)
ALTER TABLE materia ADD FOREIGN KEY(codedicao) REFERENCES jornal (codedicao)
