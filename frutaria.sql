create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Oleaginosas",true);
insert into tb_categoria (descricao, ativo) values ("Doces",true);
insert into tb_categoria (descricao, ativo) values ("Cítricas",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Maçâ",40.00,30, "2021-11-07", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Banana",20.00,30, "2021-11-08", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Laranja",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Limão",30.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Melancia",60.00,30, "2021-09-07", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Melão",20.00,30, "2021-11-10", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Castanha-do-Pará",25.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Nozes",20.00,30, "2021-11-07", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Mexirica",18.00,30, "2021-11-21", 3);

select * from tb_produtos;

select * from tb_produtos where nome like "C%";

select * from tb_produtos where preco between 3.00 and 60.00;

select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_categoria.descricao as Categoria
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;