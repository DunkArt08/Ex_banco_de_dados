create database  db_curso_da_minha_vida;

use  db_curso_da_minha_vida;

create table tb_categorias(
	idcategoria bigint auto_increment,
    nomecategoria varchar(55) not null,
    dificuldade varchar(55) not null,
    primary key(idcategoria)
);

create table tb_produtos(
	codigo bigint not null,
    nome varchar(55) not null,
    descricao varchar(555),
    valor decimal(6,2) not null,
    area varchar(500) not null,
    primary key(codigo),
    idcategoria bigint,
    foreign key(idcategoria) references tb_categorias (idcategoria)
);

insert into tb_categorias(nomecategoria,dificuldade) values("Front","Fácil/Médio");
insert into tb_categorias(nomecategoria,dificuldade) values("Back","Fácil/Médio");
insert into tb_categorias(nomecategoria,dificuldade) values("Android","Dificil");
insert into tb_categorias(nomecategoria,dificuldade) values("Banco de dados","Fácil");
insert into tb_categorias(nomecategoria,dificuldade) values("Internet","Neutro");

insert into tb_produtos(codigo,nome,descricao,valor,area,idcategoria) values(01,"React","Curso de React facin", 799.99, "DEV",1);
insert into tb_produtos(codigo,nome,descricao,valor,area,idcategoria) values(02,"Javão da massa","Java puro sem massagem", 999.99, "DEV RAIZ",2);
insert into tb_produtos(codigo,nome,descricao,valor,area,idcategoria) values(03,"Kotlin","Programar em android e ficar rico", 599.99, "Dev rico",3);
insert into tb_produtos(codigo,nome,descricao,valor,area,idcategoria) values(04,"MySQL","Ficar rico com dados", 149.99, "Analista",4);
insert into tb_produtos(codigo,nome,descricao,valor,area,idcategoria) values(05,"HTTPS","Como funciona os protocolos da internet", 699.99, "WEB",5);
insert into tb_produtos(codigo,nome,descricao,valor,area,idcategoria) values(06,"Angular","Back", 899.99, "DEV",2);
insert into tb_produtos(codigo,nome,descricao,valor,area,idcategoria) values(07,"Google Cloud","Nuvem", 99.99, "Cloud",5);
insert into tb_produtos(codigo,nome,descricao,valor,area,idcategoria) values(08,"Java para android","Ficar rico com java", 1499.99, "DEV",3);

select * from tb_produtos where valor > 500;

select * from tb_produtos where valor between 600 AND 1000;

select * from tb_produtos where nome like "%J%";

select * from tb_produtos inner join tb_categorias 
ON tb_produtos.idcategoria = tb_categorias.idcategoria;

select * from tb_produtos inner join tb_categorias
ON tb_produtos.idcategoria = tb_categorias.idcategoria AND tb_produtos.idcategoria = 2;