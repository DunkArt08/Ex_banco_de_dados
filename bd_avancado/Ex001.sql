create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagens(
	idpersonagem bigint auto_increment,
    nome varchar(55) not null,
    poderataque decimal(6,2) not null,
    poderdefesa decimal(6,2) not null,
    primary key(idpersonagem)
    );

create table tb_classes(
	idclasses bigint auto_increment,
    nomeclasse varchar(75) not null,
    descricaoclasse varchar(555) not null,
    estilocombate varchar(55) not null,
    primary key(idclasses)
    );
    
alter table tb_personagens ADD idclasses BIGINT;

ALTER TABLE tb_personagens ADD constraint fk_personagens_classes
FOREIGN KEY (idclasses) references tb_classes(idclasses);

select * from tb_personagens;

insert into tb_classes(nomeclasse,descricaoclasse,estilocombate) values("Guerreiro", "Com armaduras de placas, uma espada e um escudo o guerreiro é o melhor heroi para um combate corpo-a-corpo","Curto alcance");
insert into tb_classes(nomeclasse,descricaoclasse,estilocombate) values("Arqueiro","Com uma armadura de couro e um longo arco, ele é um lutador que mira e acerta seus alvos sem piedade","Média/Longo alcance");
insert into tb_classes(nomeclasse,descricaoclasse,estilocombate) values("Mago","Usando magias livros e grimórios, ele pode usar qualquer feitiço, desde que tenha condição para faze-lo","médio/longo alcance");
insert into tb_classes(nomeclasse,descricaoclasse,estilocombate) values("Assasino","Pouca vida, porém muito dano, um paladino pode se isgueirar pelas sombras para eliminar seu oponente","Curto/médio alcance");
insert into tb_classes(nomeclasse,descricaoclasse,estilocombate) values("Paladino","Com um escudo forte e uma moral elevada, um paladino consegue aguentar qualquer tipo de dano, ganhando a batalha na resistencia","curto alcance");
    
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Oar's",2700.0,3000.00,1);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Oryx",3000.00,2700.00,1);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Avalon",2700.00,2700.00,5);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Ophelia",3500,1500.0,3);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Lyra",3500.00,2000.00,3);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Clarissa",3500.00,1500.00,3);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Everion",9999.50,9999.47,2);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Taur",9999,9999,5);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("HugoYei",1500,1500,5);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Kame",1460,1657,5);
insert into tb_personagens(nome,poderataque,poderdefesa,idclasses) values("Cleitin",1999,1835,5);


select * from tb_personagens where poderataque > 2000;
select * from tb_personagens where poderataque between 1000 and 2000.00;

select * from tb_personagens where nome LIKE "%C%";

select * from tb_personagens INNER JOIN tb_classes
ON tb_personagens.idclasses = tb_classes.idclasses;

select * from tb_personagens INNER JOIN tb_classes WHERE tb_classes.idclasses = 1 AND tb_personagens.idclasses = 1;