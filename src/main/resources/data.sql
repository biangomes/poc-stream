create table if not exists Endereco (
	id serial primary key,
	rua varchar(200),
	bairro varchar(200),
	cidade varchar(200),
	estado varchar(200),
	cep varchar(200)
);


create table if not exists profissional (
	id serial primary key,
	nome varchar(200),
	registro_profissional varchar(6),
	especialidade varchar(200)
);


create table if not exists consultorio (
	id serial primary key,
	profissional int,
	endereco int,
	constraint fk_profissional foreign key (profissional) references profissional (id),
	constraint fk_endereco foreign key (endereco) references endereco (id)
);


create table if not exists paciente (
	id serial primary key,
	nome varchar(255),
	email varchar(255)
);

create table if not exists consulta (
	id serial primary key,
	paciente_id int,
	profissional_id int,
	consultorio_id int,
	horario timestamp,
	constraint fk_paciente foreign key (paciente_id) references paciente(id),
	constraint fk_profissional foreign key (profissional_id) references profissional(id),
	constraint fk_consultorio foreign key (consultorio_id) references consultorio(id)
);

-----------------------------

insert into endereco (rua, bairro, cidade, estado, cep)
values ('Rua Lauro Linhares', 'Trindade', 'Florianópolis', 'SC', '88036-003'),
('Avenida Itamarati 160', 'Itacorubi', 'Florianopolis', 'SC', '88034-900'),
('Servidão dos Hibiscos', 'Lagoa da Conceição', 'Florianopolis', 'SC', '88062-545'),
('Servidão Cabral', 'José Mendes', 'Florianopolis', 'SC', '88020-282');

insert into profissional (nome, registro_profissional, especialidade)
values ('Beatriz', 'CRM001', 'Ginecologista'),
('Karol', 'CRM002', 'Endocrinologista'),
('Joseph', 'CRM003', 'Pediatra'),
('Louise', 'CRM004', 'Tarologa'),
('Pablo Vittar', 'CRM005', 'Cirurgiã');

insert into consultorio (profissional, endereco)
values (1, 1), (1, 2), (1, 3),
		(3, 1), (3, 2),
		(3, 3), (3, 4),
		(4, 1), (4,2), (4, 3), (4,4);


insert into paciente (nome, email)
values ('Ana', 'ana@gmail.com'), ('Hiago', 'hiago.prestes@gmail.com'), ('Barbara', 'barbara@gmail.com');


-----------------------------

select *
from profissional ;

select
	c.id as consultorio_id,
	p.nome as profissional_nome,
	p.id as profissional_id,
	p.especialidade as profissional_especialidade
from consultorio c
join profissional p on c.profissional = p.id;

/*
 * alter table consultorio add column id primary key;
 * drop table consultorio;
*/


select * from consulta;
