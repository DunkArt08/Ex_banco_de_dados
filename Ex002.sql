create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	idproduto bigint auto_increment not null,
    valor decimal(6,2) not null,
    nome varchar(55) not null,
    descricao varchar(255),
    datavalidade date,
    primary key(idproduto)
    );
    
insert into tb_produtos(valor,nome,descricao,datavalidade) values(1.99, "Molho de tomate", "Melhor molho da marca Mário e Luigi", "2026-10-12");
insert into tb_produtos(valor,nome,descricao,datavalidade) values(10.95, "Massa de pastel", "Melhor massa do mundo", "2025-10-12");
insert into tb_produtos(valor,nome,descricao,datavalidade) values(24.99, "Massa pronta de pizza", null,"2026-10-12");
insert into tb_produtos(valor,nome,descricao,datavalidade) values(49.99, "Panetone", "Panetone do seu Tony Hawk", "2024-12-30");
insert into tb_produtos(valor,nome,descricao,datavalidade) values(999.99, "Assadeira elétrica", "120W", null);
insert into tb_produtos(valor,nome,descricao,datavalidade) values(2000.50, "Forno de assar pizza", "Tamanho médio", null);
insert into tb_produtos(valor,nome,descricao,datavalidade) values(735, "Batedor de massa", "Bate até massa de pão caseiro", null);
insert into tb_produtos(valor,nome,descricao,datavalidade) values(849.99, "Camiseta Rara de colecionador", "Produto Limitado!", null);

select * from tb_produtos where valor > 500;

select * from tb_produtos where valor < 500;

update tb_produtos set valor = 599.99 where idproduto = 1;