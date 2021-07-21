create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(32),
tipoSabor varchar(72),
borda boolean,
primary key (id)
);

insert into tb_categoria (tamanho, tipoSabor, borda) values ("Média", "Salgada", true);
insert into tb_categoria (tamanho, tipoSabor, borda) values ("Broto", "Doce", false);
insert into tb_categoria (tamanho, tipoSabor, borda) values ("Broto", "Salgada", true);
insert into tb_categoria (tamanho, tipoSabor, borda) values ("Média", "Doce", true);
insert into tb_categoria (tamanho, tipoSabor, borda) values ("Média", "Salgada/Doce", false);

create table tb_pizza(
id bigint auto_increment,
nome varchar(82),
sabor varchar(92),
preco decimal (5,2),
saborBorda varchar(42),
azeitona boolean,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, sabor, preco, saborBorda, azeitona, categoria_id) values ("Toscana", "Calabresa e Mussarela", 36.90, "Catupiry", true, 1);  

insert into tb_pizza (nome, sabor, preco, saborBorda, azeitona, categoria_id) values ("Portuguesa", "Presunto, ovo, cebola e mussarela", 36.90, "Catupiry", true, 1); 

insert into tb_pizza (nome, sabor, preco, saborBorda, azeitona, categoria_id) values ("Caipira", "Frango, catupiry, milho e bacon", 39.90, "Cheddar", true, 3);  

insert into tb_pizza (nome, sabor, preco, saborBorda, azeitona, categoria_id) values ("Calabresa/Mussarela", "Mussarela e Calabresa", 31.90, "Catupiry", true, 1); 

insert into tb_pizza (nome, sabor, preco, saborBorda, azeitona, categoria_id) values ("Carne Seca", "Carne seca e catupiry", 42.90, "Catupiry", true, 1); 

insert into tb_pizza (nome, sabor, preco, saborBorda, azeitona, categoria_id) values ("Quatro Queijos", "Mussarela, provolone, catupiry e gorgonzola", 41.90, "Cheddar", true, 1);

insert into tb_pizza (nome, sabor, preco, saborBorda, azeitona, categoria_id) values ("Bananinha", "Banana, leite condensado e canela", 30.90, "Chocolate", false, 4); 

insert into tb_pizza (nome, sabor, preco, saborBorda, azeitona, categoria_id) values ("Romeu e Julieta", "Mussarela ou catupiry e goiabada", 35.90, "Chocolate", false, 4);   

select * from tb_pizza where preco > 38.00;
 
select * from tb_pizza where preco between 29.00 and 60.00;
 
select * from tb_pizza where nome like "c%";
 
select tb_pizza.nome, tb_categoria.tamanho, tb_pizza.sabor, tb_categoria.tipoSabor, tb_categoria.borda, tb_pizza.saborBorda, 
tb_pizza.azeitona from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_pizza.categoria_id = 4;