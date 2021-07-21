create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;


create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
fabricante varchar(255) not null,
estoque boolean,
primary key (id)
);

insert into tb_categoria (descricao, fabricante, estoque) values ("Celular", "Apple", true);
insert into tb_categoria (descricao, fabricante, estoque) values ("Notebook", "Apple", true);
insert into tb_categoria (descricao, fabricante, estoque) values ("Relógio", "Apple", false);
insert into tb_categoria (descricao, fabricante, estoque) values ("Tablet", "Apple", false);
insert into tb_categoria (descricao, fabricante, estoque) values ("Acessórios", "Apple", true);
insert into tb_categoria (descricao, fabricante, estoque) values ("Fones", "Apple", true);

select * from tb_categoria;

create table ecommerce_loja(
id bigint auto_increment,
nome varchar(255),
quantidade int,
preco decimal,
marca varchar(255),
modelo varchar(255),
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into ecommerce_loja(nome, quantidade, preco, marca, modelo, categoria_id) values ("Celular", "12", "4500", "Apple", "Iphone 11", 1);
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo, categoria_id) values ("Celular", "9", "8500", "Apple", "Iphone 12 Pro Max", 1);
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo, categoria_id) values ("Relógio", "15", "2000", "Apple", "Apple Watch Serie 3", 3);
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo, categoria_id) values ("Macbook", "7", "19700", "Apple", "MacBook Pro", 2);
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo, categoria_id) values ("Ipad", "3", "10000", "Apple", "Ipad Pro", 4);
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo, categoria_id) values ("Fone", "13", "2200", "Apple", "AirPods Pro", 6);
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo, categoria_id) values ("Capas", "19", "200", "Apple", "Iphone 11", 5);
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo, categoria_id) values ("Capas", "19", "200", "Apple", "Iphone 12 Pro Max", 5);
insert into ecommerce_loja(nome, quantidade, preco, marca, modelo, categoria_id) values ("Película", "36", "3.99", "Apple", "Iphone 12 Pro Max", 5);

select * from ecommerce_loja;

select * from ecommerce_loja where preco > 50.00;

select * from ecommerce_loja where preco between 3.00 and 60.00;

select * from ecommerce_loja where nome like "C%";

select ecommerce_loja.nome, ecommerce_loja.preco, tb_categoria.descricao as Descricao
from ecommerce_loja inner join tb_categoria on tb_categoria.id = ecommerce_loja.categoria_id;

select ecommerce_loja.nome, tb_categoria.descricao as Descricao
from ecommerce_loja inner join tb_categoria on tb_categoria.id = ecommerce_loja.categoria_id;