USE projetodiario;

create table aluno(
	id int primary key auto_increment,
    ra char(8) not null unique

);


INSERT INTO aluno(ra)VALUES('12345678');
INSERT INTO aluno(ra) VALUES('12345670');
INSERT INTO aluno(ra) VALUES('12345671');
INSERT INTO aluno(ra) VALUES('12345672');
INSERT INTO aluno(ra) VALUES('12345673');
INSERT INTO aluno(ra) VALUES('12345674');
INSERT INTO aluno(ra) VALUES('12345675');
INSERT INTO aluno(ra) VALUES('12345676');
INSERT INTO aluno(ra) VALUES('12345677');
INSERT INTO aluno(ra) VALUES('12345679');
INSERT INTO aluno(ra) VALUES('12345680');
INSERT INTO aluno(ra) VALUES('12345681');
INSERT INTO aluno(ra) VALUES('12345682');
INSERT INTO aluno(ra) VALUES('12345683');
INSERT INTO aluno(ra) VALUES('12345684');
INSERT INTO aluno(ra) VALUES('12345685');
INSERT INTO aluno(ra) VALUES('12345686');
INSERT INTO aluno(ra) VALUES('12345687');
INSERT INTO aluno(ra) VALUES('12345688');
INSERT INTO aluno(ra) VALUES('12345689');
INSERT INTO aluno(ra) VALUES('12345690');
INSERT INTO aluno(ra) VALUES('12345691');
INSERT INTO aluno(ra) VALUES('12345692');
INSERT INTO aluno(ra) VALUES('12345693');
INSERT INTO aluno(ra) VALUES('12345694');

SELECT * FROM aluno;
SELECT * FROM avaliacao;

create table avaliacao(
	id int primary key auto_increment,
    nota1 int,
    nota2 int,
    nota3 int,
    nota4 int,
    fk_aluno_id int NOT NULL
);

ALTER TABLE avaliacao
ADD CONSTRAINT CHECK (nota1 <= 25),
ADD CONSTRAINT CHECK (nota2 <= 25),
ADD CONSTRAINT CHECK (nota3 <= 25),
ADD CONSTRAINT CHECK (nota4 <= 25);

INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(20,20,20,20,10);
INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(18,10,16,0,3);
INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(24,20,18,23,7);
INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(20,25,20,20,1);
INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(23,18,16,20,5);

SELECT * FROM avaliacao av JOIN aluno a ON av.fk_aluno_id = a.id;
SELECT av.nota1, av.nota2, av.nota3,av.nota4,a.ra FROM avaliacao av JOIN aluno a ON av.fk_aluno_id = a.id;

ALTER TABLE aluno ADD COLUMN nome VARCHAR(80);
ALTER TABLE aluno ADD COLUMN tempoestudo INT NOT NULL;
ALTER TABLE aluno ADD COLUMN rendafamiliar DECIMAL(10,2);
describe aluno;
SELECT*FROM aluno;
select*from aluno order by id desc limit ;
ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;

INSERT aluno(ra,nome,tempoestudo, rendafamiliar) values ('123412412','Juarez',1,23123.321);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345695', 'Ana Silva', 10, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345696', 'Bruno Oliveira', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345697', 'Carla Souza', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345698', 'Daniel Costa', 16, 3100.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345699', 'Elaine Martins', 8, 2300.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345700', 'Fernando Lima', 11, 2600.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345701', 'Gabriela Almeida', 13, 2800.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345702', 'Hugo Ferreira', 15, 3000.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345703', 'Isabela Pereira', 10, 2400.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345704', 'João Santos', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345705', 'Karina Rodrigues', 9, 2200.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345706', 'Lucas Mendes', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345707', 'Mariana Silva', 11, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345708', 'Nicolas Oliveira', 13, 2800.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345709', 'Olga Ramos', 16, 3100.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345710', 'Paulo Henrique', 7, 2100.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345711', 'Queila Santos', 10, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345712', 'Rafael Almeida', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345713', 'Sabrina Costa', 15, 3000.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345714', 'Tiago Lima', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345715', 'Ursula Martins', 9, 2300.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345716', 'Victor Ferreira', 11, 2600.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345717', 'Wanda Pereira', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345718', 'Xavier Rodrigues', 16, 3200.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345719', 'Yara Silva', 13, 2800.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345720', 'Zé Oliveira', 10, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345721', 'André Costa', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345722', 'Beatriz Martins', 15, 3000.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345723', 'Cláudio Lima', 9, 2200.00);
-- tipos de variaveis
-- int : inteiro
-- variável quantitativa
-- variavel idenpendentes e dependentes
-- variaveis independentes quantitativas
-- variavel dependente quantitativa 

