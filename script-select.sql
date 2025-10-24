INSERT INTO tbl_funcionario (
	nome, cpf, data_nascimento, 
    telefone, email, data_admissao, data_demissao
) VALUES (
	'Nathan da Silva Costa', '11122233344', '2007-03-23', 
    '(11)12345-6789', 'nathan@gmail.com', 
    '2025-01-01', NULL
);

INSERT INTO tbl_funcionario (
    nome, cpf, data_nascimento, telefone, email, data_admissao, data_demissao
) VALUES
('Diego Santos Rocha', '45678901234', '1992-12-30', '(41) 99988-7766', 'diego.rocha@email.com', '2018-11-05', '2024-08-10'),
('Isabela Martins Castro', '90123456789', '1994-08-16', '(91) 98111-2222', 'isabela.castro@email.com', '2021-09-14', NULL),
('Ana Paula Souza', '12345678901', '1990-05-12', '(11) 91234-5678', 'ana.souza@email.com', '2020-01-15', NULL),
('Felipe Augusto Nunes', '67890123456', '1985-10-11', '(61) 99234-5678', 'felipe.nunes@email.com', '2017-09-25', '2023-12-15'),
('Gabriela Costa Almeida', '78901234567', '1993-11-05', '(71) 98765-6789', 'gabriela.almeida@email.com', '2020-05-10', NULL),
('Eduarda Ferreira Silva', '56789012345', '1997-03-18', '(51) 98123-4567', 'eduarda.silva@email.com', '2022-02-01', NULL),
('João Pedro Araújo', '01234567890', '1989-06-22', '(85) 98777-8899', 'joao.araujo@email.com', '2019-07-01', NULL),
('Henrique Moreira Santos', '89012345678', '1999-01-27', '(81) 99812-3456', 'henrique.santos@email.com', '2023-01-03', NULL),
('Carla Mendes Oliveira', '34567890123', '1995-07-02', '(31) 98765-4321', 'carla.oliveira@email.com', '2021-06-20', NULL),
('Bruno Henrique Lima', '23456789012', '1988-09-23', '(21) 99876-5432', 'bruno.lima@email.com', '2019-03-10', NULL);

-- LISTA TODOS OS FUNCIONÁRIOS
SELECT * FROM tbl_funcionario;

-- EXCLUIR TODOS OS FUNCIONARIOS EXCETO O PRIMEIRO
DELETE FROM tbl_funcionario WHERE id_funcionario <> 1;

-- LISTAR TODOS OS FUNCIONÁRIOS ORDENADOS PELO NOME EM ORDEM CRESCENTE
SELECT * FROM tbl_funcionario ORDER BY nome;

-- LISTAR TODOS OS FUNCIONÁRIOS ORDENADOS PELO NOME EM ORDEM DECRESCENTE
SELECT * FROM tbl_funcionario ORDER BY nome DESC;

-- LISTAR TODOS OS FUNCIONÁRIOS DO MAIS IDOSO PARA O MAIS JOVEM
SELECT * FROM tbl_funcionario ORDER BY data_nascimento;

-- LISTAR TODOS OS FUNCIONÁRIOS DO MAIS JOVEM PARA O MAIS IDOSO
SELECT * FROM tbl_funcionario ORDER BY data_nascimento DESC;

-- LISTAR TODOS OS FUNCIONÁRIOS DEMITIDOS
SELECT * FROM tbl_funcionario WHERE data_demissao IS NOT NULL;

-- LISTAR TODOS OS FUNCIONÁRIOS DEMITIDOS, DA DEMISSÃO MAIS RECENTE PARA A MAIS ANTIGA
SELECT * FROM tbl_funcionario 
	WHERE data_demissao IS NOT NULL 
	ORDER BY data_demissao DESC;

-- LISTAR TODOS OS FUNCIONÁRIOS DEMITIDOS, DA DEMISSÃO MAIS ANTIGA PARA A MAIS RECENTE
SELECT * FROM tbl_funcionario 
	WHERE data_demissao IS NOT NULL 
	ORDER BY data_demissao ASC;

-- LISTAR TODOS OS FUNCIONÁRIOS ADMITIDOS NA DÉCADA DE 2010
SELECT * FROM tbl_funcionario 
	WHERE data_admissao >= '2010-01-01' 
    AND data_admissao <= '2019-12-31';

-- LISTAR TODOS OS FUNCIONÁRIOS ADMITIDOS NA DÉCADA DE 2010 (BETWEEN)
SELECT * FROM tbl_funcionario 
	WHERE data_admissao BETWEEN '2010-01-01' AND '2019-12-31';
    
/*
	LISTAR TODOS OS FUNCIONÁRIOS ADMITIDOS NA DÉCADA DE 2010 (BETWEEN)
    ORDENADOS DA DEMISSÃO MAIS RECENTE PARA A MAIS ANTIGA
*/
SELECT * FROM tbl_funcionario 
	WHERE data_admissao BETWEEN '2010-01-01' AND '2019-12-31'
    ORDER BY data_admissao DESC;

/*
	LISTAR TODOS OS FUNCIONÁRIOS ADMITIDOS NA DÉCADA DE 2010 (BETWEEN)
    ORDENADOS DA DEMISSÃO MAIS RECENTE PARA A MAIS ANTIGA
    MOSTRANDO APENAS O NOME, DATA DE ADMISSÃO E O E-MAIL
*/
SELECT nome, data_admissao, email FROM tbl_funcionario 
	WHERE data_admissao BETWEEN '2010-01-01' AND '2019-12-31'
    ORDER BY data_admissao DESC;
    
/*
	LISTAR TODOS OS FUNCIONÁRIOS ADMITIDOS NA DÉCADA DE 2010 (BETWEEN)
    ORDENADOS DA DEMISSÃO MAIS RECENTE PARA A MAIS ANTIGA
    MOSTRANDO APENAS O NOME (Nome), 
    DATA DE ADMISSÃO (Contratação) E O E-MAIL (E-mail)
*/
SELECT nome AS 'Nome', data_admissao AS 'Contratação', email AS 'E-mail' FROM tbl_funcionario 
	WHERE data_admissao BETWEEN '2010-01-01' AND '2019-12-31'
    ORDER BY data_admissao DESC;
    
desc tbl_filial;

-- DEFINIMOS OS CAMPOS QUE SERÃO PREENCHIDOS
INSERT INTO tbl_filial (
		data_abertura, cnpj, nome, logradouro, numero, 
		bairro, cidade, uf, cep, email, telefone
-- INFORMAR OS VALORES QUE SERÃO PREENCHIDOS
    ) VALUES (
		'2001-09-23', '111112222233', 'FILIAL 1', 'Rua Paraná', '500', 
        'Jardim Europa', 'Jandira', 'SP', '06600-000', 'filial1@empresa.com', '(11)1234-5678'
    );
    
INSERT INTO tbl_filial (
		data_abertura, cnpj, nome, logradouro, numero, 
		bairro, cidade, uf, cep, email, telefone
    ) VALUES (
		'2009-12-10', '111444444444', 'FILIAL 2', 'Nove de Julho', '123', 
        'Vila Albertina', 'Cascavel', 'PR', '06611-111', 'filial2@empresa.com', '(45)0987-5678'
    );
    
SELECT * FROM tbl_filial;
    
-- ***************** CARGOS ********************
desc tbl_cargo;

INSERT INTO tbl_cargo (nome, salario_base, cbo) 
	VALUES('Programador Jr.', 4356.78, '3171-20');

SELECT * FROM tbl_cargo;

INSERT INTO tbl_cargo (nome, salario_base, descricao, cbo) VALUES
('Programador Jr.', 4356.78, 'Desenvolve e mantém aplicações sob supervisão, realizando correções simples e implementações básicas.', '3171-20'),
('Programador Pleno', 6750.90, 'Responsável por codificar, testar e documentar sistemas de média complexidade.', '3171-25'),
('Analista de Sistemas', 7820.50, 'Realiza levantamento de requisitos, análise e modelagem de sistemas de informação.', '2124-05'),
('Engenheiro de Software', 10850.00, 'Planeja, projeta e supervisiona o desenvolvimento de sistemas complexos com boas práticas de engenharia.', '2124-10'),
('Técnico de Suporte', 3200.00, 'Atende usuários, presta suporte técnico e realiza manutenção preventiva em equipamentos.', '3172-05'),
('Administrador de Banco de Dados', 9100.75, 'Gerencia, otimiza e garante a segurança e integridade de bancos de dados corporativos.', '2124-15'),
('Analista de Redes', 6950.30, 'Monitora e administra redes de computadores, garantindo conectividade e segurança.', '2123-10'),
('Gerente de TI', 15200.00, 'Coordena equipes e projetos de tecnologia, definindo estratégias e políticas de TI.', '1425-15'),
('Estagiário de TI', 1850.00, 'Auxilia nas rotinas de desenvolvimento, suporte e documentação de sistemas.', '3171-10'),
('Cientista de Dados', 12500.50, 'Analisa grandes volumes de dados para gerar insights e apoiar decisões estratégicas.', '2124-35');

-- MOSTRAR O CARGO COM SALARIO MAIOR

SELECT * FROM tbl_cargo ORDER BY salario_base DESC;

desc tbl_funcionario_cargo;

INSERT INTO tbl_funcionario_cargo (
		data_inicio, salario_atual, id_filial, id_cargo, id_funcionario
	) VALUES (
		'2020-10-07', 2200, 2, 10, 13
	);

SELECT * FROM tbl_funcionario_cargo;

INSERT INTO tbl_funcionario (
	nome, cpf, data_nascimento, 
    telefone, email, data_admissao, data_demissao
) VALUES
('Nathan Ferreira', '1112666344', '2000-03-23', '(11)17845-6789', 'nathan.ferreira@gmail.com', '2022-11-21', NULL),
('Bruna Alves Ferreira', '22233344455', '1999-07-12', '(21)99876-4321', 'bruna.ferreira@gmail.com', '2023-05-10', NULL),
('Rafael Mendes Duarte', '33344455566', '1995-11-02', '(31)91234-5678', 'rafael.duarte@gmail.com', '2021-09-15', '2024-12-20'),
('Camila Rodrigues Lima', '44455566677', '1998-02-14', '(41)97777-1122', 'camila.lima@gmail.com', '2022-04-01', NULL),
('Lucas Pereira Gomes', '55566677788', '2000-09-20', '(51)98888-3344', 'lucas.gomes@gmail.com', '2024-03-18', NULL),
('Larissa Monteiro Campos', '66677788899', '1997-06-10', '(61)99999-5566', 'larissa.campos@gmail.com', '2020-08-25', '2023-07-01'),
('Pedro Henrique Souza', '77788899900', '1994-05-17', '(71)97777-4455', 'pedro.souza@gmail.com', '2019-10-30', NULL),
('Paulo Victor Andrade', '88899900011', '1996-01-09', '(81)96666-7788', 'paulo.andrade@gmail.com', '2023-01-05', NULL),
('Fernanda Costa Ribeiro', '99900011122', '1993-08-26', '(91)95555-8899', 'fernanda.ribeiro@gmail.com', '2018-02-14', '2022-12-31'),
('Felipe Moura Cardoso', '10111213141', '1999-10-03', '(11)91212-3434', 'felipe.cardoso@gmail.com', '2024-06-20', NULL),
('Giovanna Nogueira Lopes', '12131415161', '2001-12-19', '(21)93456-7890', 'giovanna.lopes@gmail.com', '2025-02-10', NULL),
('Gustavo Henrique Almeida', '13141516171', '1998-03-08', '(31)92345-6789', 'gustavo.almeida@gmail.com', '2021-11-01', '2024-05-12'),
('Beatriz Oliveira Martins', '14151617181', '1995-09-28', '(41)94567-1234', 'beatriz.martins@gmail.com', '2020-03-10', NULL),
('Mariana Silva Tavares', '15161718191', '1997-07-06', '(51)96789-4321', 'mariana.tavares@gmail.com', '2022-09-25', NULL),
('Matheus Rocha Pires', '16171819202', '1996-04-22', '(61)97654-3210', 'matheus.pires@gmail.com', '2019-05-16', '2023-11-10');

SELECT * FROM tbl_funcionario;

-- CONTAR REGISTROS NA TABELA DE FUNCIONARIOS
SELECT COUNT(nome) AS total FROM tbl_funcionario;
SELECT nome, data_admissao FROM tbl_funcionario WHERE data_admissao > '2019-12-31';

INSERT INTO tbl_funcionario_cargo (
	data_inicio, data_fim, salario_atual, anotacoes, 
    id_filial, id_cargo, id_funcionario
) VALUES
('2022-01-10', NULL, 4356.78, 'Efetivado após período de experiência.', 1, 1, 12),
('2023-03-15', NULL, 6900.00, 'Recebeu aumento por desempenho.', 2, 2, 13),
('2021-09-25', '2024-04-30', 7800.50, 'Saiu por motivo pessoal.', 1, 3, 14),
('2024-06-01', NULL, 11000.00, 'Responsável por projeto crítico.', 2, 4, 15),
('2020-10-20', NULL, 3200.00, 'Transferido de outra filial.', 1, 5, 16),
('2023-02-10', NULL, 9150.75, 'Especialista em banco de dados.', 1, 6, 17),
('2021-12-01', '2023-11-15', 7000.25, 'Contrato temporário finalizado.', 2, 7, 18),
('2022-05-12', NULL, 15200.00, 'Gerente de equipe principal.', 2, 8, 19),
('2024-03-05', NULL, 1850.00, 'Estagiário com bom desempenho.', 1, 9, 20),
('2020-07-18', '2022-12-01', 12450.00, 'Saiu para nova oportunidade.', 2, 10, 21),
('2021-01-11', NULL, 4600.00, 'Efetivado recentemente.', 1, 1, 22),
('2024-04-30', NULL, 6750.90, 'Substituiu funcionário anterior.', 2, 2, 23),
('2020-09-01', '2023-07-10', 8100.00, 'Teve bom desempenho em projetos.', 1, 3, 24),
('2023-11-15', NULL, 10850.00, 'Lidera equipe de desenvolvimento.', 1, 4, 25),
('2019-12-22', NULL, 3350.00, 'Funcionário antigo com bom histórico.', 2, 5, 26),
('2022-08-03', '2024-01-20', 9400.00, 'Encerramento de contrato.', 1, 6, 27),
('2024-01-05', NULL, 7100.30, 'Atua na manutenção de rede.', 2, 7, 28),
('2021-10-19', NULL, 15700.00, 'Gerente promovido.', 1, 8, 29),
('2025-02-01', NULL, 1900.00, 'Estágio em andamento.', 2, 9, 30),
('2020-05-20', '2023-08-15', 12600.50, 'Participou de projeto de dados.', 1, 10, 31),
('2022-12-10', NULL, 4450.00, 'Bom desempenho técnico.', 1, 1, 32),
('2021-06-30', NULL, 6900.00, 'Trabalha em equipe de integração.', 2, 2, 33),
('2023-07-25', NULL, 7850.40, 'Análise de sistemas complexos.', 1, 3, 34),
('2020-11-18', '2022-09-30', 10900.00, 'Mudou de área de atuação.', 2, 4, 35),
('2024-02-10', NULL, 3250.00, 'Novo técnico em treinamento.', 1, 5, 36);

SELECT * FROM tbl_funcionario_cargo ORDER BY id_cargo ASC;
SELECT * FROM tbl_funcionario WHERE id_funcionario = 12;
SELECT * FROM tbl_cargo WHERE id_cargo = 1;

-- LISTAR A TABELA FUNCIONARIO_CARGO EXIBINDO O NOME DO CARGO

SELECT tbl_funcionario_cargo.id, 
		tbl_funcionario_cargo.id_cargo, 
		tbl_cargo.nome
    FROM tbl_funcionario_cargo, tbl_cargo
	WHERE tbl_funcionario_cargo.id_cargo = tbl_cargo.id_cargo order by tbl_funcionario_cargo.id_cargo;

SELECT * FROM tbl_cargo;

desc tbl_funcionario;

SELECT 
	tbl_funcionario_cargo.id, 
    tbl_funcionario.id_funcionario, 
    tbl_funcionario.nome,
    tbl_funcionario.email
	FROM tbl_funcionario_cargo, tbl_funcionario 
	where tbl_funcionario.id_funcionario = tbl_funcionario_cargo.id_funcionario
    ORDER BY tbl_funcionario.nome ASC;

select * from tbl_funcionario_cargo;

SELECT 
	fc.id, 
    fc.id_funcionario,
    fc.id_cargo,
    f.nome as funcionario,
    c.nome as cargo,
    f.email
FROM 
	tbl_funcionario_cargo fc, tbl_funcionario f, tbl_cargo c
WHERE 
	fc.id_funcionario = f.id_funcionario 
AND 
	fc.id_cargo = c.id_cargo
ORDER BY
	c.nome ASC;
    
select * from tbl_funcionario_cargo where id_funcionario = 13;

update tbl_funcionario_cargo set data_fim = '2023-03-14' where id = 4;

select * from tbl_funcionario_cargo where id_cargo = 2;

select SUM(salario_atual) as gastoComDevJunior from tbl_funcionario_cargo where id_cargo = 1;

-- LISTANDO OS CARGOS DOS FUNCIONÁRIOS
-- COM JOIN

SELECT f.id_funcionario, f.nome, fc.id_cargo, c.nome as cargo, fc.salario_atual, fc.data_fim
FROM tbl_funcionario f JOIN tbl_funcionario_cargo fc 
ON f.id_funcionario = fc.id_funcionario
JOIN tbl_cargo c
ON c.id_cargo = fc.id_cargo;

-- CRIAÇÃO DE UMA VIEW PARA LISTAR 
-- FUNCIONÁRIOS E CARGOS

CREATE VIEW view_lista_funcionarios_cargos as
SELECT f.id_funcionario, f.nome, fc.id_cargo, c.nome as cargo, fc.salario_atual, fc.data_fim
FROM tbl_funcionario f JOIN tbl_funcionario_cargo fc 
ON f.id_funcionario = fc.id_funcionario
JOIN tbl_cargo c
ON c.id_cargo = fc.id_cargo;

-- EXECUTANDO UMA VIEW
select * from view_lista_funcionarios_cargos
WHERE salario_atual > 10000
order by salario_atual desc;

select id_funcionario from tbl_funcionario;

INSERT INTO tbl_endereco_funcionario 
(logradouro, numero, bairro, cidade, uf, cep, id_funcionario) VALUES
-- Funcionário 1 (3 endereços)
('Rua das Acácias', '120', 'Centro', 'São Paulo', 'SP', '01010-000', 1),
('Avenida dos Bandeirantes', '4500', 'Vila Olímpia', 'São Paulo', 'SP', '04553-010', 1),
('Rua Monte Alegre', '85', 'Perdizes', 'São Paulo', 'SP', '05014-000', 1),

-- Funcionário 12 (4 endereços)
('Rua das Laranjeiras', '210', 'Centro', 'Niterói', 'RJ', '24020-000', 12),
('Rua Visconde de Pirajá', '303', 'Ipanema', 'Rio de Janeiro', 'RJ', '22410-003', 12),
('Rua da Passagem', '98', 'Botafogo', 'Rio de Janeiro', 'RJ', '22290-030', 12),
('Rua Conde de Bonfim', '200', 'Tijuca', 'Rio de Janeiro', 'RJ', '20520-050', 12),

-- Funcionário 13 (sem endereço)
-- Nenhum registro

-- Funcionário 14 (3 endereços)
('Rua Bahia', '50', 'Savassi', 'Belo Horizonte', 'MG', '30160-011', 14),
('Avenida Afonso Pena', '3120', 'Funcionários', 'Belo Horizonte', 'MG', '30130-008', 14),
('Rua Tupis', '444', 'Centro', 'Belo Horizonte', 'MG', '30120-070', 14),

-- Funcionário 15 (5 endereços)
('Rua Dom Pedro II', '99', 'Centro', 'Curitiba', 'PR', '80010-320', 15),
('Rua XV de Novembro', '1500', 'Centro', 'Curitiba', 'PR', '80020-310', 15),
('Rua Marechal Deodoro', '456', 'Cristo Rei', 'Curitiba', 'PR', '80050-030', 15),
('Rua João Negrão', '321', 'Centro', 'Curitiba', 'PR', '80010-200', 15),
('Rua Barão do Rio Branco', '700', 'Centro', 'Curitiba', 'PR', '80010-180', 15),

-- Funcionário 16 (sem endereço)
-- Nenhum registro

-- Funcionário 17 (4 endereços)
('Rua dos Andradas', '240', 'Centro', 'Porto Alegre', 'RS', '90020-005', 17),
('Rua Padre Chagas', '500', 'Moinhos de Vento', 'Porto Alegre', 'RS', '90570-080', 17),
('Avenida Ipiranga', '6681', 'Partenon', 'Porto Alegre', 'RS', '90619-900', 17),
('Rua Venâncio Aires', '100', 'Cidade Baixa', 'Porto Alegre', 'RS', '90040-191', 17),

-- Funcionário 18 (3 endereços)
('Rua 24 de Outubro', '90', 'Centro', 'Goiania', 'GO', '74000-020', 18),
('Rua T-63', '1200', 'Setor Bela Vista', 'Goiania', 'GO', '74823-020', 18),
('Rua 9', '880', 'Setor Oeste', 'Goiania', 'GO', '74110-060', 18),

-- Funcionário 19 (sem endereço)

-- Funcionário 20 (5 endereços)
('Rua Ceará', '555', 'Boa Vista', 'Recife', 'PE', '50070-500', 20),
('Avenida Boa Viagem', '8000', 'Boa Viagem', 'Recife', 'PE', '51021-040', 20),
('Rua Dom Bosco', '120', 'Centro', 'Recife', 'PE', '50070-070', 20),
('Rua da Aurora', '420', 'Boa Vista', 'Recife', 'PE', '50050-000', 20),
('Rua Real da Torre', '610', 'Madalena', 'Recife', 'PE', '50610-000', 20),

-- Funcionário 21 (sem endereço)

-- Funcionário 22 (4 endereços)
('Rua das Palmeiras', '11', 'Centro', 'Florianópolis', 'SC', '88010-000', 22),
('Avenida Beira-Mar Norte', '2200', 'Centro', 'Florianópolis', 'SC', '88015-702', 22),
('Rua Frei Caneca', '80', 'Agronômica', 'Florianópolis', 'SC', '88025-000', 22),
('Rua Presidente Coutinho', '305', 'Centro', 'Florianópolis', 'SC', '88015-230', 22),

-- Funcionário 23 (3 endereços)
('Rua 5', '102', 'Centro', 'Campinas', 'SP', '13010-050', 23),
('Avenida Francisco Glicério', '250', 'Centro', 'Campinas', 'SP', '13012-100', 23),
('Rua Barão de Jaguara', '810', 'Centro', 'Campinas', 'SP', '13015-000', 23),

-- Funcionário 24 (sem endereço)
-- Funcionário 25 (sem endereço)

-- Funcionário 26 (5 endereços)
('Rua 13 de Maio', '133', 'Centro', 'Fortaleza', 'CE', '60060-130', 26),
('Rua Padre Valdevino', '320', 'Aldeota', 'Fortaleza', 'CE', '60135-040', 26),
('Avenida Beira Mar', '2450', 'Meireles', 'Fortaleza', 'CE', '60165-121', 26),
('Rua Ana Bilhar', '600', 'Meireles', 'Fortaleza', 'CE', '60160-110', 26),
('Rua Gonçalves Ledo', '111', 'Centro', 'Fortaleza', 'CE', '60055-090', 26),

-- Funcionário 27 (4 endereços)
('Rua São José', '400', 'Centro', 'Natal', 'RN', '59025-000', 27),
('Avenida Roberto Freire', '1900', 'Ponta Negra', 'Natal', 'RN', '59090-000', 27),
('Rua Mossoró', '33', 'Lagoa Nova', 'Natal', 'RN', '59064-390', 27),
('Rua Jaguarari', '290', 'Tirol', 'Natal', 'RN', '59014-200', 27),

-- Funcionário 28 (sem endereço)
-- Funcionário 29 (3 endereços)
('Rua das Dálias', '77', 'Centro', 'Belém', 'PA', '66010-090', 29),
('Travessa Padre Eutíquio', '450', 'Campina', 'Belém', 'PA', '66023-715', 29),
('Rua Gama Abreu', '130', 'Cidade Velha', 'Belém', 'PA', '66023-050', 29),

-- Funcionário 30 (sem endereço)

-- Funcionário 31 (4 endereços)
('Rua Pernambuco', '12', 'Centro', 'Londrina', 'PR', '86010-070', 31),
('Rua São Paulo', '65', 'Centro', 'Londrina', 'PR', '86020-010', 31),
('Rua Pará', '300', 'Centro', 'Londrina', 'PR', '86010-460', 31),
('Rua Espírito Santo', '99', 'Centro', 'Londrina', 'PR', '86020-100', 31),

-- Funcionário 32 (5 endereços)
('Rua Bahia', '201', 'Centro', 'Campo Grande', 'MS', '79002-340', 32),
('Avenida Afonso Pena', '3500', 'Centro', 'Campo Grande', 'MS', '79002-071', 32),
('Rua 14 de Julho', '690', 'Centro', 'Campo Grande', 'MS', '79004-372', 32),
('Rua Maracaju', '123', 'Centro', 'Campo Grande', 'MS', '79005-220', 32),
('Rua Dom Aquino', '855', 'Centro', 'Campo Grande', 'MS', '79002-010', 32),

-- Funcionário 33 (sem endereço)
-- Funcionário 34 (4 endereços)
('Rua São Bento', '77', 'Centro', 'São Luís', 'MA', '65010-090', 34),
('Rua Grande', '320', 'Centro', 'São Luís', 'MA', '65020-110', 34),
('Rua de Nazaré', '120', 'Centro', 'São Luís', 'MA', '65010-460', 34),
('Rua da Paz', '88', 'Centro', 'São Luís', 'MA', '65010-180', 34),

-- Funcionário 35 (3 endereços)
('Rua Rio Branco', '800', 'Centro', 'João Pessoa', 'PB', '58013-110', 35),
('Rua Duque de Caxias', '420', 'Centro', 'João Pessoa', 'PB', '58010-820', 35),
('Rua Maciel Pinheiro', '200', 'Centro', 'João Pessoa', 'PB', '58010-020', 35)

-- Funcionário 36 (sem endereço)
-- Fim
;

SELECT f.nome, ef.logradouro, ef.numero, ef.bairro, ef.cidade, ef.uf, ef.cep 
FROM tbl_funcionario f, tbl_endereco_funcionario ef
WHERE f.id_funcionario = ef.id_funcionario;
