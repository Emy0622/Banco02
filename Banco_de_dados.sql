/*Criando Banco de Dados*/
create database senai_carapicuiba;

/*Colocando o nosso banco em uso*/
use senai_carapicuiba;

/*Criando tabela*/
create table turmas 
(
id integer primary key not null auto_increment,
nome varchar (50) not null,
codigo int not null,
descricao varchar (100) not null,
sala varchar(10) not null
);
/* campo aceita numeros inteiros e é como uma chave primaria identificados que vai usar pra tudo,
 cada numero representa uma pessoanot ull nao pode estar nullo/vazio*/
 
 -- Inserindo dados na tabela
 insert into turmas (nome, codigo, descricao, sala) values

 /*Como é autocremente ele vai se auto criar*/
 ("Desenvolvimento de Sistemas", 12345, "É um otimo curso", "B10"),
 ("Execel", 12121, "Já foi um bom curso", "B01"),
 ("Power BI", 23561, "Parece ser um curso bom", "B03"),
 ("Banco de dados", 55555, "Esse é toppp", "B11"),
 ("Logistica", 33331, "Aaaafffff", "B04");
 
 -- selecionando todos os dados da tabela 
 select * from turmas;
 
 -- Selecionando objeto especifico
 select descricao, "B03" from turmas where nome="Power BI";
 
update turmas set nome="Informatica Basica" where id=4;
 
 select * from turmas;
 
 -- Selecionar os elementos da tabela menores que 3
select nome from turmas where id<3;

-- Pedir ajuda para o professor pra mudar o id

-- criou uma nova linha na tabela
alter table turmas 
add data varchar (10) not null;
  select * from turmas;
  
-- deleta linha da tabela  
delete from turmas where id=3;

-- para mostrar a tabela 
 select * from turmas;
 
 -- quer cod e nome do curso que a sala é igual a b11 e o id é maior que 2
 select nome, codigo from turmas where sala= "B11" and id>2;