create database  db_construindo_vidas;

use  db_construindo_vidas;

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
    tamanho varchar(500) not null,
    primary key(codigodebarras),
    idcategoria bigint,
    foreign key(idcategoria) references tb_categorias (idcategoria)
);

insert into tb_categorias(nomecategoria,especificacao) values("Hidraulico","Para encanações");
insert into tb_categorias(nomecategoria,especificacao) values("Cimento","Para construção");
insert into tb_categorias(nomecategoria,especificacao) values("Ferramentas","Para auxiliar no trabalho");
insert into tb_categorias(nomecategoria,especificacao) values("eletricos","Itens eletricos");
insert into tb_categorias(nomecategoria,especificacao) values("transporte","Para fazer o transporte de ferramentas ou materiais");

insert into tb_produtos(codigodebarras,nome,descricao,valor,tamanho,idcategoria) values(01,"Cano","Cano PVC", 79.99, "Grande",1);
insert into tb_produtos(codigodebarras,nome,descricao,valor,tamanho,idcategoria) values(02,"Batedor de massa","Para bater massas", 499.99, "Grande",2);
insert into tb_produtos(codigodebarras,nome,descricao,valor,tamanho,idcategoria) values(03,"Martelo","Para martelar", 104.99, "Pequeno",3);
insert into tb_produtos(codigodebarras,nome,descricao,valor,tamanho,idcategoria) values(04,"Furadeira","Automatizar", 149.99, "Média",4);
insert into tb_produtos(codigodebarras,nome,descricao,valor,tamanho,idcategoria) values(05,"Carrinho de cimento","transportar cimento", 699.99, "Grande",5);
insert into tb_produtos(codigodebarras,nome,descricao,valor,tamanho,idcategoria) values(06,"Empilhadeira","Para dias ruins", 899.99, "Grande",5);
insert into tb_produtos(codigodebarras,nome,descricao,valor,tamanho,idcategoria) values(07,"Saco de cimento","5Kg", 99.99, "Grande",2);
insert into tb_produtos(codigodebarras,nome,descricao,valor,tamanho,idcategoria) values(08,"Pá","Para cavar", 149.99, "Média",3);

select * from tb_produtos where valor > 100;

select * from tb_produtos where valor between 70 AND 150;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categorias 
ON tb_produtos.idcategoria = tb_categorias.idcategoria;

select * from tb_produtos inner join tb_categorias
ON tb_produtos.idcategoria = tb_categorias.idcategoria AND tb_produtos.idcategoria = 2;