create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
	idcategoria bigint auto_increment,
    nomecategoria varchar(55) not null,
    especificacao varchar(55) not null,
    primary key(idcategoria)
);

create table tb_produtos(
	codigodebarras bigint not null,
    nome varchar(55) not null,
    descricao varchar(555),
    valor decimal(6,2) not null,
    prescricao varchar(500) not null,
    primary key(codigodebarras),
    idcategoria bigint,
    foreign key(idcategoria) references tb_categorias (idcategoria)
);

insert into tb_categorias(nomecategoria,especificacao) values("Cosmeticos","Para uso pessoal");
insert into tb_categorias(nomecategoria,especificacao) values("Genericos","Para uso do dia-a-dia");
insert into tb_categorias(nomecategoria,especificacao) values("Prescricao","Necessita de prescricao medica");
insert into tb_categorias(nomecategoria,especificacao) values("controlado","Para uso Controlado");
insert into tb_categorias(nomecategoria,especificacao) values("Variados","Itens váriados de nossa farmacia");

insert into tb_produtos(codigodebarras,nome,descricao,valor,prescricao,idcategoria) values(01,"Dipirona","Para dores de cabeça", 5.99, "Não precisa",2);
insert into tb_produtos(codigodebarras,nome,descricao,valor,prescricao,idcategoria) values(02,"Sinvastatina","Para alergias", 40.99, "Não precisa",2);
insert into tb_produtos(codigodebarras,nome,descricao,valor,prescricao,idcategoria) values(03,"Roacutan","Para Espinhas", 104.99, "Receita do médico",3);
insert into tb_produtos(codigodebarras,nome,descricao,valor,prescricao,idcategoria) values(04,"antidepressivo","Para depressão", 49.99, "Laudo médico",4);
insert into tb_produtos(codigodebarras,nome,descricao,valor,prescricao,idcategoria) values(05,"Monster","Energético", 9.99, "Não precisa",5);
insert into tb_produtos(codigodebarras,nome,descricao,valor,prescricao,idcategoria) values(06,"Snickers","Para dias ruins", 6.99, "Não precisa",5);
insert into tb_produtos(codigodebarras,nome,descricao,valor,prescricao,idcategoria) values(07,"Sabonete Facil","Skin care", 7.99, "Não precisa",1);
insert into tb_produtos(codigodebarras,nome,descricao,valor,prescricao,idcategoria) values(08,"Baton MAC","Cor vermelha", 249.99, "Não precisa",1);

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 5 AND 50;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categorias 
ON tb_produtos.idcategoria = tb_categorias.idcategoria;

select * from tb_produtos inner join tb_categorias
ON tb_produtos.idcategoria = tb_categorias.idcategoria AND tb_produtos.idcategoria = 1;