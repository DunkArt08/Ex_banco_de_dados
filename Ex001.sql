create database db_rh;

use db_rh;

drop table tb_colaborador;

create table tb_colaborador(
	cpf varchar(11) not null,
    nome varchar(55) not null,
    salario decimal(6,2) not null,
    cargo varchar(30) not null,
    ativo boolean not null,
    primary key(cpf)
    );
    
insert into tb_colaborador(cpf,nome,salario,cargo,ativo) values("12345678901" , "Antônio do Pneu", 1555.99, "Mecanico", true);
insert into tb_colaborador(cpf,nome,salario,cargo,ativo) values("12345678902" , "Son Goku", 1000.99, "Lutador", true);
insert into tb_colaborador(cpf,nome,salario,cargo,ativo) values("12345678903" , "Tracer", 999.99, "Heroina", true);
insert into tb_colaborador(cpf,nome,salario,cargo,ativo) values("12345678904" , "LeBron James", 5000.00, "Atleta", true);
insert into tb_colaborador(cpf,nome,salario,cargo,ativo) values("12345678905" , "Max Verstappen", 2500.95, "Piloto", true);

select nome, salario from tb_colaborador WHERE salario > 2000.00;
select nome, salario from tb_colaborador WHERE salario < 2000.00;

update tb_colaborador set salario = 2500.00 where cpf = "12345678902";

    
