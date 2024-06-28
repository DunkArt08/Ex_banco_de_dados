create database db_escola;

use db_escola;

create table tb_estudantes(
	numeromatricula bigint auto_increment not null,
	nome varchar(55) not null,
    nota decimal(3,1) not null,
    turma varchar(3) not null,
    anomatricula date not null,
    primary key(numeromatricula)
);

drop table tb_estudantes;

insert into tb_estudantes(nome,nota,turma,anomatricula) values("Luffy", 7.5, "2A", "1997-10-11");
insert into tb_estudantes(nome,nota,turma,anomatricula) values("Ja Morant", 10.0, "3A", "2000-12-11");
insert into tb_estudantes(nome,nota,turma,anomatricula) values("Dom Pedro segundo", 9.5, "3A", "1507-01-11");
insert into tb_estudantes(nome,nota,turma,anomatricula) values("Daniel", 10, "3D", "2015-7-20");
insert into tb_estudantes(nome,nota,turma,anomatricula) values("Ayrton Senna", 5.5, "1A", "1997-10-11");
insert into tb_estudantes(nome,nota,turma,anomatricula) values("Hamilton", 4, "9A", "2020-10-11");
insert into tb_estudantes(nome,nota,turma,anomatricula) values("Lebron James", 4, "1A", "1990-12-30");
insert into tb_estudantes(nome,nota,turma,anomatricula) values("Cleyton", 1.0, "6A", "2004-10-11");

select * from tb_estudantes;

SELECT * from tb_estudantes where nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

update tb_estudantes set nota = 7.5 where numeromatricula = 3;
