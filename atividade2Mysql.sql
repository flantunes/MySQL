create database db_produtos;

use db_produtos;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
cor varchar(255),
preco decimal,
Kilometragem decimal,
portas int,
quantidade int,
automatico boolean,
primary key (id)
);

insert into tb_produtos(nome, marca, cor, preco, kilometragem, portas, quantidade, automatico) values ("Uno", "Fiat", "Branco", 20000.00, 0.0, 4, 1, false);
insert into tb_produtos(nome, marca, cor, preco, kilometragem, portas, quantidade, automatico) values ("Grand Siena", "Fiat", "Preto", 40000.00, 0.0, 4, 5, true);
insert into tb_produtos(nome, marca, cor, preco, kilometragem, portas, quantidade, automatico) values ("Uno Way", "Fiat", "Prata", 50000.00, 0.0, 4, 2, true);
insert into tb_produtos(nome, marca, cor, preco, kilometragem, portas, quantidade, automatico) values ("Spin", "Chevrolet", "Preto", 400.00, 0.0, 4, 7, true);

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 70000.00 where id = 4;

select * from tb_produtos;