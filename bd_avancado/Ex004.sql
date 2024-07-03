create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table  tb_categorias(
	nomecategoria varchar(55) not null,
    descricao varchar(555) not null,
    origem varchar(500),
    primary key(nomecategoria)
);

create table tb_produtos(
	codigodebarras bigint not null,
    nome varchar(55) not null,
    valor decimal(6,2) not null,
    animal varchar(55),
    nomecategoria varchar(55) not null,
    primary key(codigodebarras),
    foreign key(nomecategoria) references tb_categorias(nomecategoria)
);

insert into tb_categorias(nomecategoria,descricao,origem) values("Bovinos","Carnes comuns para churrasco", "BOI");
insert into tb_categorias(nomecategoria,descricao,origem) values("Suinos","Carnes comuns para churrasco", "Porco");
insert into tb_categorias(nomecategoria,descricao,origem) values("Aves","Carnes comuns para churrasco e dia-a-dia", "AVES");
insert into tb_categorias(nomecategoria,descricao,origem) values("Soja","Carnes para veganos", "Vegetal");
insert into tb_categorias(nomecategoria,descricao,origem) values("Raras","Carnes raras", "Diversas");

insert into tb_produtos(codigodebarras,nome,valor,animal,nomecategoria) values(01,"Picanha", 99.99, "BOI BOM","bovinos");
insert into tb_produtos(codigodebarras,nome,valor,animal,nomecategoria) values(02,"Maminha", 149.99, "BOI BOM","bovinos");
insert into tb_produtos(codigodebarras,nome,valor,animal,nomecategoria) values(03,"pé de porco",49.99, "PORCO BOM","Suinos");
insert into tb_produtos(codigodebarras,nome,valor,animal,nomecategoria) values(04,"Peito de Frango", 19.99, "GALINHA BOA","Aves");
insert into tb_produtos(codigodebarras,nome,valor,animal,nomecategoria) values(05,"Picanha de Soja", 399.99, "SOJA BOA","Soja");
insert into tb_produtos(codigodebarras,nome,valor,animal,nomecategoria) values(06,"Picanha Premier", 999.99, "BOI EXCELENTE","Raras");
insert into tb_produtos(codigodebarras,nome,valor,animal,nomecategoria) values(07,"Pé de frango", 4.99, "Galo BOM","Aves");
insert into tb_produtos(codigodebarras,nome,valor,animal,nomecategoria) values(08,"Orelha de porco", 39.99, "porco BOM","Suinos");

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 50 AND 150;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias
ON tb_produtos.nomecategoria = tb_categorias.nomecategoria;

select * from tb_produtos inner join tb_categorias
ON tb_categorias.nomecategoria like "%bovinos%";