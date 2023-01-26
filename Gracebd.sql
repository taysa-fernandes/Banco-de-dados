create database grace;
use grace;
create table if not exists evento(
idevento int not null auto_increment primary key,
estado varchar(20),
periodo int,
tipo varchar(20),
nome varchar(45),
dia date,
horafim time,
horainicio time,
frequencia varchar(20),
assunto varchar(45),
usuariochave int,
disciplinachave int
)default charset= utf8;
create table if not exists disciplina(
iddisciplina int not null auto_increment primary key,
nome varchar(45),
assunto varchar(45)
)default charset= utf8;
alter table evento add foreign key(disciplinachave) references disciplina(iddisciplina);
CREATE TABLE estudante(
idestudante int not null auto_increment primary key,
nome varchar(45),
senha varchar(45)
)default charset=utf8;
alter table evento add column estudantechave int;
alter table evento add foreign key(estudantechave) references estudante (idestudante);
alter table evento add column disciplina varchar(45);
alter table evento add column hora varchar(45);
alter table evento add column data varchar(45);
alter table evento add column status varchar(45);
alter table estudante add column matricula int;
alter table evento add column iddisciplina int;

