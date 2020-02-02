

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	
	('fastfood', 'Comida Rapida', 0)
	
	;

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
   (0,'fastfood', 0, 'Trabajador', 'Trabajador', 10, '{\r\n"tshirt_1":15,\r\n"tshirt_2":0,\r\n"torso_1":281,\r\n"torso_2":1,\r\n"pants_1":98,\r\n"pants_2":25,\r\n"decals_2":0,\r\n"decals_1":0,\r\n"chain_1":0,\r\n"glasses":0,\r\n"arms":0\r\n}', '{"tshirt_1":15,\r\n"tshirt_2":0,\r\n"torso_1":294,\r\n"torso_2":1,\r\n"pants_1":101,\r\n"pants_2":25,\r\n"decals_2":0,\r\n"decals_1":0,\r\n"chain_1":0,\r\n"glasses":0,\r\n"arms":0}'),
;

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `price`) VALUES

('burguerc', 'Hamburguesa de Carne', 1, 0, 1, 0),
('burguerp', 'Hamburguesa de Pollo', 1, 0, 1, 0),
('hcarnecruda', 'Carne Cruda', 1, 0, 1, 0),
('hcarnefrita', 'Carne Frita', 1, 0, 1, 0),
('hpollocrudo', 'Pollo Crudo', 1, 0, 1, 0),
('hpollofrito', 'Pollo Frito', 1, 0, 1, 0),
('brostercrudo', 'Broster crudo', 1, 0, 1, 0),
('brosterfrito', 'Broster frito', 1, 0, 1, 0),
('nuggetscrudo', 'Nugets Crudos', 1, 0, 1, 0),
('nuggetsfrito', 'Nugets Frito', 1, 0, 1, 0),
('pancortado', 'Pan Cortado', 1, 0, 1, 0),
('papascongeladas', 'Papas Congeladas', 1, 0, 1, 0),
('papasfritas', 'Papas Fritas', 1, 0, 1, 0),
('inkacola', 'Inka Cola', 1, 0, 1, 0),
('Sprite', 'Sprite', 1, 0, 1, 0),
('cocacola', 'Coca-cola', 5, 0, 1, 3),
('combo1', 'Orden Combo1', 1, 0, 1, 0),
('combo2', 'Orden Combo2', 1, 0, 1, 0),
('combo3', 'Orden Combo3', 1, 0, 1, 0),
('combo4', 'Orden Combo4', 1, 0, 1, 0),
('combo5', 'Orden Combo5', 1, 0, 1, 0),
('ticket', 'Ticket Pedido', 1, 0, 1, 0)

;
