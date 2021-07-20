create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
idade int,
serie int,
sala int,
nota int,
sexo varchar(255),
presenca int,
ra bigint,
primary key(id)
);

insert into tb_estudantes(nome, idade, serie, sala, nota, sexo, presenca, ra) values ("José Roberto", 21, 6, 3, 2, "Máquina de combate", 100, 984327483);
insert into tb_estudantes(nome, idade, serie, sala, nota, sexo, presenca, ra) values ("Carlos Alberto", 16, 2, 3, 8, "Homemm com dois M", 86, 372863234);
insert into tb_estudantes(nome, idade, serie, sala, nota, sexo, presenca, ra) values ("Vinicius", 20, 3, 1, 8, "Malandro", 99, 209382908);
insert into tb_estudantes(nome, idade, serie, sala, nota, sexo, presenca, ra) values ("Amanddda", 13, 5, 1, 3, "Gata de rua", 50, 4839784937);

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 1 where id = 4;