create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome_classe varchar(255),
Mana boolean,
arma varchar(255),
primary key (id)
);

insert into tb_classe (nome_classe, mana, arma) values ("Cavaleiro", false, "Espada");
insert into tb_classe (nome_classe, mana, arma) values ("Mago", true, "Cajado");
insert into tb_classe (nome_classe, mana, arma) values ("Arqueiro", true, "Arco");
insert into tb_classe (nome_classe, mana, arma) values ("Bardo", true, "Flauta");
insert into tb_classe (nome_classe, mana, arma) values ("Assassino", false, "Adaga");


create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
forca int,
poder int,
velocidade int,
destreza int,
resistencia int,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, forca, poder, velocidade, destreza, resistencia, classe_id) 
values ("Garen", 4000, 100, 300, 500, 8000, 1);

insert into tb_personagem (nome, forca, poder, velocidade, destreza, resistencia, classe_id) 
values ("Lux", 100, 8000, 150, 100, 150, 2);

insert into tb_personagem (nome, forca, poder, velocidade, destreza, resistencia, classe_id) 
values ("Drow Ranger", 15000, 100, 5000, 500, 100, 3);

insert into tb_personagem (nome, forca, poder, velocidade, destreza, resistencia, classe_id) 
values ("Venti", 50, 6000, 500, 600, 900, 4);

insert into tb_personagem (nome, forca, poder, velocidade, destreza, resistencia, classe_id) 
values ("Riki", 9000, 100, 9000, 1000, 1500, 5);

insert into tb_personagem (nome, forca, poder, velocidade, destreza, resistencia, classe_id) 
values ("BloodSeeker", 10000, 100, 15000, 1500, 1000, 5);

insert into tb_personagem (nome, forca, poder, velocidade, destreza, resistencia, classe_id) 
values ("Vayne", 10000, 100, 6000, 1500, 500, 3);

insert into tb_personagem (nome, forca, poder, velocidade, destreza, resistencia, classe_id) 
values ("Fizz", 2000, 10000, 900, 1000, 700, 2);

select * from tb_personagem where poder > 2000;

select * from tb_personagem where resistencia between 1000 and 2000;

select * from tb_personagem where nome like "c%";

select tb_classe.nome_classe as Classes, tb_classe.mana, tb_classe.arma as Armas from
tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_classe.nome_classe as Classes, tb_personagem.nome, tb_classe.mana, tb_classe.arma 
as Armas, tb_personagem.forca, tb_personagem.poder, tb_personagem.velocidade, tb_personagem.destreza,
tb_personagem.resistencia from  
tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id
 where tb_personagem.classe_id = 1;

