create database escola;

show databases; -- mostra os bancos de dados /* */

use escola;

create table aluno (
id_aluno int primary key auto_increment,
nome varchar(120) not null,
dt_nascimento date not null
);

create table curso (
id_curso int primary key auto_increment,
nomecurso varchar(80) not null,
periodo int not null
);


create table aluno_curso (
id_alucurso int primary key auto_increment,
fk_curso_id int,
fk_aluno_id int
);

-- questao 11
create table sala(
id_sala int primary key auto_increment,
numero_sala int,
mesas int
);

show tables;

desc aluno_curso;
alter table aluno_curso add constraint fk_aluno_curso
foreign key (fk_curso_id)
references curso(id_curso)
on delete cascade;

desc aluno_curso;	
alter table aluno_curso add constraint fk_curso_aluno
foreign key (fk_aluno_id)
references aluno(id_aluno)
on delete cascade;
desc aluno_curso;

alter table aluno
add column email varchar(120) not null;

-- questao 5
alter table aluno
add column cpf varchar(15) not null;
-- questao 5
alter table aluno 
add column nacionalidade varchar(25);

alter table curso
add column tipo_aula varchar (15);

desc aluno;


alter table curso
add column sala varchar (20);


insert into curso (nomecurso, periodo, sala) values('banco_de_dados', '2', 'Sala10');
insert into curso (nomecurso, periodo, sala) values('mecanico', '5', 'Sala20');
insert into curso (nomecurso, periodo, sala) values('gastronomia', '4', 'Sala01');
insert into curso (nomecurso, periodo, sala) values('marcenaria', '3', 'Sala19');
insert into curso (nomecurso, periodo, sala) values('autoconhecimentos', '1', 'Sala03');



insert into aluno (nome, dt_nascimento, email) values ('joao', '2002-10-17', 'joao@email.com');
insert into aluno (nome, email, dt_nasciento) values ('jose', 'email@123', '2000-10-12');
insert into aluno (nome, dt_nascimento, email) values ('maria', '2004-04-17', 'maria@email.com');
insert into aluno (nome, dt_nascimento, email) values ('jorge', '2005-04-27', 'jorge@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Bussaba', '2004-04-17', 'bussaba@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Buppha', '2005-04-27', 'buppha@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Chimlin', '2006-04-17', 'chimlin@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Dao', '2005-03-27', 'Dao@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Chailai', '2004-04-27', 'chailai@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Kamlai', '2009-04-04', 'kamlai@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Kanya', '2006-04-17', 'kanya@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Kamon', '2005-03-27', 'kamon@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Anong', '2005-07-27', 'anong@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Kosum', '2006-08-17', 'kosum@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Karawek', '2005-03-30', 'karawek@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Kulap', '2004-04-28', 'kulap@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Mali', '2009-04-08', 'mali@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Malee', '2006-04-09', 'malee@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Phanumas', '2005-03-01', 'phanumas@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Puenthai', '2005-04-27', 'puenthai@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Manoban', '2006-04-17', 'manoban@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Rattana', '2005-09-21', 'rattana@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Ratanaporn', '2004-04-26', 'ratanaporn@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Adylyadej', '2009-04-07', 'adylyadej@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Thakur', '2006-04-14', 'thakur@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Tham Boon', '2005-03-15', 'boon@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Saelim', '2005-07-08', 'saelim@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Bunmi', '2006-08-12', 'bunmi@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Suwan', '2005-03-31', 'suwan@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Saetan', '2004-04-19', 'saetan@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Sisuk', '2009-04-05', 'sisuk@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Bunsi', '2006-04-06', 'bunsi@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Sisuwan', '2005-03-02', 'sisuwan@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Sinuan', '2005-06-01', 'sinuan@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Sanouk', '2005-02-27', 'sanouk@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Thong ', '2006-01-17', 'thong@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Pitak', '2005-01-21', 'pitak@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Saetang', '2004-09-26', 'saetang@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Krungthep', '2009-12-07', 'krungthep@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Patana', '2002-04-14', 'patana@email.com');
insert into aluno (nome, dt_nascimento, email) values ('A-wut', '2002-03-15', 'wut@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Ayutthaya', '2003-07-08', 'ayutthaya@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Bunmi', '2006-08-19', 'bunmi@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Suwan', '2003-03-31', 'suwan@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Saetan', '2004-06-07', 'saetan@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Mali', '2001-04-05', 'mali@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Bunsi', '2006-04-06', 'bunsi@email.com'),('Suriya', '2005-03-02', 'Suriya@email.com');
insert into aluno (nome, dt_nascimento, email) values ('Rogerio', '2000-01-01', 'rogerio@email.com');
-- questao 4
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('Anand','1976-12-14','anand@email.com', 'mongol','335.431.180-05' );
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('Amina','1977-02-14','amar@email.com', 'mongol','015.085.810-88' );
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('Amar','1978-01-14','mar@email.com', 'mongol','483.811.070-75' );
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('Nina','1979-03-14','nina@email.com', 'mongol','261.537.870-88' );
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('Indra','1970-05-14','indra@email.com', 'mongol','000.806.950-60' );
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('Saran','1971-07-14','saran@email.com', 'mongol','687.275.230-04' );
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('Agar','1972-09-14','agar@email.com', 'mongol','642.308.020-80' );
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('Rina','1973-08-14','rina@email.com', 'mongol','484.636.860-28' );
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('David','1974-06-14','David@email.com', 'mongol','223.884.190-34' );
insert into aluno (nome, dt_nascimento, email, nacionalidade, cpf) values ('Amin ','1975-01-14','amin@email.com', 'mongol','044.293.990-69' );

insert into sala (numero_sala,mesas) values (10, 30);


insert into aluno_curso (fk_curso_id, fk_aluno_id) values (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),
(5,11),(5,12),(5,13),(5,14),(5,15),(5,16),(5,17),(3,18),(3,19),(3,20),
(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,21),(7,22),(7,23),(7,24),(7,25),(7,26),(7,27),(7,28),(7,29),(7,30),
(9,31),(9,2),(9,33),(9,34),(9,35),(9,36),(9,37),(9,38),(9,39),(9,40),
(10,41),(10,42),(10,43),(10,44),(10,45),(10,46),(10,47),(10,48),(10,49),(10,50);

-- questao 6
update aluno set CPF ="864.899.990-13", nacionalidade = "Brasileiro" where id_aluno =1 ;
update aluno set CPF ="617.031.490-76", nacionalidade = "Tailandes" where id_aluno =2 ;
update aluno set CPF ="306.968.790-34", nacionalidade = "Peruano" where id_aluno =3 ;
update aluno set CPF ="951.925.650-49", nacionalidade = "Bosnio" where id_aluno =4 ;
update aluno set CPF ="951.925.650-49", nacionalidade = "Argentinio" where id_aluno =5 ;
update aluno set CPF ="963.815.640-67", nacionalidade = "Africano" where id_aluno =6 ;
update aluno set CPF ="492.903.500-75", nacionalidade = "Brasileiro" where id_aluno =7 ;
update aluno set CPF ="598.288.660-21", nacionalidade = "Tailandes" where id_aluno =8 ;
update aluno set CPF ="271.158.210-89", nacionalidade = "Bosnio" where id_aluno =9 ;
update aluno set CPF ="558.592.300-52", nacionalidade = "" where id_aluno =10 ;
update aluno set CPF ="218.477.670-01", nacionalidade = "" where id_aluno =11 ;
update aluno set CPF ="343.528.110-33", nacionalidade = "Tailandes" where id_aluno = 12;
update aluno set CPF ="385.914.250-06", nacionalidade = "" where id_aluno = 13;
update aluno set CPF ="241.012.260-40", nacionalidade = "Brasileiro" where id_aluno = 14;
update aluno set CPF ="681.012.470-50", nacionalidade = "Bosnio" where id_aluno = 15;
update aluno set CPF ="274.282.360-37", nacionalidade = "" where id_aluno = 16;
update aluno set cpf ="129.543.920-45", nacionalidade = "Tailandes" where id_aluno = 17;
update aluno set CPF ="480.192.190-64", nacionalidade = "Brasileiro" where id_aluno = 18;
update aluno set CPF ="627.880.260-05", nacionalidade = "" where id_aluno = 19;
update aluno set CPF ="793.385.420-68", nacionalidade = "Bosnio" where id_aluno = 20;
update aluno set CPF ="799.882.720-30", nacionalidade = "Tailandes" where id_aluno = 21;
update aluno set CPF ="157.596.500-33", nacionalidade = "Brasileiro" where id_aluno =22 ;
update aluno set CPF ="953.149.330-80", nacionalidade = "" where id_aluno = 23;
update aluno set CPF ="641.976.520-03", nacionalidade = "Tailandes" where id_aluno = 24;
update aluno set CPF ="641.976.520-03", nacionalidade = "Brasileiro" where id_aluno = 25;
update aluno set CPF ="916.839.750-06", nacionalidade = "Bosnio" where id_aluno = 26;
update aluno set CPF ="545.757.060-60", nacionalidade = "Bosnio" where id_aluno = 27;
update aluno set CPF ="017.235.930-95", nacionalidade = "" where id_aluno = 28;
update aluno set CPF ="983.175.300-35", nacionalidade = "" where id_aluno = 29;
update aluno set CPF ="613.779.460-10", nacionalidade = "Tailandes" where id_aluno = 30;
update aluno set CPF ="887.206.260-88", nacionalidade = "Brasileiro" where id_aluno =31 ;
update aluno set CPF ="818.949.180-61", nacionalidade = "" where id_aluno =32 ;
update aluno set CPF ="813.820.320-05", nacionalidade = "" where id_aluno = 33;
update aluno set CPF ="249.095.890-90", nacionalidade = "Tailandes" where id_aluno = 34;
update aluno set CPF ="529.252.410-77", nacionalidade = "" where id_aluno = 35;
update aluno set CPF ="274.673.430-35", nacionalidade = "Tailandes" where id_aluno = 36;
update aluno set CPF ="874.034.310-30", nacionalidade = "" where id_aluno = 37;
update aluno set CPF ="319.354.850-24", nacionalidade = "" where id_aluno = 38;
update aluno set CPF ="260.132.330-20", nacionalidade = "Tailandes" where id_aluno = 39;
update aluno set CPF ="577.108.120-58", nacionalidade = "Brasileiro" where id_aluno = 40;
update aluno set CPF ="896.922.090-91", nacionalidade = "" where id_aluno = 41;
update aluno set CPF ="898.221.890-44", nacionalidade = "" where id_aluno = 42;
update aluno set CPF ="348.722.050-49", nacionalidade = "Bosnio" where id_aluno = 43;
update aluno set CPF ="754.898.360-32", nacionalidade = "Brasileiro" where id_aluno = 44;
update aluno set CPF ="538.656.490-09", nacionalidade = "" where id_aluno = 45;
update aluno set CPF ="775.063.010-40", nacionalidade = "" where id_aluno = 46;
update aluno set CPF ="094.792.510-43", nacionalidade = "Bosnio" where id_aluno =47;
update aluno set CPF ="523.317.540-12", nacionalidade = "" where id_aluno = 48;
update aluno set CPF ="136.557.310-94", nacionalidade = "Tailandes" where id_aluno = 49;
update aluno set nacionalidade = "Brasileiro", cpf ="816.206.020-08" where id_aluno = 50;

update curso set tipo_aula = "EAD" where id_curso = 3;
update curso set tipo_aula = "PRESENCIAL" where id_curso = 6;
update curso set tipo_aula = "EAD" where id_curso = 7;
update curso set tipo_aula = "PRESENCIAL" where id_curso = 9;
update curso set tipo_aula = "PRESENCIAL" where id_curso = 10;

-- qyestao 9
delete from aluno
where id_aluno <6;

delete from curso
where id_curso = 11;




/*  upadate aluno set dt_nascimento = 2-03000-0-000 where id_aluno = 2*/

-- questao 1
select * from aluno;

-- questao 2
select id_aluno, email from aluno;

-- questao 3
select id_aluno,email from aluno where id_aluno = 20;

-- questao 7
select nome, cpf from aluno; 

select * from curso;

-- questao 10
select * from aluno where id_aluno >20;

-- questao 8
select * from aluno_curso;

-- questao 12
select * from sala;

-- questao 14
select * from curso where tipo_aula = "EAD";