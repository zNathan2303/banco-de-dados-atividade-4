-- CRIAR UMA PROCEDURE PARA PROMOVER UM FUNCIONÁRIO
DELIMITER $$
CREATE PROCEDURE PromoverFuncionario(
	IN f_id INT,
    IN c_id INT,
    IN salario DECIMAL(11,2),
    IN fi_id INT
)
BEGIN
	DECLARE funcionario_existe INT;
    DECLARE cargo_existe INT;
    DECLARE filial_existe INT;
    
    -- BUSCAR PELO FUNCIONARIO INFORMADO
    SELECT COUNT(id_funcionario) INTO funcionario_existe
    FROM tbl_funcionario WHERE id_funcionario = f_id;
    
    -- BUSCAR PELO CARGO INFORMADO
    SELECT COUNT(id_cargo) INTO cargo_existe
    FROM tbl_cargo WHERE id_cargo = c_id;
    
    -- BUSCAR PELA FILIAL INFORMADO
    SELECT COUNT(id_filial) INTO filial_existe
    FROM tbl_filial WHERE id_filial = fi_id;
    
    -- LÓGICA CONDICIONAL PARA VERIFICAR SE OS IDs INFORMADOS EXISTEM
    IF funcionario_existe > 0 AND cargo_existe > 0 AND filial_existe > 0 THEN
		-- DESLIGAR O AUTO-COMMIT E FAZER UM COMMIT NO FINAL
		-- Atualizamos o cargo atual, se houver
		UPDATE tbl_funcionario_cargo
			SET data_fim = current_date()
		WHERE id_funcionario = f_id
			AND data_fim IS NULL;
		
		-- Inserir o novo cargo do funcionário
		INSERT INTO tbl_funcionario_cargo(
			data_inicio, salario_atual, id_filial, id_cargo, id_funcionario
		) VALUES (
			current_date(), salario, fi_id, c_id, f_id
		);
	ELSE 
		SELECT CONCAT("Algum dos IDs informados não existe!") mensagem;
	END IF;
END $$
DELIMITER ;

DROP PROCEDURE PromoverFuncionario;

SELECT * FROM tbl_funcionario_cargo;

CALL PromoverFuncionario(1, 1, 4444, 2);
