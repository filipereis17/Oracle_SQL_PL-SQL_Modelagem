--
-- Se��o 11 
-- Exibindo dados a partir de M�ltiplas Tabelas
--
-- Aula 5 - Produto Cartesiano
--

-- Gerando um Produto Cartesiano utilizando Cross Join

SELECT last_name, department_name
FROM   employees
  CROSS JOIN departments;