create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	idcategoria bigint not null,
    nomecategoria varchar(55) not null,
    especificacoes varchar(555) not null,
    primary key(idcategoria)
);

create table tb_pizzas(
		idpizza bigint auto_increment,
        nomepizza varchar(55) not null,
        sabor varchar(55) not null,
        valor decimal(6,2) not null,
        tamanho varchar(55) not null,
        primary key(idpizza),
        idcategoria bigint,
        foreign key(idcategoria) REFERENCES tb_categorias (idcategoria)
        );
        
insert into tb_categorias(idcategoria,nomecategoria,especificacoes) values(1,"Brasileiras","Pizzas criadas ou editadas com o sabor brasileiro!");
insert into tb_categorias(idcategoria,nomecategoria,especificacoes) values(2,"Portuguêsas","Pizzas criadas em portugal, com sua variedade de recheios e sabores");
insert into tb_categorias(idcategoria,nomecategoria,especificacoes) values(3,"Padrões","Pizzas mais comuns e que todo mundo conhece!");
insert into tb_categorias(idcategoria,nomecategoria,especificacoes) values(4,"Doces","Pizzas para os chocolatras de plantão!");
insert into tb_categorias(idcategoria,nomecategoria,especificacoes) values(5,"personalizada","O Cliente pediu um sabor que não temos em nossas lojas, mas com certeza podemos faze-lo!");

insert into tb_pizzas(nomepizza,sabor,valor,tamanho,idcategoria) values("Mussarela","Queijo",44.99,"Média",3);
insert into tb_pizzas(nomepizza,sabor,valor,tamanho,idcategoria) values("Calabresa","Salgada",14.99,"Pequena",3);
insert into tb_pizzas(nomepizza,sabor,valor,tamanho,idcategoria) values("Portuguesa","salgada, com ovo, brocolis,cebola",79.99,"Grande",2);
insert into tb_pizzas(nomepizza,sabor,valor,tamanho,idcategoria) values("Pizza dobradinha","Personalizada com carne bovina, e cebelas fritas",99.99,"Grande",5);
insert into tb_pizzas(nomepizza,sabor,valor,tamanho,idcategoria) values("Romeo e Julieta","Queijo com Goiabada",19.99,"Média",4);
insert into tb_pizzas(nomepizza,sabor,valor,tamanho,idcategoria) values("Banoff","Banana com doce de leite",19.99,"Média",4);
insert into tb_pizzas(nomepizza,sabor,valor,tamanho,idcategoria) values("Strogonoff","Frango, com creme de leite, e mais misturas",24.99,"Pequena",1);
insert into tb_pizzas(nomepizza,sabor,valor,tamanho,idcategoria) values("Churrasco","Churrasco com diversas carnes bovinas",99.99,"Média",1);

select * from tb_pizzas where valor > 45;

select * from tb_pizzas  where valor between 50 AND 100;

select * from tb_pizzas where nomepizza like "%M%";

select * from tb_pizzas inner join tb_categorias
ON tb_pizzas.idcategoria = tb_categorias.idcategoria;

select * from tb_pizzas inner join tb_categorias
ON tb_pizzas.idcategoria = tb_categorias.idcategoria AND tb_pizzas.idcategoria = 1;

