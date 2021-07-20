create database db_funcionarios;

use db_funcionarios;

create table tb_funcionarios(
id bigint auto_increment,
idade int,
salario decimal,
sexo varchar(255),
funcao varchar(255),
primary key(id)
);

insert into tb_funcionaries(nome, idade, salario, sexo) values ("Fabiano", 33, 1800.00, "Homi");
insert into tb_funcionaries(nome, idade, salario, sexo) values ("Clayton", 19, 1750.00, "Homem");
insert into tb_funcionaries(nome, idade, salario, sexo) values ("Roger", 40, 3600.00, "Masculino");
insert into tb_funcionaries(nome, idade, salario, sexo) values ("Pietro", 22, 2200.00, "Masculino");
insert into tb_funcionaries(nome, idade, salario, sexo) values ("Jacquin", 17, 800.00, "Homi");
insert into tb_funcionaries(nome, idade, salario, sexo) values ("Godofredo", 28, 1900.00, "Homi");
insert into tb_funcionaries(nome, idade, salario, sexo, funcao) values ("Fabiano", 33, 1800.00, "Homi", "Analista de análises");
insert into tb_funcionaries(nome, idade, salario, sexo, funcao) values ("Clayton", 19, 1750.00, "Homem", "Limpador de mesas");
insert into tb_funcionaries(nome, idade, salario, sexo, funcao) values ("Roger", 40, 3600.00, "Masculino", "Entregador de pizza");
insert into tb_funcionaries(nome, idade, salario, sexo, funcao) values ("Pietro", 22, 2200.00, "Masculino", "Analisador de analistas");
insert into tb_funcionaries(nome, idade, salario, sexo, funcao) values ("Jacquin", 17, 800.00, "Homi", "Chefe");
insert into tb_funcionaries(nome, idade, salario, sexo, funcao) values ("Godofredo", 28, 1900.00, "Homi", "Gestor");

select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;
update tb_funcionaries set salario = 1200.00 where id = 6;
select * from tb_funcionaries where id = 6;