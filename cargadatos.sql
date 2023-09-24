SET IDENTITY_INSERT Master.Regions ON;
INSERT INTO Master.Regions (region_code, region_name)
VALUES ('1','Asia'),
('2','Europa'), 
('3','Norte America'), 
('4','Sur America'), 
('5','Africa')
SET IDENTITY_INSERT Master.Regions OFF;

select*
from Master.regions

delete from Master.regions

SET IDENTITY_INSERT Master.Country ON;
INSERT INTO Master.country (country_id, country_name, country_region_id) VALUES
(1, 'Indonesia', 1),
(2, 'Tailandia', 1),
(3, 'Japon', 1),
(4, 'Alemania', 2),
(5, 'Francia', 2),
(6, 'Estados Unidos', 3), 
(7, 'Canada', 3), 
(8, 'Brasil', 4), 
(9, 'Argentina', 4), 
(10, 'South Africa', 5);
SET IDENTITY_INSERT Master.Country OFF;

SELECT*FROM Master.Country

--provinces--
SET IDENTITY_INSERT Master.Provinces ON;
INSERT INTO Master.provinces (prov_id, prov_name, prov_country_id) VALUES
(1, 'Jakarta', 1),
(2, 'Bali', 1),
(3, 'Chiang Mai', 2),
(4, 'Tokyo', 3),
(5, 'Berlin', 4),
(6, 'Paris', 5),
(7, 'California', 6),
(8, 'New York', 6),
(9, 'Ontario', 7),
(10, 'Sao Paulo', 8),
(11, 'Buenos Aires', 9),
(12, 'Cape Town', 10),
(13, 'Durban', 10),
(14, 'Gauteng', 10),
(15, 'Nairobi', 3),
(16, 'Cordoba', 9),
(17, 'Texas', 6),
(18, 'Brasilia',8);
SET IDENTITY_INSERT Master.Provinces OFF;

select* from Master.provinces
--direcciones--
SET IDENTITY_INSERT Master.Address ON;
INSERT INTO Master.address (addr_id, addr_line1, addr_line2, addr_city, addr_postal_code, addr_spatial_location, addr_prov_id) VALUES
(1, 'Jl. Sudirman No.1', 'J2 Surdigirl No.2', 'Jakarta', '12345', 'POINT(-6.2146 106.8451)', 1),
(2, 'Jl. Raya Kuta No.25', 'J3.Raya Kuta No.27', 'Bali', '54321', 'POINT(-8.7158 115.1702)', 2),
(3, '123 Moo 4, Tambon San Sai Noi', '456 Muu 5 tambo Sun Sai Sio', 'Chiang Mai', '67890', 'POINT(18.8408 98.9611)', 3),
(4, '1-1-1 Shibuya', '2-2-2 Naruto', 'Tokyo', '01234', 'POINT(35.6581 139.7414)', 4),
(5, '10 Unter den Linden', '11 Better Den Brock', 'Berlin', '23456', 'POINT(52.5166 13.3833)', 5),
(6, '55 Rue du Faubourg Saint-Honor�', NULL, 'Paris', '34567', 'POINT(48.8714 2.3074)', 6),
(7, '123 Main St', '456 Grenn St', 'Los Angeles', '45678', 'POINT(34.0522 -118.2437)', 7),
(8, '456 Park Ave', '235 Yellow av', 'New York', '56789', 'POINT(40.7711 -73.9742)', 8),
(9, '789 King St W', '731 Queens St W', 'Toronto', '67890', 'POINT(43.6468 -79.3933)', 9),
(10, '123 Avenida Paulista', '789 Avenida Brazil', 'Sao Paulo', '78901', 'POINT(-23.5674 -46.6476)', 10),
(11, '456 Calle Florida', '123 Calle Yacuiba', 'Buenos Aires', '89012', 'POINT(-34.6037 -58.3816)', 11),
(12, '123 Long St', '145 Small St', 'Cape Town', '90123', 'POINT(-33.9189 18.4232)', 12),
(13, '456 Durban Rd', '198 Rost RB', 'Durban', '01234', 'POINT(-29.8587 31.0218)', 13),
(14, '789 Oxford Rd', '124 Oxford St', 'Johannesburg', '12345', 'POINT(-26.2041 28.0473)', 14),
(15, '123 Uhuru Hwy', NULL, 'Nairobi', '23456', 'POINT(-1.2921 36.8219)', 15);
SET IDENTITY_INSERT Master.Address OFF;

select * from Master.address

--grupo de categorias--
SET IDENTITY_INSERT Master.category_group ON;
INSERT INTO Master.category_group (cagro_id, cagro_name, cagro_description, cagro_type, cagro_icon, cagro_icon_url)
VALUES
  (1, 'HABITACION', 'Habitaciones para que los hu�spedes se alojen', 'category', 'room.png', 'https://example.com/room.png'),
  (2, 'RESTAURANTE', 'Restaurante en el lugar para que los hu�spedes cenen', 'service', 'restaurant.png', 'https://example.com/restaurant.png'),
  (3, 'SALA DE REUNIONES', 'Salas para reuniones y eventos', 'facility', 'meeting_room.png', 'https://example.com/meeting_room.png'),
  (4, 'GYM', 'Centro de fitness para uso de los hu�spedes', 'facility', 'gym.png', 'https://example.com/gym.png'),
  (5, 'AULA', 'Sal�n de usos m�ltiples para eventos.', 'facility', 'aula.png', 'https://example.com/aula.png'),
  (6, 'PISCINA', 'Piscina para el uso de los hu�spedes', 'facility', 'swimming_pool.png', 'https://example.com/swimming_pool.png'),
  (7, 'SALON DE BAILE', 'Salon para eventos y fiestas', 'facility', 'balroom.png', 'https://example.com/balroom.png');
SET IDENTITY_INSERT Master.category_group OFF;
--politicas--
SET IDENTITY_INSERT Master.policy ON;
INSERT INTO Master.policy (poli_id,poli_name, poli_description)
VALUES
('1','Pol�tica de check-in anticipado', '
Pol�tica relacionada con solicitudes de check-in anticipado'),
('2','Pol�tica de salida tard�a', 'Pol�tica relacionada con solicitudes de salida tard�a'),
('3','Pol�tica de persona extra', 'Pol�tica relacionada con hu�spedes adicionales en la habitaci�n.'),
('4','Pol�tica de parqueo', 'Pol�tica relacionada con las instalaciones de aparcamiento.'),
('5','Pol�tica de servicio de habitaci�n', 'Pol�tica relacionada con solicitudes de servicio de habitaciones'),
('6', 'Pol�tica de Cargos Adicionales', 'Cargos por servicios adicionales'),
('7', 'Pol�tica de Ni�os', 'Pol�tica de alojamiento para ni�os'),
('8', 'Pol�tica de Cancelaci�n de Eventos ', 'Pol�tica de cancelaci�n de eventos especiales'),
('9', 'Pol�tica de Accesibilidad' , 'Accesibilidad para personas con discapacidad'),
('10', 'Pol�tica de Privacidad', 'Pol�tica de privacidad y protecci�n de datos');

SET IDENTITY_INSERT Master.policy OFF;

select* from Master.policy
--precio de items--
SET IDENTITY_INSERT Master.price_items ON;
INSERT INTO Master.price_items (prit_id, prit_name, prit_price, prit_description, prit_type, prit_icon_url)
VALUES
  (1, 'Cocacola', 15, 'Soda Cocacola 2L', 'SOFTDRINK', 'https://example.com/soda.png'),
  (2, 'Galletas dulces', 25, 'Galletas dulces de chocolate', 'SNACK', 'https://example.com/chocolate.png'),
  (3, 'Servicio de lavado de cabello', 120, 'Lavado profundo de cabello', 'SERVICE', 'https://example.com/head-massage.png'),
  (4, 'Sandwich de pollo', 20, 'Sandwich de pollo vegano', 'SNACK', 'https://example.com/snacks.png'),
  (5, 'Ba�o limpio', 50, 'Servicio de ba�os limpios', 'SERVICE', 'https://example.com/clean-bathroom.png'),
  (6, 'Lavado de automovil', 50, 'lavado de automovil', 'FACILITY', 'https://example.com/light-up-boots.png'),
  (7, 'Desayuno', 75, 'Desayuno completo para 2 personas', 'FOOD', 'https://example.com/breakfast.png'),
  (8, 'Lavanderia', 80, 'Servicio de lavanderia', 'SERVICE', 'https://example.com/laundry.png'),
  (9, 'Desayuno ingles', 120, 'Desayuno tipico de Estados unidos', 'FOOD', 'https://example.com/english-breakfast.png'),
  (10, 'Cerveza Huari', 20, 'Cerveza nacional', 'SOFTDRINK', 'https://example.com/iced-drink.png'),
  (11, 'Masaje Corporal', 200, 'Masaje completo', 'SERVICE', 'https://example.com/full-body-massage.png'),
  (12, 'Postres', 35, 'Postres tres leche', 'FOOD', 'https://example.com/dessert.png'),
  (13, 'zapatos para futbol', 50, 'Zapatos para jugar futbol', 'FACILITY', 'https://example.com/beach-shoes.png'),
  (14, 'Servicio limpieza de habitaciones', 45, 'Limpieza de habitacion', 'SERVICE', 'https://example.com/clean-room.png'),
  (15, 'Bebidas envasada', 10, 'Bebidas dulces envasadas', 'SOFTDRINK', 'https://example.com/packaged-drink.png');
SET IDENTITY_INSERT Master.price_items OFF;

--membresias--
insert into master.members (memb_name, memb_description)
values
('SILVER', 'La Membres�a SILVER brinda un 10% de descuento en todos los servicios del hotel'),
('GOLD', 'La membres�a GOLD ofrece un 20% de descuento en todos los servicios del hotel y servicio de late check-out gratuito hasta las 12 del mediod�a.'),
('VIP', 'La membres�a VIP ofrece un 30% de descuento en todos los servicios del hotel, late check-out gratuito hasta las 12 del mediod�a y acceso a la sala VIP'),
('WIZARD', 'La membres�a WIZARD ofrece un 50% de descuento en todos los servicios del hotel, salida tard�a gratuita hasta las 12 del mediod�a, acceso a la sala VIP y mejora de habitaci�n gratuita');

--payment.entity
SET IDENTITY_INSERT Payment.entity ON
INSERT
  INTO Payment.entity(entity_id)
VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25);
SET IDENTITY_INSERT Payment.Entity OFF;


--payment.bank
Insert Into Payment.bank (bank_entity_id, bank_code, bank_name) values (1, '0', 'BCP');
Insert Into Payment.bank (bank_entity_id, bank_code, bank_name) values (2, '1', 'BANCO GANADERO');
Insert Into Payment.bank (bank_entity_id, bank_code, bank_name) values (3, '2', 'BANCO SOL');
Insert Into Payment.bank (bank_entity_id, bank_code, bank_name) values (4, '3', 'MERCANTIL SANTA CRUZ');
Insert Into Payment.bank (bank_entity_id, bank_code, bank_name) values (5, '4', 'BANCO FORTALEZA');
Insert Into Payment.bank (bank_entity_id, bank_code, bank_name) values (7, '5', 'BANCO UNION');

SELECT* FROM payment.bank;


from Users.users

--Master.policy_category_group
INSERT INTO Master.policy_category_group (poca_poli_id, poca_cagro_id)
VALUES
(4, 1),
(2, 2),
(5, 2),
(3, 3),
(1, 4),
(2, 4),
(4, 4),
(5, 4),
(1, 5),
(3, 5),
(4, 5),
(5, 5),
(2, 6),
(4, 6),
(5, 6),
(1, 7),
(3, 7),
(5, 7);

SET IDENTITY_INSERT Master.service_task ON;
insert into master.service_task (seta_id, seta_name, seta_seq)
values
(1, 'Receptionista', 1),
(2, 'Conserje', 2),
(3, 'Chef', 3),
(4, 'Seguridad', 4),
(5, 'Administrador', 5);
SET IDENTITY_INSERT Master.service_task OFF;


INSERT INTO users.user_members (usme_user_id, usme_memb_name, usme_promote_date, usme_points, usme_type)
VALUES 

	   (3, 'VIP', '2022-03-01', 300, 'Active'),
	   (4, 'WIZARD', '2022-04-01', 400, 'Active'),
	   (5, 'SILVER', '2022-05-01', 500, 'Active'),
	   (6, 'GOLD', '2022-06-01', 600, 'Active'),
	   (7, 'VIP', '2022-07-01', 700, 'Active'),
	   (8, 'WIZARD', '2022-08-01', 800, 'Active'),
	   (9, 'SILVER', '2022-09-01', 900, 'Active'),
	   (10, 'GOLD', '2022-10-01', 1000, 'Active'),
	   (11, 'SILVER', '2022-11-01', 1000, 'Expired'),
	   (12, 'GOLD', '2022-12-01', 1000, 'Expired'),
	   (13, 'VIP', '2022-01-01', 1000, 'Expired'),
	   (14, 'WIZARD', '2022-02-01', 1000, 'Expired'),
	   (15, 'GOLD', '2022-03-01', 1000, 'Expired'),
	    (16, 'SILVER', '2023-01-01', 1100, 'Active'),
		(17, 'GOLD', '2023-02-01', 1200, 'Active'),
		(18, 'VIP', '2023-03-01', 1300, 'Active'),
		(19, 'WIZARD', '2023-04-01', 1400, 'Active'),
		(20, 'SILVER', '2023-05-01', 1500, 'Active'),
		(21, 'GOLD', '2023-06-01', 1600, 'Active'),
		(22, 'VIP', '2023-07-01', 1700, 'Active'),
		(23, 'WIZARD', '2023-08-01', 1800, 'Active'),
		(24, 'SILVER', '2023-09-01', 1900, 'Active'),
		(25, 'GOLD', '2023-10-01', 2000, 'Active'),
		(26, 'SILVER', '2023-11-01', 2100, 'Expired'),
		(27, 'GOLD', '2023-12-01', 2200, 'Expired'),
		(28, 'VIP', '2024-01-01', 2300, 'Expired'),
		(29, 'WIZARD', '2024-02-01', 2400, 'Expired'),
		(30, 'GOLD', '2024-03-01', 2500, 'Expired'),
		(31, 'SILVER', '2024-04-01', 2600, 'Active'),
		(32, 'GOLD', '2024-05-01', 2700, 'Active'),
		(33, 'VIP', '2024-06-01', 2800, 'Active'),
		(34, 'WIZARD', '2024-07-01', 2900, 'Active'),
		(35, 'SILVER', '2024-08-01', 3000, 'Active'),
		(36, 'SILVER', '2024-09-01', 3100, 'Active'),
		(37, 'GOLD', '2024-10-01', 3200, 'Active'),
		(38, 'VIP', '2024-11-01', 3300, 'Active'),
		(39, 'WIZARD', '2024-12-01', 3400, 'Active'),
		(40, 'SILVER', '2025-01-01', 3500, 'Active'),
		(41, 'GOLD', '2025-02-01', 3600, 'Active'),
		(42, 'VIP', '2025-03-01', 3700, 'Active'),
		(43, 'WIZARD', '2025-04-01', 3800, 'Active'),
		(44, 'SILVER', '2025-05-01', 3900, 'Active'),
		(45, 'GOLD', '2025-06-01', 4000, 'Active'),
		(46, 'SILVER', '2025-07-01', 4100, 'Expired'),
		(47, 'GOLD', '2025-08-01', 4200, 'Expired'),
		(48, 'VIP', '2025-09-01', 4300, 'Expired'),
		(49, 'WIZARD', '2025-10-01', 4400, 'Expired'),
		/*(50, 'GOLD', '2025-11-01', 4500, 'Expired');
		(51, 'SILVER', '2026-01-01', 4600, 'Active'),
		(52, 'GOLD', '2026-02-01', 4700, 'Active'),
		(53, 'VIP', '2026-03-01', 4800, 'Active'),
		(54, 'WIZARD', '2026-04-01', 4900, 'Active'),
		(55, 'SILVER', '2026-05-01', 5000, 'Active'),
		(56, 'GOLD', '2026-06-01', 5100, 'Active'),
		(57, 'VIP', '2026-07-01', 5200, 'Active'),
		(58, 'WIZARD', '2026-08-01', 5300, 'Active'),
		(59, 'SILVER', '2026-09-01', 5400, 'Active'),
		(60, 'GOLD', '2026-10-01', 5500, 'Active'),
		(61, 'SILVER', '2026-11-01', 5600, 'Expired'),
		(62, 'GOLD', '2026-12-01', 5700, 'Expired'),
		(63, 'VIP', '2027-01-01', 5800, 'Expired'),
		(64, 'WIZARD', '2027-02-01', 5900, 'Expired'),
		(65, 'GOLD', '2027-03-01', 6000, 'Expired'),
		(66, 'SILVER', '2027-04-01', 6100, 'Active'),
		(67, 'GOLD', '2027-05-01', 6200, 'Active'),
		(68, 'VIP', '2027-06-01', 6300, 'Active'),
		(69, 'WIZARD', '2027-07-01', 6400, 'Active'),
		(70, 'SILVER', '2027-08-01', 6500, 'Active'),
		(71, 'GOLD', '2027-09-01', 6600, 'Active'),
		(72, 'VIP', '2027-10-01', 6700, 'Active'),
		(73, 'WIZARD', '2027-11-01', 6800, 'Active'),
		(74, 'SILVER', '2027-12-01', 6900, 'Active'),
		(75, 'GOLD', '2028-01-01', 7000, 'Active');*/
		select* from Users.user_members
		

SET IDENTITY_INSERT Users.users ON;
INSERT INTO users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date)
VALUES (1,'John Smith', 'T', 'Acme Inc.', 'john.smith@acme.com', '123-456-7890', GETDATE()),
	   (2,'Jane Doe', 'C', 'XYZ Corp.', 'jane.doe@xyz.com', '123-456-7891', GETDATE()),
	   (3,'Account Realta', 'C', 'Hotel Realta.', 'realta@hotel.com', '033-456-7899', GETDATE()),
	   (4,'Samantha Williams', 'T', 'Def Corp.', 'samantha.williams@def.com', '123-456-7893', GETDATE()),
	   (5,'Michael Brown', 'C', 'Ghi Inc.', 'michael.brown@ghi.com', '123-456-7894', GETDATE()),
	   (6,'Emily Davis', 'I', 'Jkl Ltd.', 'emily.davis@jkl.com', '123-456-7895', GETDATE()),
	   (7,'William Thompson', 'T', 'Mno Inc.', 'william.thompson@mno.com', '123-456-7896', GETDATE()),
	   (8,'Ashley Johnson', 'C', 'Pqr Corp.', 'ashley.johnson@pqr.com', '123-456-7897', GETDATE()),
	   (9,'David Anderson', 'I', 'Stu Inc.', 'david.anderson@stu.com', '123-456-7898', GETDATE()),
	   (10,'Bob Johnson', 'I', 'ABC Inc.', 'bob.johnson@abc.com', '123-456-7892', GETDATE()),
	   (11,'David Brown', 'T', 'Example Co', 'david.brown@example.com', '555-555-1222', GETDATE()),
	   (12,'Jessica Smith', 'C', 'Test Inc', 'jessica.smith@test.com', '555-555-1223', GETDATE()),
	   (13,'James Johnson', 'I', 'Acme Inc', 'james.johnson@acme.com', '555-555-1224', GETDATE()),
	   (14,'Samantha Williams', 'C', 'XYZ Corp', 'samantha.williams@xyz.com', '555-555-1225', GETDATE()),
	   (15,'Robert Davis', 'T', 'Example Co', 'robert.davis@example.com', '555-555-1226', GETDATE()),
	 
		(16,'Isabel Garcia', 'T', 'Ghi Inc.', 'isabel.garcia@ghi.com', '555-555-1227', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(17,'Andrew Wilson', 'C', 'Pqr Corp', 'andrew.wilson@pqr.com', '555-555-1228', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(18,'Olivia Martinez', 'I', 'Stu Inc', 'olivia.martinez@stu.com', '555-555-1229', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(19,'Liam Rodriguez', 'C', 'XYZ Corp', 'liam.rodriguez@xyz.com', '555-555-1230', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(20,'Sophia Perez', 'T', 'Example Co', 'sophia.perez@example.com', '555-555-1231', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(21,'Lucas Gonzalez', 'C', 'Test Inc', 'lucas.gonzalez@test.com', '555-555-1232', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(22,'Emma Hernandez', 'I', 'Acme Inc', 'emma.hernandez@acme.com', '555-555-1233', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(23,'Mia Smith', 'T', 'Def Corp', 'mia.smith@def.com', '555-555-1234', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(24,'Noah Johnson', 'C', 'Ghi Inc', 'noah.johnson@ghi.com', '555-555-1235', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(25,'Aiden Davis', 'I', 'Jkl Ltd', 'aiden.davis@jkl.com', '555-555-1236', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(26,'Sophia Martinez', 'T', 'Mno Inc', 'sophia.martinez@mno.com', '555-555-1237', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(27,'Oliver Hernandez', 'C', 'Pqr Corp', 'oliver.hernandez@pqr.com', '555-555-1238', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(28,'Amelia Davis', 'I', 'Stu Inc', 'amelia.davis@stu.com', '555-555-1239', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(29,'Liam Johnson', 'T', 'Example Co', 'liam.johnson@example.com', '555-555-1240', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
		(30,'Olivia Garcia', 'C', 'Test Inc', 'olivia.garcia@test.com', '555-555-1241', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (31,'Ella Moore', 'T', 'Def Corp', 'ella.moore@def.com', '555-555-1242', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (32,'Ethan Hall', 'C', 'Ghi Inc', 'ethan.hall@ghi.com', '555-555-1243', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (33,'Harper Lewis', 'I', 'Jkl Ltd', 'harper.lewis@jkl.com', '555-555-1244', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (34,'Aiden Scott', 'T', 'Mno Inc', 'aiden.scott@mno.com', '555-555-1245', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (35,'Lucy Turner', 'C', 'Pqr Corp', 'lucy.turner@pqr.com', '555-555-1246', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (36,'Daniel Ward', 'I', 'Stu Inc', 'daniel.ward@stu.com', '555-555-1247', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (37,'Madison Harris', 'T', 'Example Co', 'madison.harris@example.com', '555-555-1248', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (38,'Jack Nelson', 'C', 'Test Inc', 'jack.nelson@test.com', '555-555-1249', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (39,'Sophia Thompson', 'I', 'Acme Inc', 'sophia.thompson@acme.com', '555-555-1250', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (40,'Oliver White', 'T', 'Def Corp', 'oliver.white@def.com', '555-555-1251', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (41,'Ava Moore', 'C', 'Ghi Inc', 'ava.moore@ghi.com', '555-555-1252', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (42,'Liam Clark', 'I', 'Jkl Ltd', 'liam.clark@jkl.com', '555-555-1253', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (43,'Emma Walker', 'T', 'Mno Inc', 'emma.walker@mno.com', '555-555-1254', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (44,'Mia Perez', 'C', 'Pqr Corp', 'mia.perez@pqr.com', '555-555-1255', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (45,'Noah King', 'I', 'Stu Inc', 'noah.king@stu.com', '555-555-1256', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (46,'Olivia Martinez', 'T', 'Example Co', 'olivia.martinez@example.com', '555-555-1257', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (47,'Lucas Johnson', 'C', 'Test Inc', 'lucas.johnson@test.com', '555-555-1258', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (48,'Emily Smith', 'I', 'Acme Inc', 'emily.smith@acme.com', '555-555-1259', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (49,'Liam Anderson', 'T', 'Def Corp', 'liam.anderson@def.com', '555-555-1260', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE())),
    (50,'Aiden Davis', 'C', 'Ghi Inc', 'aiden.davis@ghi.com', '555-555-1261', DATEADD(day, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()));



insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (51, 'Chuck Mion', 'T', 'Rutherford-Dietrich', 'cmion1e@cpanel.net', '+52 544 553 4587', '1987-02-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (52, 'Letizia Kingsmill', 'I', 'Crist, Torp and Jenkins', 'lkingsmill1f@wix.com', '+93 196 167 1589', '2022-05-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (53, 'Mair Pierson', 'T', 'Stroman, Kautzer and Stiedemann', 'mpierson1g@eepurl.com', '+86 979 272 2639', '1989-07-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (54, 'Averill Lewtey', 'C', 'Sipes Group', 'alewtey1h@tripadvisor.com', '+33 154 497 2091', '2000-01-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (55, 'Kerwinn Gateley', 'I', 'Zulauf, Rosenbaum and King', 'kgateley1i@naver.com', '+62 553 693 3812', '2000-05-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (56, 'Lauraine Grieveson', 'T', 'Ratke-Bailey', 'lgrieveson1j@indiatimes.com', '+385 226 816 4862', '2015-07-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (57, 'Dudley Grennan', 'C', 'C-Littel', 'dgrennan1k@netvibes.com', '+86 859 501 7359', '1985-07-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (58, 'Annabel Battleson', 'C', 'Dickens Group', 'abattleson1l@themeforest.net', '+46 422 771 5832', '2001-03-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (59, 'Arron Novacek', 'C', 'Ernser-McDermott', 'anovacek1m@ted.com', '+86 974 303 1751', '1993-12-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (60, 'Dianemarie Pavitt', 'C', 'Gutkowski Group', 'dpavitt1n@vk.com', '+49 646 124 3983', '1995-05-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (61, 'Jacklin Heibl', 'T', 'Bashirian-Nolan', 'jheibl1o@youtu.be', '+1 254 267 5550', '1988-06-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (62, 'Rab Frammingham', 'C', 'Goldner-Gleason', 'rframmingham1p@dot.gov', '+358 109 615 8451', '1981-08-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (63, 'Reed Longea', 'I', 'Renner-Bosco', 'rlongea1q@hibu.com', '+264 443 642 7636', '1988-01-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (64, 'Jillayne Rubertis', 'T', 'Ebert-Ankunding', 'jrubertis1r@ezinearticles.com', '+62 744 828 7169', '1988-11-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (65, 'Reggie Emblem', 'T', 'Kessler Group', 'remblem1s@people.com.cn', '+86 564 118 1523', '2004-08-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (66, 'Marlow Ivanchov', 'C', 'Fadel-Bashirian', 'mivanchov1t@webmd.com', '+48 274 758 0832', '2017-03-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (67, 'Joelle Trime', 'T', 'Stiedemann Group', 'jtrime1u@phoca.cz', '+7 286 253 2505', '1982-10-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (68, 'Luce Norley', 'C', 'Moen-Kunde', 'lnorley1v@cnbc.com', '+351 933 491 0240', '1983-05-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (69, 'Glynnis Bartlam', 'C', 'Keebler-Lueilwitz', 'gbartlam1w@live.com', '+86 850 464 9173', '1985-07-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (70, 'Toddie Glossop', 'I', 'Williamson-Wiegand', 'tglossop1x@wiley.com', '+593 242 695 5481', '1987-11-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (71, 'Teddy Febvre', 'T', 'Parisian-Dare', 'tfebvre1y@a8.net', '+850 485 254 4738', '2015-05-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (72, 'Chalmers Stolli', 'I', 'Hilll Inc', 'cstolli1z@clickbank.net', '+62 647 908 0572', '1983-04-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (73, 'Ricca Gamon', 'I', 'Keeling-Schneider', 'rgamon20@epa.gov', '+48 376 750 7028', '2019-06-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (74, 'Codee Frankel', 'I', 'Ritchie Inc', 'cfrankel21@chicagotribune.com', '+86 547 153 2208', '1984-10-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (75, 'Vasily Grishechkin', 'T', 'Price, Rowe and Veum', 'vgrishechkin22@uiuc.edu', '+30 314 331 4334', '1999-05-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (76, 'Janek Goodram', 'C', 'Moen, Gislason and Moen', 'jgoodram23@msu.edu', '+63 462 676 5533', '1983-04-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (77, 'Tarah Graveston', 'T', 'Bradtke-Haley', 'tgraveston24@cbslocal.com', '+1 494 870 9552', '2021-04-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (78, 'Vin Jordanson', 'T', 'Bradtke-Collier', 'vjordanson25@noaa.gov', '+7 188 468 5592', '2017-10-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (79, 'Corry Doctor', 'C', 'Runolfsson-Hermiston', 'cdoctor26@wordpress.com', '+86 143 730 2179', '2012-05-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (80, 'Westleigh Espinha', 'T', 'Volkman Group', 'wespinha27@intel.com', '+380 101 245 0351', '1984-08-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (81, 'Ingram Barends', 'T', 'Kshlerin Inc', 'ibarends28@stumbleupon.com', '+52 788 538 1980', '2013-10-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (82, 'Abbot McGilbon', 'C', 'Christiansen, Bechtelar and Jacobi', 'amcgilbon29@lycos.com', '+966 784 443 7768', '1995-05-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (83, 'Virgilio Arnowicz', 'C', 'Streich, McLaughlin and Hagenes', 'varnowicz2a@google.co.jp', '+81 448 285 5407', '2022-11-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (84, 'Rockwell Storton', 'I', 'Lind Inc', 'rstorton2b@homestead.com', '+57 534 588 7362', '2018-01-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (85, 'Reuven Bowker', 'I', 'Hickle-Wiegand', 'rbowker2c@geocities.jp', '+86 173 149 5349', '2010-12-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (86, 'Kylie Filipychev', 'C', 'Kovacek, Zemlak and Ward', 'kfilipychev2d@loc.gov', '+252 917 510 2975', '1982-11-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (87, 'Carmelita Spincks', 'T', 'Torp and Sons', 'cspincks2e@microsoft.com', '+86 686 388 9510', '2015-04-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (88, 'Shirlee Kingswood', 'C', 'Kshlerin-Kuhn', 'skingswood2f@printfriendly.com', '+420 332 622 8594', '2009-05-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (89, 'Erhard Shawyers', 'C', 'Hessel-Aufderhar', 'eshawyers2g@feedburner.com', '+63 485 361 6337', '1989-08-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (90, 'Leia Halahan', 'C', 'C, Mraz and Prosacco', 'lhalahan2h@cyberchimps.com', '+380 618 577 1825', '2019-02-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (91, 'Nichol Revening', 'C', 'Cronin, O''Hara and Watsica', 'nrevening2i@amazon.com', '+233 101 720 9476', '2007-01-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (92, 'Burton Isacsson', 'T', 'Ruecker-Schaefer', 'bisacsson2j@flickr.com', '+48 535 194 8471', '1997-07-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (93, 'Chet Treversh', 'C', 'Powlowski-Wisozk', 'ctreversh2k@meetup.com', '+61 774 741 1561', '2020-05-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (94, 'Gracie Moubray', 'I', 'Cassin-Kuhn', 'gmoubray2l@privacy.gov.au', '+1 626 621 8725', '2018-02-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (95, 'Eada Tousy', 'C', 'Hilll LLC', 'etousy2m@prnewswire.com', '+54 589 182 8194', '2015-04-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (96, 'Luella Welland', 'T', 'Greenfelder-Rogahn', 'lwelland2n@prnewswire.com', '+370 485 557 1014', '2003-07-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (97, 'Murdock Spours', 'I', 'Balistreri Inc', 'mspours2o@gizmodo.com', '+33 816 786 7441', '2005-10-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (98, 'Kinnie Netti', 'I', 'Herzog, Paucek and Jerde', 'knetti2p@bigcartel.com', '+55 431 414 9927', '2009-07-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (99, 'Fidelio Dunsmore', 'C', 'Corwin-Goldner', 'fdunsmore2q@sciencedaily.com', '+372 404 624 6507', '1993-05-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (100, 'Leodora Benger', 'C', 'Lemke-Torphy', 'lbenger2r@harvard.edu', '+62 537 730 9900', '2001-09-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (101, 'Symon McVey', 'T', 'Funk, Cronin and Grant', 'smcvey2s@vistaprint.com', '+86 589 668 2128', '1991-07-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (102, 'Raddy Poznanski', 'I', 'Sanford-Rau', 'rpoznanski2t@wix.com', '+86 292 801 5291', '1988-04-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (103, 'Joe Shrimplin', 'T', 'Corkery-Pfeffer', 'jshrimplin2u@merriam-webster.com', '+86 776 999 1511', '2012-05-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (104, 'Ulrike Featley', 'T', 'Koepp-Lebsack', 'ufeatley2v@bing.com', '+86 243 625 2516', '2022-07-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (105, 'Bernadine Johananoff', 'C', 'Stokes, Keebler and McCullough', 'bjohananoff2w@narod.ru', '+63 118 867 8515', '2008-01-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (106, 'Corabelle Oakeshott', 'T', 'Kihn-Breitenberg', 'coakeshott2x@imdb.com', '+62 881 473 8169', '2016-01-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (107, 'Othella Dandy', 'I', 'MacGyver Group', 'odandy2y@t-online.de', '+30 577 470 0576', '2022-07-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (108, 'Lyssa De Roeck', 'I', 'Leuschke Inc', 'lde2z@wordpress.org', '+33 495 901 9853', '1999-10-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (109, 'Legra Kunc', 'I', 'Feeney and Sons', 'lkunc30@baidu.com', '+62 144 602 9675', '2023-02-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (110, 'Walther Lenham', 'I', 'Gorczany, Dooley and Miller', 'wlenham31@theglobeandmail.com', '+49 314 266 7546', '2008-05-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (111, 'Sacha MacLice', 'I', 'Towne-Little', 'smaclice32@wix.com', '+963 135 344 3762', '1986-10-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (112, 'Pippa Thrussell', 'C', 'Harvey, Hickle and Hoeger', 'pthrussell33@unc.edu', '+58 116 642 7245', '2017-08-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (113, 'Cass Lidgard', 'I', 'Dicki-Beer', 'clidgard34@ucoz.ru', '+7 125 333 2247', '1993-12-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (114, 'Elsie Pattle', 'C', 'Boyer-Cummerata', 'epattle35@bluehost.com', '+55 338 347 2517', '1992-07-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (115, 'Gerhardt Woollons', 'C', 'Feeney, Predovic and Runte', 'gwoollons36@umich.edu', '+86 750 653 0070', '1981-07-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (116, 'Libby Soal', 'C', 'Bernier-McClure', 'lsoal37@nbcnews.com', '+86 237 451 8771', '1997-09-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (117, 'Joel Eddisford', 'T', 'Stiedemann, Stanton and Tremblay', 'jeddisford38@vk.com', '+86 145 862 5983', '1989-02-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (118, 'Elliot Bignall', 'I', 'Fahey-Donnelly', 'ebignall39@ihg.com', '+86 740 627 5244', '2019-08-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (119, 'Artur Sponder', 'C', 'Rippin Group', 'asponder3a@wordpress.org', '+691 695 847 2740', '1981-06-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (120, 'Antonetta Lenox', 'T', 'Schaefer Group', 'alenox3b@shutterfly.com', '+7 434 535 5718', '2006-06-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (121, 'Fredelia Henric', 'T', 'Larson, Trantow and Gleason', 'fhenric3c@berkeley.edu', '+48 427 284 7515', '1989-10-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (122, 'Larisa Bailes', 'C', 'Borer, Abshire and Ledner', 'lbailes3d@spotify.com', '+86 362 884 1690', '2021-11-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (123, 'Jada Filewood', 'C', 'Runolfsdottir, Effertz and Rolfson', 'jfilewood3e@smh.com.au', '+51 221 567 8975', '2003-04-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (124, 'Gwenni Lightbody', 'T', 'O''Connell-Becker', 'glightbody3f@slideshare.net', '+380 435 167 4981', '2005-08-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (125, 'Isabelita Farnham', 'T', 'Beier-Kiehn', 'ifarnham3g@bluehost.com', '+33 737 276 4042', '1982-04-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (126, 'Everett Habercham', 'C', 'Fadel and Sons', 'ehabercham3h@friendfeed.com', '+86 747 217 3255', '2013-01-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (127, 'Tim Skottle', 'C', 'Pollich LLC', 'tskottle3i@wordpress.com', '+351 297 621 7176', '2011-07-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (128, 'Eileen Ketchell', 'C', 'Koelpin, Ernser and Prohaska', 'eketchell3j@berkeley.edu', '+86 155 412 2477', '1993-11-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (129, 'Christie Nucator', 'T', 'Goldner Group', 'cnucator3k@usatoday.com', '+62 291 405 2681', '1992-02-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (130, 'Ilyssa Melhuish', 'I', 'Rempel-Gulgowski', 'imelhuish3l@qq.com', '+46 569 498 4348', '1984-04-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (131, 'Bartholomeo Confait', 'C', 'Maggio, Satterfield and Mayert', 'bconfait3m@dot.gov', '+62 736 467 3246', '1981-03-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (132, 'Daphene Creber', 'I', 'Stehr Group', 'dcreber3n@jalbum.net', '+55 941 620 5159', '1982-07-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (133, 'Barby Kibbel', 'T', 'Klocko Inc', 'bkibbel3o@zimbio.com', '+358 922 219 7487', '2003-08-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (134, 'Vaclav Carvilla', 'C', 'Koch Group', 'vcarvilla3p@mapy.cz', '+86 460 961 9752', '1982-12-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (135, 'Wernher MacSherry', 'T', 'Beatty, Cummerata and Conn', 'wmacsherry3q@gmpg.org', '+86 990 788 1446', '1982-01-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (136, 'Oliviero Petraitis', 'I', 'Von, Turcotte and C', 'opetraitis3r@xrea.com', '+86 726 686 6409', '2019-08-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (137, 'Hamish Gautrey', 'T', 'Howe LLC', 'hgautrey3s@weibo.com', '+48 591 932 8803', '2022-01-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (138, 'Meade Bleesing', 'I', 'Kulas, Doyle and Hagenes', 'mbleesing3t@psu.edu', '+263 632 566 1339', '2005-03-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (139, 'Maure Jonke', 'T', 'Marquardt-Corwin', 'mjonke3u@imgur.com', '+57 452 907 2596', '2023-04-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (140, 'Afton Maffeo', 'T', 'Leannon Group', 'amaffeo3v@woothemes.com', '+86 384 410 1401', '2014-08-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (141, 'Axel Mordin', 'T', 'Waelchi-Parker', 'amordin3w@de.vu', '+62 615 470 0141', '2016-06-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (142, 'Leodora Zink', 'C', 'Corwin, MacGyver and Bernier', 'lzink3x@wisc.edu', '+86 696 341 4751', '1998-04-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (143, 'Pierrette Ivashin', 'T', 'Powlowski Inc', 'pivashin3y@toplist.cz', '+7 521 260 1707', '2013-04-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (144, 'Jaclyn Diggar', 'T', 'Windler, Hahn and Jenkins', 'jdiggar3z@deviantart.com', '+84 692 873 9006', '1981-07-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (145, 'Orella Colvill', 'T', 'Corkery, Beer and Christiansen', 'ocolvill40@si.edu', '+62 113 199 7949', '1981-02-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (146, 'Enriqueta Comelli', 'I', 'Medhurst, Welch and Schneider', 'ecomelli41@g.co', '+30 566 624 5612', '1981-06-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (147, 'Sally Ridout', 'C', 'Langworth Inc', 'sridout42@omniture.com', '+63 253 685 1350', '2016-12-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (148, 'Christyna Madigan', 'T', 'Lindgren Inc', 'cmadigan43@msn.com', '+51 876 434 4308', '2012-08-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (149, 'T Tonna', 'C', 'Stracke, Miller and Leannon', 'rtonna44@prlog.org', '+63 136 171 9946', '1982-05-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (150, 'Ignacio Ormston', 'C', 'Strosin, Funk and Gottlieb', 'iormston45@nature.com', '+63 486 297 4315', '1981-01-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (151, 'Sonia Sanney', 'T', 'Dare-Okuneva', 'ssanney46@census.gov', '+55 166 206 0879', '2004-02-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (152, 'Benjamin Carvil', 'I', 'Harris and Sons', 'bcarvil47@purevolume.com', '+351 124 926 7581', '1990-03-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (153, 'Janey Ferreri', 'T', 'Rogahn, Ankunding and Vandervort', 'jferreri48@huffingtonpost.com', '+86 666 597 6143', '1981-10-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (154, 'Welch Seale', 'C', 'Fay-Dare', 'wseale49@go.com', '+57 733 170 1049', '2006-03-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (155, 'Kathryn Huntriss', 'T', 'Littel-Howe', 'khuntriss4a@cloudflare.com', '+86 191 766 2673', '1992-08-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (156, 'Lorrin Hailston', 'T', 'Turner-Schuppe', 'lhailston4b@themeforest.net', '+63 575 589 6282', '2004-02-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (157, 'Basilio Guille', 'C', 'Gulgowski-Morar', 'bguille4c@vistaprint.com', '+62 641 484 0044', '2004-09-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (158, 'Courtenay Fetherstonhaugh', 'C', 'Zboncak Group', 'cfetherstonhaugh4d@ycombinator.com', '+1 352 343 9400', '2015-07-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (159, 'Aaron Gettone', 'C', 'Waelchi Group', 'agettone4e@upenn.edu', '+55 553 324 1954', '2017-08-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (160, 'Fidel Synan', 'I', 'Gusikowski, Hahn and Goldner', 'fsynan4f@hostgator.com', '+86 106 599 0503', '1998-08-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (161, 'Corny Attoc', 'C', 'Feeney Inc', 'cattoc4g@utexas.edu', '+86 300 529 9034', '2023-04-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (162, 'Vicki Iskow', 'I', 'Shields LLC', 'viskow4h@creativecommons.org', '+81 660 801 3816', '1993-07-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (163, 'Susana Coyett', 'T', 'Littel-Johnston', 'scoyett4i@purevolume.com', '+963 323 430 7606', '2011-12-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (164, 'Amabel Slany', 'C', 'Lebsack, Carter and Metz', 'aslany4j@histats.com', '+86 360 724 0765', '1980-10-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (165, 'Shaw Wiffler', 'T', 'Von Inc', 'swiffler4k@chicagotribune.com', '+62 610 624 7472', '2015-02-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (166, 'Cristine Yushin', 'I', 'Feeney Group', 'cyushin4l@1688.com', '+216 116 642 1411', '2018-03-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (167, 'Catarina Warricker', 'C', 'Wiegand-Hagenes', 'cwarricker4m@freewebs.com', '+33 519 741 9630', '2020-04-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (168, 'Jackie Cleugher', 'I', 'Roob and Sons', 'jcleugher4n@list-manage.com', '+48 558 951 7661', '1996-09-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (169, 'Abelard Fonzo', 'I', 'Cole, Wilderman and Stiedemann', 'afonzo4o@joomla.org', '+358 238 289 3476', '2004-12-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (170, 'Arie Leuty', 'C', 'Batz-Corkery', 'aleuty4p@reuters.com', '+62 468 933 7692', '2019-09-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (171, 'Temple Fleeman', 'I', 'Ward, Kihn and Hills', 'tfleeman4q@abc.net.au', '+254 485 136 9276', '1993-03-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (172, 'Lennie Shotbolt', 'C', 'Haley, Crist and Padberg', 'lshotbolt4r@oracle.com', '+504 284 147 5483', '1985-09-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (173, 'Annmaria Hyndman', 'T', 'Hintz-Beier', 'ahyndman4s@merriam-webster.com', '+46 754 459 6460', '1999-12-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (174, 'Laurianne Simkin', 'T', 'Streich Group', 'lsimkin4t@admin.ch', '+55 267 179 5389', '1989-09-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (175, 'Juan Elster', 'T', 'Nicolas, Rau and Thompson', 'jelster4u@weibo.com', '+51 891 974 7832', '1987-11-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (176, 'Fritz Burkhill', 'C', 'Metz-Jaskolski', 'fburkhill4v@sbwire.com', '+358 335 561 0841', '2023-03-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (177, 'Garey Shelvey', 'I', 'Fahey Inc', 'gshelvey4w@bbb.org', '+55 969 478 3447', '1997-02-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (178, 'Bronnie Pena', 'I', 'Heathcote LLC', 'bpena4x@yandex.ru', '+351 895 241 8507', '1997-07-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (179, 'Vally Gledhill', 'I', 'Towne, Reinger and Mosciski', 'vgledhill4y@phpbb.com', '+86 351 393 8991', '1991-04-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (180, 'Paule McTrusty', 'I', 'Cartwright LLC', 'pmctrusty4z@desdev.cn', '+20 428 453 6904', '2009-10-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (181, 'Charline Hovard', 'C', 'Barton-Koch', 'chovard50@wp.com', '+86 502 139 6172', '1997-11-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (182, 'Clyde Whittington', 'C', 'Mraz Group', 'cwhittington51@mit.edu', '+261 412 494 6743', '1998-04-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (183, 'Wandis Agnolo', 'I', 'Grimes, Simonis and Block', 'wagnolo52@skype.com', '+375 560 254 9575', '2006-07-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (184, 'Mercy Kahan', 'I', 'Wolff-Kessler', 'mkahan53@earthlink.net', '+54 582 533 6455', '2020-06-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (185, 'Gayelord Screas', 'C', 'Mraz-Ryan', 'gscreas54@yahoo.com', '+82 897 561 4442', '1998-01-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (186, 'Glyn Falkus', 'C', 'Senger, Macejkovic and Hettinger', 'gfalkus55@aboutads.info', '+7 569 340 2369', '2008-06-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (187, 'Rivi Mohan', 'C', 'Haley-Herzog', 'rmohan56@meetup.com', '+351 185 778 3156', '1989-11-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (188, 'Wendy Snodin', 'T', 'Cole LLC', 'wsnodin57@hud.gov', '+48 740 438 1186', '1983-12-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (189, 'Maggy Gaylard', 'I', 'Beahan-White', 'mgaylard58@aol.com', '+62 827 402 1643', '2013-10-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (190, 'Martita McKleod', 'T', 'Muller and Sons', 'mmckleod59@deviantart.com', '+86 445 865 5460', '2019-10-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (191, 'Felicio Vader', 'T', 'DuBuque, Abernathy and Schuster', 'fvader5a@vinaora.com', '+33 775 322 0380', '2012-11-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (192, 'Barry Ducastel', 'I', 'Schinner LLC', 'bducastel5b@arizona.edu', '+505 829 309 1064', '1998-06-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (193, 'Benedick Summerley', 'T', 'Berge-Reinger', 'bsummerley5c@bloglovin.com', '+1 719 885 0583', '1984-11-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (194, 'Patrick Keward', 'C', 'Rice-Morissette', 'pkeward5d@angelfire.com', '+380 139 292 7884', '2003-10-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (195, 'Jamie Congreave', 'C', 'Roberts, Runolfsson and Schmeler', 'jcongreave5e@pinterest.com', '+62 522 259 7355', '1995-07-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (196, 'Sybilla Rosson', 'I', 'Williamson Group', 'srosson5f@archive.org', '+234 724 588 0611', '1998-01-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (197, 'Base Espinoy', 'I', 'Howe, Farrell and Rath', 'bespinoy5g@wikimedia.org', '+420 134 653 2408', '1989-11-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (198, 'Darci McGiff', 'C', 'Wiegand Group', 'dmcgiff5h@chronoengine.com', '+86 824 458 2144', '1981-12-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (199, 'Corry Bellefonte', 'I', 'McLaughlin-Franecki', 'cbellefonte5i@vkontakte.ru', '+51 940 198 0892', '1996-06-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (200, 'Ashien Ullyott', 'T', 'Turner, Emard and Gleichner', 'aullyott5j@people.com.cn', '+591 268 892 6691', '2009-06-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (201, 'Burnaby Buttress', 'T', 'Botsford Group', 'bbuttress5k@who.int', '+86 963 819 6706', '1997-06-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (202, 'Kerri Ciciura', 'C', 'Daugherty, Abernathy and Weber', 'kciciura5l@google.co.jp', '+86 106 976 2112', '2017-11-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (203, 'Winifred Goodyer', 'T', 'Carter Group', 'wgoodyer5m@who.int', '+81 456 257 3241', '1983-01-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (204, 'Jake Klemencic', 'T', 'Dicki, Lynch and Mante', 'jklemencic5n@cocolog-nifty.com', '+382 466 338 7834', '2014-06-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (205, 'Haskel Kezar', 'T', 'Langosh-Ferry', 'hkezar5o@google.cn', '+62 529 304 1516', '2000-11-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (206, 'Imogene Sefton', 'C', 'Ryan Group', 'isefton5p@apple.com', '+62 320 480 9660', '2002-10-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (207, 'Fanni Blinde', 'C', 'Lebsack-Casper', 'fblinde5q@utexas.edu', '+993 547 778 4257', '2000-07-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (208, 'Ferguson Bricknall', 'T', 'VonRueden Inc', 'fbricknall5r@businesswire.com', '+48 972 988 0563', '1998-10-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (209, 'Donalt Plum', 'C', 'Moore, Hyatt and Hoeger', 'dplum5s@mashable.com', '+242 272 306 1670', '2001-11-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (210, 'Indira Mishow', 'I', 'Langosh, Spinka and Rutherford', 'imishow5t@posterous.com', '+62 827 460 6833', '2022-12-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (211, 'Barbra Spellacy', 'C', 'Hane-Mosciski', 'bspellacy5u@youku.com', '+86 852 267 5511', '2007-01-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (212, 'Fonsie Culham', 'C', 'Kassulke, Wiza and Jaskolski', 'fculham5v@tripod.com', '+48 860 904 2763', '1983-08-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (213, 'Natala Stennet', 'T', 'Kuhlman-Baumbach', 'nstennet5w@tripadvisor.com', '+62 657 113 6597', '1996-06-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (214, 'Laughton Duddin', 'C', 'Feeney, Jenkins and Beier', 'lduddin5x@t.co', '+48 240 556 3131', '1985-10-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (215, 'Lucienne Vennard', 'C', 'Stoltenberg Group', 'lvennard5y@vimeo.com', '+86 915 377 7493', '2010-12-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (216, 'Alexina Gamwell', 'I', 'Altenwerth, Bartoletti and Botsford', 'agamwell5z@i2i.jp', '+255 190 646 5046', '1981-11-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (217, 'Olimpia Scherer', 'T', 'West, Schoen and Dibbert', 'oscherer60@nationalgeographic.com', '+63 749 799 8810', '2010-06-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (218, 'Sanford Floweth', 'C', 'Emard Inc', 'sfloweth61@google.pl', '+880 852 680 5794', '2014-01-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (219, 'Cally Norley', 'I', 'Muller LLC', 'cnorley62@tamu.edu', '+386 927 294 3749', '2019-07-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (220, 'Nicolette Consterdine', 'C', 'Douglas-Leffler', 'nconsterdine63@angelfire.com', '+380 848 556 9905', '1993-06-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (221, 'Jilleen Shropsheir', 'T', 'Nikolaus Group', 'jshropsheir64@yelp.com', '+7 212 280 1013', '2003-01-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (222, 'Rhett Himsworth', 'I', 'Daniel-Labadie', 'rhimsworth65@blog.com', '+1 616 753 6859', '2023-05-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (223, 'Bertina Lighton', 'I', 'Senger-Willms', 'blighton66@arstechnica.com', '+7 304 465 8584', '1994-08-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (224, 'Patrica Debell', 'C', 'Osinski, Jacobson and Roberts', 'pdebell67@flavors.me', '+55 274 653 0087', '2016-06-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (225, 'Lombard Simonitto', 'C', 'O''Hara, Stokes and Goldner', 'lsimonitto68@howstuffworks.com', '+33 975 815 4799', '2009-08-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (226, 'Berton Gaukrodge', 'T', 'Rowe, Schumm and Rath', 'bgaukrodge69@list-manage.com', '+86 584 433 1899', '2013-05-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (227, 'Virge Schapero', 'C', 'Kuvalis Inc', 'vschapero6a@godaddy.com', '+81 992 730 5317', '2011-04-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (228, 'Rene Lovel', 'I', 'Quitzon-DuBuque', 'rlovel6b@globo.com', '+84 723 694 8468', '2003-10-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (229, 'Ambrosius Serotsky', 'T', 'Orn and Sons', 'aserotsky6c@istockphoto.com', '+51 939 933 5365', '2002-08-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (230, 'Bryana Muckian', 'C', 'Morissette LLC', 'bmuckian6d@constantcontact.com', '+86 123 319 1320', '2014-02-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (231, 'Carlos Capitano', 'C', 'Sauer, Runolfsson and Klein', 'ccapitano6e@google.com.hk', '+62 333 316 3287', '2008-01-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (232, 'Curtice Pettiford', 'C', 'Kozey Group', 'cpettiford6f@nymag.com', '+62 142 170 0806', '2019-11-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (233, 'Suzie Goulbourn', 'T', 'Pacocha, O''Conner and Medhurst', 'sgoulbourn6g@deviantart.com', '+62 205 452 7421', '2008-05-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (234, 'Franny Youll', 'C', 'Schumm, Pagac and Ankunding', 'fyoull6h@ed.gov', '+48 707 754 3327', '2009-02-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (235, 'Clair Poutress', 'C', 'Hansen Group', 'cpoutress6i@gravatar.com', '+86 334 452 3875', '2021-01-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (236, 'Rutger Potter', 'C', 'Yundt-Conroy', 'rpotter6j@wikia.com', '+62 294 707 9240', '2006-10-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (237, 'Fernandina Gommery', 'T', 'Hane, Wiza and Lowe', 'fgommery6k@ask.com', '+62 566 309 3601', '1991-05-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (238, 'Roby Bennetts', 'T', 'Nader, Davis and Walter', 'rbennetts6l@skype.com', '+86 700 702 6205', '1984-11-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (239, 'Lyndel Kersey', 'I', 'Nitzsche, Hammes and Pacocha', 'lkersey6m@smugmug.com', '+380 305 584 8261', '1980-09-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (240, 'Ingamar Goshawk', 'T', 'Jones Inc', 'igoshawk6n@patch.com', '+1 984 287 5805', '2009-12-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (241, 'Earle Eversley', 'T', 'Denesik, Altenwerth and Deckow', 'eeversley6o@parallels.com', '+95 927 231 2080', '2006-02-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (242, 'Robinetta Tinham', 'I', 'Ebert, Streich and Treutel', 'rtinham6p@dmoz.org', '+251 765 294 8096', '2014-04-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (243, 'Shurlock Britton', 'C', 'Runolfsson-Zboncak', 'sbritton6q@ucoz.com', '+233 289 186 6377', '1985-11-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (244, 'Lucais Farny', 'I', 'Schuster-Stehr', 'lfarny6r@lulu.com', '+374 157 616 8742', '2004-04-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (245, 'Tammy Rosini', 'C', 'Schamberger-Kshlerin', 'trosini6s@bbc.co.uk', '+62 332 392 6030', '1997-05-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (246, 'Queenie Benedetti', 'T', 'Farrell LLC', 'qbenedetti6t@dmoz.org', '+1 937 859 3458', '2001-10-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (247, 'Franz Jekel', 'I', 'Gerlach, Effertz and Funk', 'fjekel6u@upenn.edu', '+58 508 979 2280', '2003-04-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (248, 'Kit Derrell', 'I', 'Rolfson-Leffler', 'kderrell6v@walmart.com', '+86 887 674 6283', '2016-01-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (249, 'Amabelle Gorick', 'T', 'Ernser and Sons', 'agorick6w@cmu.edu', '+675 670 868 6683', '2017-04-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (250, 'Aeriel Showalter', 'C', 'Emard, Prohaska and Carroll', 'ashowalter6x@e-recht24.de', '+353 699 413 0391', '2012-06-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (251, 'Benyamin Froude', 'T', 'Abernathy, Douglas and Ledner', 'bfroude6y@spotify.com', '+62 440 843 3814', '2017-08-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (252, 'Tripp Chastenet', 'C', 'Yundt LLC', 'tchastenet6z@spotify.com', '+237 895 226 9138', '2016-01-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (253, 'Alma MacAskill', 'T', 'Vandervort Group', 'amacaskill70@alexa.com', '+86 622 554 1578', '2006-09-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (254, 'Chrotoem Grzegorek', 'C', 'Hermann-Kris', 'cgrzegorek71@shareasale.com', '+62 615 982 5281', '2013-08-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (255, 'Cecilia Webling', 'I', 'Corwin LLC', 'cwebling72@etsy.com', '+258 326 991 7805', '2014-08-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (256, 'Maurine Scala', 'I', 'Russel, Bahringer and Deckow', 'mscala73@hubpages.com', '+62 282 270 5731', '2022-09-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (257, 'Larisa Collington', 'T', 'Olson Group', 'lcollington74@mayoclinic.com', '+62 156 367 7347', '1998-09-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (258, 'Shea Sowray', 'I', 'McDermott-Pfeffer', 'ssowray75@nature.com', '+359 949 464 3711', '1987-07-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (259, 'Udall McKinnon', 'T', 'Lynch-Botsford', 'umckinnon76@example.com', '+86 322 878 5909', '1994-03-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (260, 'Jabez Syratt', 'C', 'Stanton, Lebsack and Bogan', 'jsyratt77@joomla.org', '+63 708 324 1319', '2003-08-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (261, 'Gena Noorwood', 'I', 'Powlowski, Zulauf and Tromp', 'gnoorwood78@lulu.com', '+33 263 379 9433', '2000-02-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (262, 'Welbie Crucitti', 'T', 'Legros and Sons', 'wcrucitti79@bbc.co.uk', '+58 271 748 2691', '2013-07-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (263, 'Karna Blucher', 'C', 'Willms LLC', 'kblucher7a@shinystat.com', '+220 642 693 7031', '1993-06-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (264, 'Cherlyn Janecek', 'C', 'Runte-Kub', 'cjanecek7b@smugmug.com', '+27 712 566 7280', '1982-01-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (265, 'Traver Bazylets', 'I', 'Strosin-Lesch', 'tbazylets7c@weebly.com', '+1 361 329 1898', '2022-09-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (266, 'Berne Chastagnier', 'I', 'Thiel, Runolfsdottir and O''Hara', 'bchastagnier7d@scientificamerican.com', '+7 224 741 3137', '1995-12-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (267, 'Jourdain Shipman', 'T', 'Kris, Stiedemann and Luettgen', 'jshipman7e@cdc.gov', '+255 960 544 4624', '2022-06-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (268, 'Vin Tuite', 'I', 'Armstrong, Hills and Nitzsche', 'vtuite7f@businesswire.com', '+7 388 935 8922', '2013-06-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (269, 'Manolo Jancy', 'C', 'Stiedemann and Sons', 'mjancy7g@addthis.com', '+86 161 939 4844', '1998-07-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (270, 'Babb Twohig', 'T', 'Parisian Group', 'btwohig7h@bloglines.com', '+46 199 900 0636', '2009-12-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (271, 'Adolf Coughtrey', 'I', 'Boyle-Stanton', 'acoughtrey7i@wix.com', '+1 937 754 4514', '1981-09-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (272, 'Natasha Antonomolii', 'C', 'Paucek-Durgan', 'nantonomolii7j@nps.gov', '+62 949 177 7712', '1988-08-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (273, 'Eula Redler', 'I', 'Reichert-Anderson', 'eredler7k@marriott.com', '+975 695 724 0517', '2002-06-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (274, 'Jonis Hellings', 'C', 'Senger, Schuppe and Hammes', 'jhellings7l@posterous.com', '+86 510 852 9895', '2008-03-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (275, 'Whitney Chong', 'C', 'Kihn Group', 'wchong7m@techcrunch.com', '+86 424 943 4937', '2023-03-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (276, 'Abigael Hutcheson', 'I', 'Muller Inc', 'ahutcheson7n@mac.com', '+1 790 914 8443', '1982-04-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (277, 'Liliane Tettley', 'I', 'Cremin-Kshlerin', 'ltettley7o@imdb.com', '+7 946 348 7141', '2013-05-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (278, 'Millie Cancellieri', 'T', 'Wilkinson-Brakus', 'mcancellieri7p@cdbaby.com', '+86 621 998 0025', '2004-09-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (279, 'Doroteya Brogini', 'C', 'Hayes Group', 'dbrogini7q@bizjournals.com', '+420 343 947 4484', '2005-05-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (280, 'Colby Evert', 'C', 'Sanford-Kling', 'cevert7r@dot.gov', '+7 334 791 7542', '2018-04-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (281, 'Bendicty Sentance', 'I', 'Runolfsdottir LLC', 'bsentance7s@ocn.ne.jp', '+1 626 579 0430', '2017-07-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (282, 'Sherrie Shillabeare', 'T', 'Steuber-Ward', 'sshillabeare7t@bloglovin.com', '+63 919 871 2816', '2001-07-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (283, 'Meryl Willock', 'C', 'Hackett-Jast', 'mwillock7u@mapy.cz', '+380 154 786 4524', '1998-10-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (284, 'Brenn McMullen', 'C', 'Little Group', 'bmcmullen7v@yolasite.com', '+46 203 904 3021', '2008-09-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (285, 'Frasco Holson', 'C', 'Gerhold, O''Kon and Roberts', 'fholson7w@zdnet.com', '+27 599 218 2132', '2003-07-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (286, 'Bettye Inkin', 'C', 'Kohler-Ratke', 'binkin7x@networksolutions.com', '+7 315 190 2478', '2016-06-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (287, 'Merry Levin', 'C', 'Abbott-Bechtelar', 'mlevin7y@diigo.com', '+60 608 102 7322', '1988-05-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (288, 'Guillemette Penrith', 'C', 'Schmitt and Sons', 'gpenrith7z@hexun.com', '+359 146 269 9526', '2005-05-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (289, 'Hilde Wilkins', 'I', 'Bosco-Hegmann', 'hwilkins80@blogtalkradio.com', '+260 705 519 8712', '2019-04-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (290, 'Orren Bashford', 'I', 'Macejkovic Inc', 'obashford81@ustream.tv', '+33 236 523 7198', '1999-04-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (291, 'Thadeus Brickstock', 'C', 'Emard, Krajcik and Reichel', 'tbrickstock82@simplemachines.org', '+27 492 784 9513', '1983-01-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (292, 'Tiphani Brandenburg', 'C', 'Volkman LLC', 'tbrandenburg83@unicef.org', '+48 625 454 3349', '1986-10-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (293, 'Charyl Dowell', 'C', 'Glover-Klocko', 'cdowell84@opensource.org', '+1 851 250 3323', '2010-07-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (294, 'Anica Castane', 'C', 'Lemke-Hamill', 'acastane85@shareasale.com', '+51 865 930 3537', '1996-06-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (295, 'Moe Conneely', 'I', 'Schimmel, Pacocha and Baumbach', 'mconneely86@edublogs.org', '+93 103 965 3716', '2008-05-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (296, 'Maren Lease', 'I', 'Hermiston and Sons', 'mlease87@yahoo.com', '+86 257 127 9549', '2021-06-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (297, 'Sophie Nast', 'T', 'Ebert Inc', 'snast88@loc.gov', '+502 270 362 0478', '1985-01-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (298, 'Katha Stother', 'C', 'Treutel-DuBuque', 'kstother89@indiatimes.com', '+86 202 148 5234', '1995-03-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (299, 'Danna Cunney', 'I', 'Schulist, Robel and Schmeler', 'dcunney8a@upenn.edu', '+86 378 741 2201', '2020-06-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (300, 'Muffin Knightley', 'T', 'Mohr, Carroll and Shields', 'mknightley8b@cnn.com', '+351 477 972 5073', '2009-05-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (301, 'Alfonse Pelcheur', 'I', 'Brekke-Paucek', 'apelcheur8c@taobao.com', '+66 933 970 6661', '1995-11-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (302, 'Adelina Wickey', 'C', 'Zulauf, Mills and Williamson', 'awickey8d@soundcloud.com', '+63 192 258 6619', '2007-03-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (303, 'Tammy Roadnight', 'C', 'Casper Inc', 'troadnight8e@deviantart.com', '+86 403 560 1777', '2016-05-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (304, 'Augie Bernardeschi', 'T', 'Rowe, Erdman and Labadie', 'abernardeschi8f@themeforest.net', '+81 367 792 2227', '2002-12-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (305, 'Drusie Khomishin', 'T', 'O''Reilly, Swift and Schneider', 'dkhomishin8g@nasa.gov', '+48 911 698 7978', '2017-11-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (306, 'Paxon Yorke', 'T', 'Aufderhar, Dickinson and Heidenreich', 'pyorke8h@nytimes.com', '+7 119 200 1907', '2000-09-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (307, 'Orion Ion', 'C', 'Douglas-Wiegand', 'oion8i@histats.com', '+380 742 455 1407', '1993-11-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (308, 'Cinnamon Di Batista', 'C', 'Bosco-Stiedemann', 'cdi8j@noaa.gov', '+66 720 392 7160', '2008-01-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (309, 'Georgeanna Bundy', 'T', 'Brakus-Wilkinson', 'gbundy8k@dyndns.org', '+420 855 962 7779', '2012-06-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (310, 'Susanna Elcox', 'T', 'Hammes-Predovic', 'selcox8l@dyndns.org', '+57 477 953 9113', '1983-07-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (311, 'Hamlen Dilland', 'C', 'McCullough Inc', 'hdilland8m@nhs.uk', '+55 196 145 0755', '2001-12-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (312, 'Honey Joreau', 'I', 'Fadel Group', 'hjoreau8n@ucsd.edu', '+351 600 583 2368', '1993-09-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (313, 'Darlleen Askam', 'T', 'Effertz LLC', 'daskam8o@cisco.com', '+63 337 381 0401', '2022-02-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (314, 'Garrek Hollows', 'T', 'Satterfield-Romaguera', 'ghollows8p@behance.net', '+62 682 198 9365', '2015-04-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (315, 'Lynnea Bowser', 'C', 'O''Conner and Sons', 'lbowser8q@jalbum.net', '+7 959 811 7079', '2018-10-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (316, 'Joellyn Wynter', 'I', 'Collins-Tillman', 'jwynter8r@bandcamp.com', '+62 886 971 7606', '1988-04-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (317, 'Montague Di Giorgio', 'I', 'D''Amore, Gutmann and Ernser', 'mdi8s@unesco.org', '+48 191 574 1090', '2008-10-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (318, 'Alaine Seabrooke', 'C', 'Cassin Inc', 'aseabrooke8t@hhs.gov', '+380 307 299 1301', '1995-06-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (319, 'Sher Buntine', 'T', 'Ritchie LLC', 'sbuntine8u@tuttocitta.it', '+63 925 308 4009', '2007-02-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (320, 'Brit MacGahy', 'C', 'Prosacco, Brown and Torphy', 'bmacgahy8v@latimes.com', '+86 880 285 0301', '2003-05-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (321, 'Leanna Jursch', 'C', 'Gerlach-Hudson', 'ljursch8w@ihg.com', '+7 893 753 2063', '1990-08-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (322, 'Nehemiah Bontoft', 'T', 'Keeling-Larson', 'nbontoft8x@walmart.com', '+81 428 156 1162', '1982-07-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (323, 'Gene Lenz', 'C', 'Kuvalis and Sons', 'glenz8y@free.fr', '+52 247 337 9636', '1985-06-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (324, 'Judah Babbage', 'T', 'C-Stanton', 'jbabbage8z@columbia.edu', '+1 682 643 4063', '1995-10-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (325, 'Karin Presnell', 'C', 'Kutch-Nienow', 'kpresnell90@uol.com.br', '+86 406 433 1565', '1996-05-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (326, 'Roby Erskine Sandys', 'C', 'Smith, Nader and Carter', 'rerskine91@cargocollective.com', '+62 777 481 8125', '2003-04-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (327, 'Maxie Metts', 'C', 'Moen, Kertzmann and Heathcote', 'mmetts92@shareasale.com', '+385 809 961 6413', '2000-11-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (328, 'Thadeus Streeten', 'C', 'Breitenberg Inc', 'tstreeten93@newsvine.com', '+86 286 400 4932', '2002-12-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (329, 'Chandra Meagher', 'T', 'Casper-Schumm', 'cmeagher94@scientificamerican.com', '+351 870 968 3617', '2010-09-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (330, 'Ailina Havoc', 'I', 'Beer-Hane', 'ahavoc95@yahoo.co.jp', '+86 325 133 8534', '1995-01-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (331, 'Dody Costellow', 'T', 'Schinner Inc', 'dcostellow96@wordpress.org', '+358 978 741 4570', '2003-02-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (332, 'Georgena Aristide', 'T', 'Schamberger-Spencer', 'garistide97@ebay.com', '+62 136 567 4849', '2022-04-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (333, 'Gregoor Stuther', 'C', 'Marquardt, Rutherford and Purdy', 'gstuther98@github.io', '+33 582 509 7768', '2002-01-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (334, 'Dominique Proudlock', 'C', 'Renner and Sons', 'dproudlock99@com.com', '+86 577 753 5526', '1997-02-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (335, 'Gabrielle McKinnell', 'T', 'Bosco-Armstrong', 'gmckinnell9a@xing.com', '+62 705 177 2639', '1995-03-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (336, 'Donal Hallbord', 'I', 'Osinski-Huels', 'dhallbord9b@ibm.com', '+55 793 877 4453', '2000-10-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (337, 'Deloris Fidelus', 'C', 'Kuphal Group', 'dfidelus9c@delicious.com', '+52 843 483 1243', '1998-10-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (338, 'Diego Broggini', 'C', 'Fisher, Boehm and DuBuque', 'dbroggini9d@blogger.com', '+974 745 117 3170', '1993-09-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (339, 'Wynne Pullen', 'C', 'Boyer Group', 'wpullen9e@parallels.com', '+7 353 149 1688', '2020-06-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (340, 'Antonino Goacher', 'T', 'Prosacco, Cruickshank and Block', 'agoacher9f@joomla.org', '+46 680 444 9130', '2022-11-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (341, 'Madelena Ilchuk', 'T', 'Goldner, Beier and Yost', 'milchuk9g@vinaora.com', '+62 888 770 5612', '2016-10-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (342, 'Leeanne Delgardo', 'C', 'Cronin-Stracke', 'ldelgardo9h@illinois.edu', '+380 287 324 2348', '1985-01-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (343, 'Dorothea Jacquemard', 'C', 'Lakin Inc', 'djacquemard9i@hugedomains.com', '+86 946 444 8815', '2010-04-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (344, 'Nance Bortoletti', 'T', 'Parisian-Bechtelar', 'nbortoletti9j@symantec.com', '+66 160 579 4771', '2005-06-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (345, 'Blondie Ferrandez', 'I', 'Wilderman, Corkery and Lindgren', 'bferrandez9k@theatlantic.com', '+86 543 401 9770', '2007-11-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (346, 'Shaughn Blatcher', 'I', 'Mraz, Hamill and O''Hara', 'sblatcher9l@discuz.net', '+62 842 898 1827', '1994-02-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (347, 'Stacy Pistol', 'C', 'Blanda, Moen and Blanda', 'spistol9m@usatoday.com', '+62 762 854 7898', '2005-03-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (348, 'Shamus Gruczka', 'I', 'Heaney-Shanahan', 'sgruczka9n@springer.com', '+358 959 379 5666', '1984-12-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (349, 'Zorana Eisikovitsh', 'C', 'Wilderman Group', 'zeisikovitsh9o@buzzfeed.com', '+229 900 635 1592', '2017-07-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (350, 'Lotty Haizelden', 'I', 'Beahan-Kuvalis', 'lhaizelden9p@creativecommons.org', '+62 473 845 2846', '2021-12-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (351, 'Kaleena Chicchelli', 'I', 'Rogahn, Herzog and Prosacco', 'kchicchelli9q@51.la', '+62 515 388 4635', '1985-11-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (352, 'Guendolen Tibalt', 'I', 'Cruickshank, Krajcik and Turner', 'gtibalt9r@opensource.org', '+62 333 933 9386', '1991-02-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (353, 'Alikee Bye', 'C', 'McClure, Berge and Larkin', 'abye9s@pinterest.com', '+62 452 858 2287', '1998-01-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (354, 'Raeann Tointon', 'C', 'Ryan-Mante', 'rtointon9t@ehow.com', '+48 668 360 6256', '2015-01-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (355, 'Ted Brummell', 'C', 'Rice, Romaguera and Heidenreich', 'tbrummell9u@guardian.co.uk', '+49 297 586 6361', '1985-05-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (356, 'Alvinia Atherley', 'C', 'Torphy Group', 'aatherley9v@fotki.com', '+86 121 677 7822', '1992-11-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (357, 'Park Hillam', 'C', 'Gleason-Upton', 'phillam9w@ning.com', '+58 397 787 5533', '2022-08-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (358, 'Tomas Newbold', 'T', 'O''Keefe and Sons', 'tnewbold9x@bbc.co.uk', '+39 749 538 3296', '2002-09-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (359, 'Jourdan Reuven', 'I', 'Stark, Schmitt and Hand', 'jreuven9y@devhub.com', '+351 599 436 7762', '2021-12-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (360, 'Stanleigh McCreery', 'T', 'Lemke, Ryan and Herman', 'smccreery9z@mit.edu', '+33 470 817 2642', '2008-12-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (361, 'Lynnett Siege', 'C', 'Schimmel Group', 'lsiegea0@themeforest.net', '+7 509 577 1548', '1993-02-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (362, 'Elia Apfelmann', 'T', 'Davis Group', 'eapfelmanna1@eepurl.com', '+54 106 124 5987', '2014-01-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (363, 'Sophie Kernocke', 'C', 'Glover, Batz and Funk', 'skernockea2@mit.edu', '+20 113 263 6415', '2012-03-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (364, 'Bendick Braker', 'T', 'Turcotte-Dach', 'bbrakera3@photobucket.com', '+48 995 789 3575', '1996-11-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (365, 'Toma Attock', 'C', 'Tillman-Wolf', 'tattocka4@cornell.edu', '+62 513 211 1133', '2014-12-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (366, 'Florri Ranklin', 'C', 'Cremin Inc', 'franklina5@github.io', '+52 592 550 2696', '1997-02-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (367, 'Tades Baudry', 'C', 'Bauch-Brown', 'tbaudrya6@loc.gov', '+63 234 776 8400', '2002-03-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (368, 'Lind Lante', 'C', 'Mills, Stark and Fay', 'llantea7@ucoz.ru', '+46 678 865 3970', '2021-06-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (369, 'Ree Nudds', 'C', 'Wiza LLC', 'rnuddsa8@java.com', '+52 898 527 0841', '2022-12-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (370, 'Diahann Verissimo', 'T', 'Cormier-Langworth', 'dverissimoa9@unblog.fr', '+86 801 874 6603', '1980-10-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (371, 'Hanson Satford', 'C', 'Kovacek, Bruen and Wehner', 'hsatfordaa@virginia.edu', '+86 163 301 1537', '1989-04-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (372, 'Junie Le Sarr', 'C', 'Shields LLC', 'jleab@mediafire.com', '+62 395 980 3888', '1996-04-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (373, 'Nelle Hawe', 'T', 'Lehner Group', 'nhaweac@oakley.com', '+374 107 172 2356', '1988-04-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (374, 'Berget T', 'C', 'Wilderman, Gibson and Morissette', 'borangead@oracle.com', '+385 527 250 8131', '2022-08-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (375, 'Roma Thacker', 'I', 'Bins Inc', 'rthackerae@loc.gov', '+86 117 514 8864', '2019-01-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (376, 'Keefer Bartrap', 'C', 'Frami-Schulist', 'kbartrapaf@hostgator.com', '+86 747 161 7889', '2021-04-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (377, 'Shelly Darque', 'T', 'Treutel, O''Reilly and Hilpert', 'sdarqueag@princeton.edu', '+420 500 833 7981', '1988-10-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (378, 'Yorgos Acom', 'I', 'Hilll, Runolfsson and O''Hara', 'yacomah@nationalgeographic.com', '+46 737 842 1510', '1981-05-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (379, 'Stephenie O''Corr', 'T', 'Cassin LLC', 'socorrai@blinklist.com', '+225 348 706 4311', '2009-06-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (380, 'Lilian Poynzer', 'C', 'Koelpin-Towne', 'lpoynzeraj@infoseek.co.jp', '+55 949 242 1175', '2015-02-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (381, 'Rivalee Hessel', 'I', 'Lang-Douglas', 'rhesselak@whitehouse.gov', '+976 803 226 0769', '2014-04-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (382, 'Hollyanne Bain', 'C', 'Swaniawski-Wilderman', 'hbainal@senate.gov', '+389 909 978 6017', '2000-12-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (383, 'Tierney Honacker', 'T', 'Hirthe, Kulas and Hirthe', 'thonackeram@webmd.com', '+53 941 592 5353', '2014-01-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (384, 'Bryna Elkin', 'C', 'Ziemann and Sons', 'belkinan@xing.com', '+48 142 939 3601', '2014-10-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (385, 'Maria Kohrsen', 'C', 'Corwin, O''Hara and Hodkiewicz', 'mkohrsenao@jigsy.com', '+212 232 532 3595', '2005-11-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (386, 'Cass Bett', 'C', 'Homenick Inc', 'cbettap@last.fm', '+420 721 595 3160', '2008-03-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (387, 'Audi Norker', 'C', 'Schumm-Anderson', 'anorkeraq@patch.com', '+86 461 737 8082', '1999-04-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (388, 'Noah Adanez', 'I', 'Goodwin Group', 'nadanezar@sourceforge.net', '+52 255 613 6315', '2017-06-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (389, 'Mathias Niece', 'T', 'Skiles LLC', 'mnieceas@jugem.jp', '+53 588 835 7931', '2018-02-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (390, 'Brianne Mackness', 'I', 'Haley, Gusikowski and Raynor', 'bmacknessat@cbslocal.com', '+374 484 933 1581', '1996-09-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (391, 'Clarke Garroway', 'T', 'Langosh-VonRueden', 'cgarrowayau@virginia.edu', '+357 613 321 5263', '2021-11-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (392, 'Carola Durnall', 'T', 'Brekke, Dach and Nikolaus', 'cdurnallav@blog.com', '+380 332 243 5064', '2009-06-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (393, 'Hayley Raincin', 'T', 'Stroman, Hyatt and Stokes', 'hraincinaw@comsenz.com', '+216 733 166 7171', '1991-02-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (394, 'Willis Card', 'C', 'Kassulke-Thiel', 'wcardax@theatlantic.com', '+58 358 287 7036', '1981-09-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (395, 'Thorin Terron', 'C', 'Koch, Paucek and Gutmann', 'tterronay@ning.com', '+352 753 594 1134', '2016-03-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (396, 'Bryna Bendell', 'C', 'Gerlach-Roberts', 'bbendellaz@jimdo.com', '+57 256 161 3668', '1991-02-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (397, 'Eliot Caen', 'T', 'Marks LLC', 'ecaenb0@networksolutions.com', '+61 293 144 8494', '2011-07-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (398, 'Jamil Stellin', 'C', 'Walter-Doyle', 'jstellinb1@cmu.edu', '+86 724 149 8074', '1989-06-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (399, 'Weston Dawdry', 'C', 'Kassulke-Little', 'wdawdryb2@stumbleupon.com', '+351 512 756 2698', '1996-09-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (400, 'Gale Salvadori', 'I', 'Breitenberg LLC', 'gsalvadorib3@mlb.com', '+86 949 203 9974', '2007-10-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (401, 'Merilee Lemonby', 'C', 'Wiza, Parker and Crona', 'mlemonbyb4@biblegateway.com', '+86 436 576 6104', '1992-05-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (402, 'Lorinda Moyer', 'T', 'Kohler, Boyle and Kautzer', 'lmoyerb5@house.gov', '+976 686 144 4354', '2017-06-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (403, 'Madelin Mouth', 'C', 'Cole Inc', 'mmouthb6@vkontakte.ru', '+86 400 199 0928', '1984-04-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (404, 'Allie Burman', 'C', 'Ryan Group', 'aburmanb7@chronoengine.com', '+502 596 748 2695', '2018-02-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (405, 'Ware Unworth', 'T', 'Hilll, Kautzer and Hagenes', 'wunworthb8@typepad.com', '+58 809 987 2718', '2012-01-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (406, 'Meriel Wigzell', 'T', 'Wunsch Group', 'mwigzellb9@dailymail.co.uk', '+51 803 316 2808', '1981-01-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (407, 'Orsola Elcomb', 'C', 'Rempel-Hermann', 'oelcombba@nifty.com', '+880 604 776 5539', '2017-01-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (408, 'Hersch McNysche', 'C', 'Connelly-Bailey', 'hmcnyschebb@google.com', '+967 773 325 2743', '2021-04-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (409, 'Jenilee Desson', 'I', 'Stroman-Lang', 'jdessonbc@cornell.edu', '+256 982 543 0788', '1986-02-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (410, 'Chariot Koschke', 'I', 'Kuvalis, Schroeder and Cassin', 'ckoschkebd@ocn.ne.jp', '+7 395 115 3302', '1988-11-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (411, 'Munroe Blockey', 'C', 'Klein LLC', 'mblockeybe@apache.org', '+227 691 436 4280', '2015-11-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (412, 'Callida Goldspink', 'T', 'Goodwin-Ullrich', 'cgoldspinkbf@ehow.com', '+93 474 831 5909', '1988-11-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (413, 'Bertrando Pocke', 'T', 'Hermiston, Wiza and Wuckert', 'bpockebg@ucsd.edu', '+63 906 536 9810', '1995-12-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (414, 'Irwinn Kenny', 'I', 'Nicolas Inc', 'ikennybh@nps.gov', '+62 711 694 7229', '2006-06-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (415, 'Giffer Borer', 'I', 'Gislason, Reichel and Hettinger', 'gborerbi@google.it', '+856 951 744 6827', '1991-08-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (416, 'Chickie Cullerne', 'C', 'McClure, Bogan and Aufderhar', 'ccullernebj@sourceforge.net', '+62 534 312 0130', '1996-12-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (417, 'Elliott Troucher', 'T', 'Jones-McDermott', 'etroucherbk@istockphoto.com', '+55 358 956 1302', '1996-06-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (418, 'Shalna Rosettini', 'C', 'Bins, Grady and Walker', 'srosettinibl@cyberchimps.com', '+7 862 924 7391', '2010-01-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (419, 'Rice Makiver', 'T', 'Skiles Group', 'rmakiverbm@ustream.tv', '+86 289 702 9665', '1993-02-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (420, 'Emmalynne Braun', 'C', 'Purdy, Wintheiser and Doyle', 'ebraunbn@moonfruit.com', '+7 536 985 9916', '1988-05-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (421, 'Anica Greenig', 'C', 'Kohler-Keeling', 'agreenigbo@tiny.cc', '+506 613 537 1092', '2007-02-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (422, 'Sibbie Rosthorn', 'I', 'Reilly, Weissnat and Jast', 'srosthornbp@elpais.com', '+1 280 779 9528', '2002-04-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (423, 'Leonhard Dauber', 'I', 'Conn, Schuster and Towne', 'ldauberbq@noaa.gov', '+998 999 904 8469', '2005-05-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (424, 'Jan Masham', 'C', 'Little-Price', 'jmashambr@nymag.com', '+86 588 604 1623', '1981-12-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (425, 'Kelsey Cripin', 'I', 'Graham, Lesch and Fritsch', 'kcripinbs@amazon.com', '+86 210 208 1721', '1987-09-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (426, 'Reynard Brede', 'I', 'Adams, Feest and Senger', 'rbredebt@hatena.ne.jp', '+62 329 380 0206', '2016-12-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (427, 'Moritz Szach', 'C', 'Leuschke-Feest', 'mszachbu@cyberchimps.com', '+55 729 235 3455', '1995-08-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (428, 'Wenda Cabera', 'T', 'Walsh Group', 'wcaberabv@imgur.com', '+63 235 303 8900', '2001-06-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (429, 'Dorry Musso', 'C', 'Wunsch, Hauck and Johnston', 'dmussobw@engadget.com', '+51 956 328 3222', '2012-04-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (430, 'Kalle Kenealy', 'T', 'Nicolas-Leuschke', 'kkenealybx@ihg.com', '+374 421 588 1111', '2011-08-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (431, 'Elroy Mayhead', 'I', 'Huels-Reichert', 'emayheadby@e-recht24.de', '+86 168 215 9925', '1995-05-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (432, 'Glenda McCrachen', 'T', 'Wisoky Group', 'gmccrachenbz@apache.org', '+86 771 290 1610', '2010-04-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (433, 'Richardo Spir', 'C', 'Botsford Inc', 'rspirc0@cornell.edu', '+507 354 666 4861', '1988-07-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (434, 'Elbertine Wiltshear', 'C', 'Braun, Beier and Harris', 'ewiltshearc1@jimdo.com', '+63 403 649 2741', '1996-02-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (435, 'Lynnet Isworth', 'I', 'Muller, Gleichner and Ortiz', 'lisworthc2@fastcompany.com', '+972 470 325 5937', '2004-06-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (436, 'Avie Ride', 'T', 'Torp Inc', 'aridec3@example.com', '+962 810 256 2732', '1992-07-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (437, 'Sharai Diego', 'I', 'O''Conner-Hahn', 'sdiegoc4@mail.ru', '+86 357 245 5675', '2008-02-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (438, 'Calv Kraft', 'T', 'Rohan, Franecki and Stracke', 'ckraftc5@mashable.com', '+86 344 301 7808', '1988-11-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (439, 'Fredericka Zarfai', 'C', 'Borer, Pacocha and Goodwin', 'fzarfaic6@amazon.com', '+86 148 851 0173', '2018-04-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (440, 'Ingrim Jewess', 'T', 'Goyette Group', 'ijewessc7@tripod.com', '+501 400 233 6704', '2020-03-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (441, 'Alphonso Wesker', 'C', 'Dickens, Padberg and Christiansen', 'aweskerc8@de.vu', '+46 553 741 8288', '2010-11-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (442, 'Nannette Witherby', 'C', 'Howe LLC', 'nwitherbyc9@reddit.com', '+27 785 836 4899', '2006-06-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (443, 'Sher Yea', 'T', 'Zulauf Inc', 'syeaca@meetup.com', '+82 387 249 3411', '1984-08-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (444, 'Beverly Edgehill', 'C', 'Legros, Stark and Hartmann', 'bedgehillcb@devhub.com', '+237 808 622 8097', '1982-10-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (445, 'Sheelah Perassi', 'I', 'Dickens-Collins', 'sperassicc@businessinsider.com', '+31 662 829 1406', '2010-11-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (446, 'Beulah Budgen', 'C', 'Boyle, Stiedemann and Considine', 'bbudgencd@psu.edu', '+86 382 349 6422', '2012-07-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (447, 'Kellia Pudsey', 'C', 'Buckridge Group', 'kpudseyce@mac.com', '+51 167 599 7965', '1982-04-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (448, 'Gerianne Gerber', 'I', 'Hickle, Gorczany and Grant', 'ggerbercf@spotify.com', '+7 715 903 5091', '1991-03-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (449, 'Jake Scanlon', 'T', 'Emmerich LLC', 'jscanloncg@goodreads.com', '+44 220 844 6105', '2017-02-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (450, 'Aurore Mitrikhin', 'C', 'Ledner, McGlynn and Douglas', 'amitrikhinch@123-reg.co.uk', '+86 511 957 0682', '1994-07-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (451, 'August Bayne', 'C', 'Sipes, Rippin and Rath', 'abayneci@weather.com', '+7 431 517 9564', '1981-06-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (452, 'Aurelie Pydcock', 'I', 'Ferry-MacGyver', 'apydcockcj@eepurl.com', '+63 467 112 3890', '2015-12-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (453, 'Karon Baggally', 'C', 'Reichert-Schoen', 'kbaggallyck@dailymail.co.uk', '+86 558 632 6764', '2016-09-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (454, 'Nappy McDell', 'I', 'Yundt, Boyle and Lockman', 'nmcdellcl@cdbaby.com', '+970 759 647 4947', '1991-05-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (455, 'Taddeo Lavington', 'I', 'Reinger Group', 'tlavingtoncm@wp.com', '+86 517 641 9096', '1980-12-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (456, 'Bernie Durbyn', 'I', 'Olson, Labadie and Towne', 'bdurbyncn@com.com', '+86 124 316 7731', '2000-07-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (457, 'Allissa Heigl', 'I', 'Beer LLC', 'aheiglco@tuttocitta.it', '+86 192 727 8990', '2000-10-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (458, 'Ariana Beinisch', 'I', 'Greenholt Inc', 'abeinischcp@paginegialle.it', '+242 479 314 8509', '1992-10-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (459, 'Alene Ticic', 'C', 'Cummerata and Sons', 'aticiccq@wunderground.com', '+502 256 648 1228', '2020-01-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (460, 'Isabelle Prime', 'C', 'C Group', 'iprimecr@japanpost.jp', '+970 173 390 6603', '1993-08-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (461, 'Lars Kembrey', 'I', 'Cole and Sons', 'lkembreycs@princeton.edu', '+84 122 393 0131', '1981-03-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (462, 'Renado Younie', 'T', 'Friesen, Stokes and Hirthe', 'ryouniect@bloomberg.com', '+86 188 458 8934', '2014-08-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (463, 'Granger Casolla', 'C', 'Yundt Inc', 'gcasollacu@mashable.com', '+420 320 631 0243', '1990-08-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (464, 'Darbie Lorriman', 'T', 'Hilll LLC', 'dlorrimancv@salon.com', '+33 222 566 1441', '2017-02-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (465, 'Liv Creegan', 'C', 'O''Kon-Kuhic', 'lcreegancw@google.ru', '+33 185 297 4457', '1982-10-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (466, 'Nicoline Fist', 'T', 'Vandervort and Sons', 'nfistcx@clickbank.net', '+48 562 641 4781', '2006-03-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (467, 'Floris Gowthrop', 'I', 'Langworth and Sons', 'fgowthropcy@yandex.ru', '+86 185 125 4758', '2011-04-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (468, 'Lovell Nolli', 'C', 'Hirthe and Sons', 'lnollicz@parallels.com', '+86 438 967 8367', '2019-02-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (469, 'Farah Reeves', 'C', 'Rutherford, Spinka and Luettgen', 'freevesd0@phoca.cz', '+1 816 416 8508', '1987-03-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (470, 'Janelle Barensky', 'T', 'Tromp Inc', 'jbarenskyd1@yellowpages.com', '+420 148 896 6244', '2010-06-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (471, 'Meta Cresswell', 'C', 'Gleichner-Hauck', 'mcresswelld2@php.net', '+970 444 441 8465', '2019-09-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (472, 'Carmine O''Scanlon', 'T', 'Wuckert, Robel and Mayer', 'coscanlond3@walmart.com', '+1 404 150 7487', '1985-01-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (473, 'Holt Cattow', 'C', 'Corwin, Zieme and Welch', 'hcattowd4@state.tx.us', '+48 498 600 7027', '2012-10-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (474, 'Cynthea Rohloff', 'C', 'Farrell-Dibbert', 'crohloffd5@naver.com', '+351 409 539 2694', '1982-05-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (475, 'Angelique Dury', 'C', 'Hoppe Group', 'aduryd6@dailymail.co.uk', '+57 701 605 7199', '2022-11-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (476, 'Merill Kell', 'C', 'Metz Group', 'mkelld7@whitehouse.gov', '+33 608 317 3553', '2013-01-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (477, 'Onfre Ambrogiotti', 'C', 'Corwin, Klocko and Stracke', 'oambrogiottid8@bbb.org', '+31 758 822 8107', '1988-05-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (478, 'Kristal Thresher', 'T', 'Altenwerth-Lehner', 'kthresherd9@ucoz.com', '+48 411 475 5060', '1984-09-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (479, 'Anna-diane Collet', 'T', 'Kuhic LLC', 'acolletda@ustream.tv', '+57 533 264 2119', '2000-03-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (480, 'Griffy Havers', 'T', 'Hilpert LLC', 'ghaversdb@house.gov', '+81 816 872 7342', '1992-03-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (481, 'Gabbie Benkhe', 'T', 'Barrows Inc', 'gbenkhedc@alexa.com', '+33 810 989 0007', '1992-09-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (482, 'Murielle Rykert', 'C', 'Zemlak LLC', 'mrykertdd@hibu.com', '+63 177 252 2148', '1989-09-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (483, 'Bobinette Fone', 'C', 'Heidenreich-Koepp', 'bfonede@cam.ac.uk', '+970 657 935 3124', '1987-11-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (484, 'Josey Redshaw', 'I', 'Ward, Gottlieb and Gerhold', 'jredshawdf@google.co.jp', '+62 859 450 6807', '1999-08-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (485, 'Freddy Antic', 'T', 'Mills, Howell and D''Amore', 'fanticdg@yandex.ru', '+380 884 971 0976', '1981-01-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (486, 'Charleen Ciccoloi', 'I', 'Powlowski, Stoltenberg and Mertz', 'cciccoloidh@icq.com', '+7 495 569 6570', '1989-07-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (487, 'Rachael Wilcockes', 'T', 'Watsica-Swift', 'rwilcockesdi@wp.com', '+226 812 665 5376', '2004-03-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (488, 'Rourke Magrane', 'C', 'Kris, Lakin and Johnson', 'rmagranedj@i2i.jp', '+63 739 988 2376', '2009-02-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (489, 'Brynna Child', 'I', 'Lockman Inc', 'bchilddk@instagram.com', '+351 693 775 1976', '1983-11-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (490, 'Jillene Ardern', 'I', 'Davis-White', 'jarderndl@redcross.org', '+49 721 390 1396', '2012-05-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (491, 'Aurilia Puddifer', 'C', 'McLaughlin-Schiller', 'apuddiferdm@google.pl', '+48 538 410 2599', '1992-04-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (492, 'Yank Tipens', 'T', 'McLaughlin-Ebert', 'ytipensdn@disqus.com', '+1 256 488 1252', '2017-12-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (493, 'Bartolomeo Ferrarese', 'C', 'Jacobson LLC', 'bferraresedo@studiopress.com', '+86 233 476 1199', '2019-07-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (494, 'Reina Cawthry', 'I', 'Fay, Murazik and Medhurst', 'rcawthrydp@dell.com', '+381 514 579 4917', '1986-07-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (495, 'Nanon Verbeek', 'T', 'Marquardt-Shanahan', 'nverbeekdq@jugem.jp', '+351 562 918 9853', '2014-05-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (496, 'Gwendolin Casaccia', 'C', 'Braun-Bruen', 'gcasacciadr@mac.com', '+386 957 468 4790', '2017-11-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (497, 'Margalit Duffrie', 'T', 'Bauch, Boyle and Blanda', 'mduffrieds@amazon.de', '+351 903 858 8926', '2009-10-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (498, 'Sibelle Burchmore', 'I', 'Hoppe Inc', 'sburchmoredt@europa.eu', '+81 906 568 4892', '1983-12-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (499, 'Phillida Morillas', 'T', 'Reinger, Harvey and Morar', 'pmorillasdu@virginia.edu', '+54 935 867 8791', '1992-04-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (500, 'Cosme Duval', 'T', 'Gislason, Beier and Doyle', 'cduvaldv@bing.com', '+60 460 491 0564', '2021-04-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (501, 'Mercedes Camellini', 'C', 'Romaguera and Sons', 'mcamellinidw@imdb.com', '+62 910 976 7482', '2015-07-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (502, 'Alicea Wilby', 'I', 'Hills, Auer and McKenzie', 'awilbydx@de.vu', '+66 507 349 1612', '2010-02-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (503, 'Adel Ridsdale', 'C', 'Feeney Group', 'aridsdaledy@cdc.gov', '+52 100 733 9869', '1985-07-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (504, 'Chalmers Truman', 'T', 'Berge Group', 'ctrumandz@twitpic.com', '+1 216 283 3780', '2001-04-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (505, 'Filippo Ingham', 'I', 'Marvin-Beatty', 'finghame0@unblog.fr', '+880 651 735 8245', '2019-02-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (506, 'Berri Fennell', 'I', 'Konopelski-Osinski', 'bfennelle1@shareasale.com', '+504 783 730 1868', '1984-04-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (507, 'Oliviero Mowat', 'T', 'Labadie, Ward and Torp', 'omowate2@free.fr', '+86 690 152 8782', '2013-03-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (508, 'Ardith Haslehurst', 'T', 'Mosciski, Schiller and Crooks', 'ahaslehurste3@bandcamp.com', '+86 762 362 3682', '1981-08-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (509, 'Lonna Richly', 'C', 'Zemlak-Homenick', 'lrichlye4@unc.edu', '+86 196 876 6786', '2015-10-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (510, 'Darice Linde', 'C', 'Nitzsche, Haag and Kreiger', 'dlindee5@timesonline.co.uk', '+86 640 996 9588', '1984-12-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (511, 'Katina Katzmann', 'I', 'Fadel-O''Connell', 'kkatzmanne6@sitemeter.com', '+86 666 622 0414', '1984-07-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (512, 'Rosaline Durgan', 'I', 'Bradtke LLC', 'rdurgane7@cafepress.com', '+351 927 342 2510', '2007-10-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (513, 'Andris Cumesky', 'C', 'Wolf, Breitenberg and Bartoletti', 'acumeskye8@comsenz.com', '+886 205 463 5729', '2003-11-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (514, 'Maddi Boldt', 'T', 'Legros, Pouros and Bartoletti', 'mboldte9@netscape.com', '+504 192 621 5893', '2006-12-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (515, 'Maurene Smowton', 'T', 'Cremin, Harris and Spencer', 'msmowtonea@reverbnation.com', '+228 180 394 3431', '2004-05-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (516, 'Bryna Fanshawe', 'T', 'Hickle-Balistreri', 'bfanshaweeb@mozilla.com', '+86 123 741 4226', '2013-02-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (517, 'Lanny Bodesson', 'I', 'Walsh-Goodwin', 'lbodessonec@ifeng.com', '+86 642 787 4844', '1994-04-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (518, 'Marylou Auletta', 'T', 'Altenwerth-Rowe', 'maulettaed@php.net', '+994 144 723 9761', '1999-07-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (519, 'Ritchie Lusgdin', 'C', 'Kshlerin, Dare and Larson', 'rlusgdinee@webmd.com', '+62 992 482 7576', '2010-09-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (520, 'Lillis Creigan', 'C', 'Konopelski Inc', 'lcreiganef@businesswire.com', '+62 425 291 1312', '1987-07-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (521, 'Terrell Collete', 'C', 'Hagenes, Larson and Schmeler', 'tcolleteeg@shop-pro.jp', '+86 659 440 5789', '1983-01-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (522, 'Barnabas Oldis', 'C', 'Cummings-Auer', 'boldiseh@auda.org.au', '+55 811 754 0578', '2006-04-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (523, 'Buckie Birkenhead', 'I', 'Kunde-Macejkovic', 'bbirkenheadei@printfriendly.com', '+47 964 253 7033', '2002-12-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (524, 'Karylin Elfleet', 'I', 'Langworth Inc', 'kelfleetej@t-online.de', '+244 463 414 5238', '2011-08-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (525, 'Allistir Novichenko', 'C', 'Romaguera-VonRueden', 'anovichenkoek@360.cn', '+260 456 259 5830', '1987-08-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (526, 'Josephine Codeman', 'C', 'Hettinger LLC', 'jcodemanel@senate.gov', '+993 274 430 8561', '1999-12-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (527, 'Kathy Benjafield', 'I', 'Kuphal Inc', 'kbenjafieldem@amazon.com', '+86 476 591 5221', '1996-07-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (528, 'Preston Houson', 'C', 'Powlowski-Mayert', 'phousonen@prlog.org', '+86 388 617 6876', '2004-08-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (529, 'Fifine Row', 'T', 'Fisher-Muller', 'froweo@bravesites.com', '+351 760 875 0155', '2021-04-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (530, 'Nelli Simeone', 'I', 'Monahan-Greenholt', 'nsimeoneep@fastcompany.com', '+48 188 115 6547', '1984-07-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (531, 'Rena Hinder', 'I', 'Greenholt LLC', 'rhindereq@amazon.co.jp', '+57 670 792 3354', '2018-01-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (532, 'Sabrina Stutard', 'C', 'Dooley Inc', 'sstutarder@ox.ac.uk', '+63 704 531 8187', '1980-09-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (533, 'Inesita Kurt', 'T', 'Ward Inc', 'ikurtes@w3.org', '+1 402 553 4029', '2018-10-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (534, 'Carolin Gorrick', 'T', 'Harber Group', 'cgorricket@a8.net', '+86 368 262 3372', '2016-04-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (535, 'Hyacintha Devaney', 'C', 'McClure-Nicolas', 'hdevaneyeu@stumbleupon.com', '+7 828 760 9744', '2004-05-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (536, 'Maura Custance', 'I', 'Yundt Group', 'mcustanceev@imgur.com', '+227 569 195 4701', '2003-05-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (537, 'Townsend O''Docherty', 'T', 'Hermiston-Hartmann', 'todochertyew@ning.com', '+387 658 201 9318', '2013-06-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (538, 'Donella Macura', 'T', 'Williamson, Kertzmann and Bruen', 'dmacuraex@omniture.com', '+48 185 344 5035', '2008-12-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (539, 'Kelci Balme', 'T', 'Smitham, Sipes and Heidenreich', 'kbalmeey@live.com', '+351 166 955 3432', '2015-12-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (540, 'Elyssa January', 'I', 'Schumm, DuBuque and Jast', 'ejanuaryez@csmonitor.com', '+420 959 777 0663', '1996-04-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (541, 'Robinett Pickles', 'C', 'Hammes and Sons', 'rpicklesf0@npr.org', '+56 825 118 4710', '2018-04-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (542, 'Cassey Forlong', 'C', 'Lindgren and Sons', 'cforlongf1@epa.gov', '+1 245 335 2043', '1993-10-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (543, 'Vikki Georgievski', 'C', 'Oberbrunner, Langworth and DuBuque', 'vgeorgievskif2@clickbank.net', '+30 473 469 0674', '2019-08-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (544, 'Phylis Burdett', 'I', 'Jaskolski-Haag', 'pburdettf3@sohu.com', '+57 403 214 3251', '2004-05-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (545, 'Phelia Le Teve', 'I', 'Schumm LLC', 'plef4@newsvine.com', '+7 442 210 4700', '2020-09-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (546, 'Odie Hattam', 'C', 'Rippin-Zulauf', 'ohattamf5@scientificamerican.com', '+48 282 233 7085', '1996-09-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (547, 'Tallulah Lotterington', 'I', 'West-Boyer', 'tlotteringtonf6@gravatar.com', '+86 129 444 7554', '2022-05-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (548, 'Ranna Gorioli', 'C', 'Nikolaus Group', 'rgoriolif7@huffingtonpost.com', '+86 143 387 9953', '1981-06-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (549, 'Felice Pasfield', 'C', 'Schaden, Sporer and Funk', 'fpasfieldf8@businessweek.com', '+63 438 531 6651', '2016-09-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (550, 'Rivkah Ambrose', 'C', 'Hauck-Pacocha', 'rambrosef9@gravatar.com', '+48 868 874 4299', '1996-05-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (551, 'Haslett Stebbins', 'T', 'Beier, Jacobi and Jerde', 'hstebbinsfa@i2i.jp', '+86 379 199 4886', '1997-11-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (552, 'Laverna Giacobo', 'I', 'Batz LLC', 'lgiacobofb@wikia.com', '+7 137 843 1169', '2001-06-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (553, 'Lily Firpo', 'C', 'Rosenbaum-Armstrong', 'lfirpofc@ycombinator.com', '+375 415 206 9443', '2014-02-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (554, 'Temp Poge', 'C', 'Littel-Hansen', 'tpogefd@marriott.com', '+31 302 381 7841', '2003-04-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (555, 'Casie Couzens', 'C', 'Satterfield, Stokes and Wiza', 'ccouzensfe@state.gov', '+386 599 116 0127', '1999-12-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (556, 'Hubert Imorts', 'T', 'Nader Group', 'himortsff@123-reg.co.uk', '+504 466 662 8187', '2008-02-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (557, 'Corbin Grigolli', 'C', 'Champlin-Shanahan', 'cgrigollifg@alexa.com', '+64 555 866 8154', '2017-03-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (558, 'Pierette Hazlehurst', 'C', 'Torphy LLC', 'phazlehurstfh@webs.com', '+57 538 246 1358', '2002-03-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (559, 'Thaine Trayte', 'T', 'Leannon, Ziemann and Schneider', 'ttraytefi@msn.com', '+62 266 115 6653', '2013-01-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (560, 'Belinda Vahey', 'I', 'Koepp, King and Pfeffer', 'bvaheyfj@myspace.com', '+222 220 593 6935', '2018-04-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (561, 'Bendicty Edgcumbe', 'I', 'Wilderman and Sons', 'bedgcumbefk@harvard.edu', '+53 316 523 9954', '2001-11-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (562, 'Katti aManger', 'C', 'Kuhlman, Stamm and Marks', 'kamangerfl@ask.com', '+63 276 166 2339', '2010-12-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (563, 'Yettie Easom', 'I', 'Yundt-Casper', 'yeasomfm@histats.com', '+998 724 903 9663', '2008-04-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (564, 'Alfons Treagus', 'I', 'Weber, Weber and Bednar', 'atreagusfn@delicious.com', '+86 587 235 1434', '1997-11-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (565, 'Camila Terram', 'C', 'Graham-Orn', 'cterramfo@comcast.net', '+46 512 653 5398', '1999-06-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (566, 'Mario Frackiewicz', 'T', 'O''Conner Inc', 'mfrackiewiczfp@artisteer.com', '+33 581 621 8307', '1985-04-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (567, 'Malachi Kondratyuk', 'T', 'Feil Group', 'mkondratyukfq@exblog.jp', '+86 302 542 5617', '2002-12-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (568, 'Giulio Harcarse', 'C', 'Lang-Armstrong', 'gharcarsefr@jigsy.com', '+55 313 353 5907', '1982-11-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (569, 'Dillon Passie', 'T', 'Morissette and Sons', 'dpassiefs@blogger.com', '+63 916 966 9498', '1987-12-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (570, 'Kalli Maypole', 'C', 'Carroll and Sons', 'kmaypoleft@time.com', '+420 931 173 6839', '1982-06-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (571, 'Jacenta Chable', 'T', 'Kassulke, Bauch and Aufderhar', 'jchablefu@scribd.com', '+48 504 240 9402', '1993-09-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (572, 'Amalie Skeermor', 'I', 'Heaney LLC', 'askeermorfv@amazon.co.uk', '+30 984 290 5458', '2006-05-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (573, 'Kilian Spoerl', 'T', 'Hayes, Osinski and Adams', 'kspoerlfw@wikispaces.com', '+358 618 976 4182', '1987-09-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (574, 'Willamina Woloschinski', 'T', 'Kilback Inc', 'wwoloschinskifx@forbes.com', '+370 124 807 1176', '1988-05-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (575, 'Garth Fyldes', 'I', 'Langosh and Sons', 'gfyldesfy@princeton.edu', '+86 842 759 3540', '2004-06-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (576, 'Jerrylee Liptrot', 'C', 'Fadel, Weimann and Powlowski', 'jliptrotfz@chronoengine.com', '+30 926 124 7960', '2004-10-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (577, 'Bendite Leblanc', 'I', 'Jenkins-Wunsch', 'bleblancg0@cbslocal.com', '+86 449 589 0713', '2005-11-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (578, 'Isabelita Adamovich', 'T', 'Gorczany, Spinka and Fisher', 'iadamovichg1@ftc.gov', '+81 122 606 6103', '2012-08-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (579, 'Anastasia Booton', 'T', 'Rolfson, Pouros and Bins', 'abootong2@tumblr.com', '+62 605 266 8785', '1995-03-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (580, 'Lizette Sparham', 'I', 'Nicolas, O''Reilly and Champlin', 'lsparhamg3@wunderground.com', '+1 933 743 2695', '2006-06-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (581, 'Robbie Macia', 'T', 'Macejkovic Inc', 'rmaciag4@wordpress.org', '+55 524 605 0406', '1991-12-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (582, 'Tara Merlin', 'T', 'Kuphal, Medhurst and Conroy', 'tmerling5@skype.com', '+1 173 651 9899', '2005-12-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (583, 'Jocelin Murie', 'C', 'Rutherford, Berge and Renner', 'jmurieg6@angelfire.com', '+54 560 313 1416', '2008-02-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (584, 'Sergent Gare', 'C', 'Harber-Nikolaus', 'sgareg7@freewebs.com', '+54 466 245 5420', '1995-02-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (585, 'Clemmie Peckett', 'I', 'Koepp Group', 'cpeckettg8@google.com', '+380 101 783 1492', '1987-05-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (586, 'Krystal Lusher', 'I', 'Davis-Mraz', 'klusherg9@mtv.com', '+52 914 887 6760', '2019-08-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (587, 'Belita Kinastan', 'T', 'Marks, Howell and Fay', 'bkinastanga@youtube.com', '+57 448 483 9521', '2012-07-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (588, 'Annabella Farnaby', 'C', 'Rau, Swift and Leuschke', 'afarnabygb@simplemachines.org', '+86 123 454 6340', '1992-04-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (589, 'Annamarie Denslow', 'I', 'Harber Inc', 'adenslowgc@unesco.org', '+58 409 163 8859', '2012-06-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (590, 'Sheffie Barthel', 'I', 'Ritchie-Ledner', 'sbarthelgd@businesswire.com', '+62 905 806 2820', '2014-09-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (591, 'Karrah Trounson', 'T', 'Gutmann-Smitham', 'ktrounsonge@scribd.com', '+380 658 729 5621', '1997-12-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (592, 'Elinor Alwin', 'C', 'Bauch-Kub', 'ealwingf@yellowbook.com', '+7 234 416 0355', '2016-03-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (593, 'Sheppard Issatt', 'I', 'Dickens-Steuber', 'sissattgg@ifeng.com', '+380 321 194 8327', '1991-12-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (594, 'Daryl Last', 'I', 'Welch Group', 'dlastgh@pbs.org', '+57 632 192 1873', '2003-05-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (595, 'Lesley Westphal', 'C', 'Turner, Nikolaus and Haley', 'lwestphalgi@csmonitor.com', '+92 306 582 0744', '2008-05-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (596, 'Quill Sybbe', 'C', 'Schamberger, Wintheiser and O''Kon', 'qsybbegj@photobucket.com', '+86 139 378 2293', '2014-12-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (597, 'Tyne Turnell', 'I', 'Harvey-Mayert', 'tturnellgk@networkadvertising.org', '+63 450 805 0003', '1997-05-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (598, 'Filmer Petticrew', 'I', 'Legros and Sons', 'fpetticrewgl@businessweek.com', '+63 773 792 6760', '2000-10-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (599, 'Goldia Tuffin', 'T', 'Lesch-Kerluke', 'gtuffingm@w3.org', '+52 303 851 7631', '2007-11-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (600, 'Anthea O''Doohaine', 'T', 'Christiansen Group', 'aodoohainegn@i2i.jp', '+56 551 119 7402', '2011-03-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (601, 'Romy Hollerin', 'I', 'Ryan, Lakin and Bauch', 'rholleringo@alexa.com', '+62 987 920 3193', '1981-10-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (602, 'Carlen Bigly', 'C', 'Oberbrunner-Barrows', 'cbiglygp@de.vu', '+86 950 173 3284', '1985-08-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (603, 'Alair Endricci', 'C', 'Rau LLC', 'aendriccigq@reddit.com', '+386 866 430 3292', '1989-03-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (604, 'Kippar Corry', 'T', 'Gutkowski, Berge and Torphy', 'kcorrygr@drupal.org', '+380 377 349 2801', '2010-06-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (605, 'Mayor Dradey', 'T', 'Vandervort, Rodriguez and Hilpert', 'mdradeygs@comsenz.com', '+86 114 677 6502', '2010-07-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (606, 'Bobinette Bisset', 'I', 'Ward, Feeney and Bogisich', 'bbissetgt@about.com', '+62 914 475 4908', '2002-07-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (607, 'Cam Wedderburn', 'C', 'Moore, Halvorson and O''Connell', 'cwedderburngu@google.fr', '+52 712 112 1982', '1997-06-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (608, 'Kelsi Hagland', 'C', 'Moen and Sons', 'khaglandgv@tripod.com', '+62 727 448 0632', '1986-05-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (609, 'Huey Eldridge', 'T', 'Rutherford, Kautzer and Walsh', 'heldridgegw@sbwire.com', '+86 693 402 8525', '1995-12-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (610, 'Viki Caudrelier', 'T', 'Wyman-Feil', 'vcaudreliergx@reverbnation.com', '+63 162 397 3091', '2003-09-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (611, 'Clayborne Gosden', 'I', 'Hyatt-Zieme', 'cgosdengy@altervista.org', '+86 456 978 2877', '2021-12-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (612, 'Thornie Spottswood', 'T', 'Cartwright-Bogisich', 'tspottswoodgz@reverbnation.com', '+55 574 432 7115', '2020-12-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (613, 'Mikkel Matussevich', 'T', 'Lindgren, Jones and Mante', 'mmatussevichh0@pagesperso-T.fr', '+970 632 179 3399', '1992-11-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (614, 'Bradly Aleksandrikin', 'T', 'Kshlerin-Pacocha', 'baleksandrikinh1@businessweek.com', '+57 100 374 2102', '2021-07-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (615, 'Dorey Strond', 'I', 'Wolff, Volkman and Schneider', 'dstrondh2@chronoengine.com', '+353 182 322 9473', '2023-03-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (616, 'Calida McVie', 'T', 'Bailey, Bauch and Bashirian', 'cmcvieh3@usa.gov', '+381 438 442 7623', '1997-05-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (617, 'Chadd Suatt', 'T', 'Bednar, Klocko and Douglas', 'csuatth4@devhub.com', '+48 715 733 6003', '1999-06-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (618, 'Billie O''Rudden', 'T', 'Schowalter, Cummerata and Price', 'boruddenh5@hatena.ne.jp', '+86 144 930 7672', '2009-12-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (619, 'Arch Spraging', 'T', 'Predovic-Lowe', 'aspragingh6@usatoday.com', '+86 578 414 5009', '1985-01-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (620, 'Dirk Kalf', 'T', 'Weber and Sons', 'dkalfh7@mtv.com', '+33 795 354 3943', '2013-02-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (621, 'Cahra Stanbro', 'I', 'Gleason Group', 'cstanbroh8@bloomberg.com', '+86 307 294 7133', '1990-04-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (622, 'Giselle Broomhead', 'C', 'Kshlerin, Schultz and Morissette', 'gbroomheadh9@technorati.com', '+212 410 187 8390', '2014-12-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (623, 'Farr Renny', 'C', 'Lueilwitz, Grimes and Hessel', 'frennyha@independent.co.uk', '+244 535 936 5426', '1999-05-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (624, 'Bayard Redgrave', 'I', 'Maggio LLC', 'bredgravehb@redcross.org', '+48 555 149 4388', '2022-12-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (625, 'Curtis Marshman', 'T', 'Torphy, Hansen and Hyatt', 'cmarshmanhc@goo.gl', '+86 648 790 3715', '2011-04-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (626, 'Corrie Shuard', 'C', 'Feeney, Towne and Hudson', 'cshuardhd@shop-pro.jp', '+61 287 661 6507', '2007-12-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (627, 'Rochella Gravells', 'C', 'Keebler LLC', 'rgravellshe@globo.com', '+1 491 786 5252', '2016-03-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (628, 'Lily Parman', 'C', 'DuBuque-McClure', 'lparmanhf@tripadvisor.com', '+591 658 962 9678', '1987-01-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (629, 'Honor Zoane', 'T', 'Effertz, Schaefer and Hamill', 'hzoanehg@simplemachines.org', '+7 378 890 9337', '2007-04-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (630, 'Lucretia Basilio', 'C', 'Osinski, Gleichner and Dicki', 'lbasiliohh@nps.gov', '+27 902 904 4865', '2014-01-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (631, 'Peterus Cronin', 'C', 'Hackett-Stiedemann', 'pcroninhi@reverbnation.com', '+502 220 669 5155', '1993-06-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (632, 'Xena Hofer', 'T', 'Cummings-Johnson', 'xhoferhj@symantec.com', '+224 997 169 9124', '2012-01-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (633, 'Jaymie Bowser', 'T', 'C Group', 'jbowserhk@washingtonpost.com', '+1 368 630 6604', '2019-01-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (634, 'Goldarina Parrot', 'T', 'Cruickshank and Sons', 'gparrothl@utexas.edu', '+46 711 580 5994', '2012-01-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (635, 'Minnaminnie Seligson', 'I', 'Bauch, Zboncak and Rutherford', 'mseligsonhm@uol.com.br', '+55 120 679 0007', '2004-09-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (636, 'Leanor McLugaish', 'T', 'Bins LLC', 'lmclugaishhn@homestead.com', '+81 418 190 5041', '2015-02-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (637, 'Marisa Ralston', 'C', 'Pollich-Bernier', 'mralstonho@feedburner.com', '+27 525 658 7953', '2022-08-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (638, 'Gavan Carvilla', 'C', 'Thiel-Hauck', 'gcarvillahp@youtube.com', '+86 731 949 6969', '1990-11-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (639, 'Jackelyn Piolli', 'C', 'Frami-Gutkowski', 'jpiollihq@narod.ru', '+86 409 625 9454', '2001-12-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (640, 'Gerhard Branni', 'C', 'Murphy, Fritsch and Brekke', 'gbrannihr@google.it', '+86 911 824 2460', '2003-09-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (641, 'Care Planque', 'C', 'King-Padberg', 'cplanquehs@paypal.com', '+86 622 124 0518', '2012-12-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (642, 'Sarah Kurtis', 'I', 'Torphy-Jakubowski', 'skurtisht@un.org', '+33 966 167 7262', '2009-01-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (643, 'Milt Silversmidt', 'T', 'Wilkinson Group', 'msilversmidthu@ifeng.com', '+47 818 158 9095', '2002-05-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (644, 'Reece Coopman', 'I', 'Casper, Waelchi and O''Keefe', 'rcoopmanhv@huffingtonpost.com', '+86 370 488 5060', '2005-12-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (645, 'Adeline Berriball', 'C', 'Tillman Group', 'aberriballhw@umn.edu', '+1 817 738 7621', '1987-02-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (646, 'Fredra Itshak', 'I', 'Baumbach-Keebler', 'fitshakhx@purevolume.com', '+30 960 197 5488', '1995-04-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (647, 'Berti Gee', 'C', 'Kovacek-Kautzer', 'bgeehy@weather.com', '+389 222 212 7343', '1984-04-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (648, 'Demetre Morch', 'T', 'Heathcote Inc', 'dmorchhz@list-manage.com', '+358 594 847 0103', '1996-02-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (649, 'Abba Gook', 'I', 'Toy Group', 'agooki0@hatena.ne.jp', '+675 603 674 1772', '1989-05-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (650, 'Christian Barham', 'T', 'Borer, Quitzon and Gleichner', 'cbarhami1@imageshack.us', '+51 538 241 7503', '2004-09-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (651, 'Jessamine Wooldridge', 'C', 'Hansen, Sauer and Yundt', 'jwooldridgei2@discovery.com', '+63 379 623 3248', '1992-10-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (652, 'Kirbee Rattry', 'T', 'Hahn Group', 'krattryi3@cargocollective.com', '+7 884 946 4719', '1993-11-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (653, 'Odele Camus', 'I', 'Von-Corwin', 'ocamusi4@google.pl', '+62 607 480 2506', '1992-11-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (654, 'Clareta Lemary', 'C', 'Morar-Kessler', 'clemaryi5@php.net', '+7 997 447 0771', '1992-09-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (655, 'Pierrette Pena', 'C', 'Terry-Kuhlman', 'ppenai6@live.com', '+258 871 366 1343', '1990-04-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (656, 'Sophronia Heild', 'C', 'Brown, Bode and Kerluke', 'sheildi7@amazonaws.com', '+81 929 995 7884', '1981-01-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (657, 'Karoly Fleetwood', 'T', 'Bradtke Inc', 'kfleetwoodi8@europa.eu', '+66 162 965 3427', '2009-04-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (658, 'Kellie Silver', 'T', 'Wuckert Inc', 'ksilveri9@ycombinator.com', '+689 651 157 7414', '1993-09-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (659, 'Jillana Sumers', 'C', 'Ferry-Bode', 'jsumersia@uol.com.br', '+62 883 885 5118', '1984-07-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (660, 'Cyndi Fendt', 'C', 'West Inc', 'cfendtib@privacy.gov.au', '+48 784 915 5350', '2001-12-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (661, 'Charlean Downer', 'T', 'Roberts-Bernhard', 'cdowneric@princeton.edu', '+47 485 158 9231', '1982-11-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (662, 'Darci Hartwright', 'I', 'Tillman LLC', 'dhartwrightid@altervista.org', '+55 211 731 5683', '2013-03-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (663, 'Paulie Smeed', 'T', 'Kirlin Group', 'psmeedie@liveinternet.ru', '+86 519 632 0539', '2000-11-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (664, 'Dot Llopis', 'I', 'Cormier-Bayer', 'dllopisif@myspace.com', '+44 366 228 7007', '1986-11-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (665, 'Bernardo Houlahan', 'C', 'West-Cassin', 'bhoulahanig@businesswire.com', '+53 369 911 6708', '2002-12-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (666, 'Binni Barts', 'T', 'Cruickshank, Gulgowski and Von', 'bbartsih@economist.com', '+420 716 526 3151', '1986-11-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (667, 'Izabel O''Keefe', 'T', 'Haag, Trantow and Kirlin', 'iokeefeii@usa.gov', '+46 352 574 8669', '2022-04-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (668, 'Tracee Crocken', 'T', 'Bogisich-Jakubowski', 'tcrockenij@howstuffworks.com', '+58 520 367 2085', '1986-11-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (669, 'Caterina Deverock', 'C', 'Bahringer-Deckow', 'cdeverockik@indiegogo.com', '+7 899 696 8351', '2001-03-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (670, 'Merle Gregorin', 'C', 'Lemke-McDermott', 'mgregorinil@hud.gov', '+52 982 886 2905', '2004-05-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (671, 'Darda Goodsell', 'I', 'Ritchie, Lueilwitz and Gusikowski', 'dgoodsellim@cyberchimps.com', '+86 762 972 7259', '1989-05-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (672, 'Burt Fray', 'C', 'Larson, Greenfelder and Wolff', 'bfrayin@eventbrite.com', '+48 357 566 2224', '2020-01-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (673, 'Katina Foxhall', 'C', 'Johnston LLC', 'kfoxhallio@thetimes.co.uk', '+1 406 256 6425', '2003-09-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (674, 'Theodor Sarch', 'I', 'Blick, Bauch and Pfeffer', 'tsarchip@house.gov', '+7 754 575 8181', '1994-02-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (675, 'Mari Sweetlove', 'I', 'Nienow Inc', 'msweetloveiq@wired.com', '+62 349 223 5944', '2021-09-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (676, 'Julianne MacAne', 'T', 'Bergnaum Group', 'jmacaneir@addtoany.com', '+1 202 123 5097', '1990-12-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (677, 'Melita McPaike', 'I', 'Franecki-Stanton', 'mmcpaikeis@jigsy.com', '+355 779 449 6303', '1989-12-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (678, 'Rosemarie Britto', 'C', 'Kling LLC', 'rbrittoit@washington.edu', '+62 114 492 6693', '1998-11-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (679, 'Jarid Klaves', 'C', 'Nolan-Kassulke', 'jklavesiu@webmd.com', '+98 450 511 6818', '2002-03-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (680, 'Lily Brennand', 'I', 'Hane, Hodkiewicz and Reichel', 'lbrennandiv@nifty.com', '+967 480 422 3040', '2021-08-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (681, 'Dori Helliker', 'I', 'Koss Inc', 'dhellikeriw@netlog.com', '+387 936 882 5959', '2000-11-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (682, 'Shannon Dell Casa', 'T', 'Wilkinson Group', 'sdellix@wikia.com', '+86 873 390 1606', '2008-01-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (683, 'Goober Christophersen', 'C', 'Abernathy, Mayer and Wiegand', 'gchristopherseniy@vistaprint.com', '+1 212 527 1031', '1997-08-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (684, 'Jo-ann Rickis', 'C', 'Littel-Effertz', 'jrickisiz@yellowpages.com', '+82 105 224 6741', '1983-08-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (685, 'Jacinda Brastead', 'C', 'Flatley, Cartwright and Prohaska', 'jbrasteadj0@angelfire.com', '+86 742 713 0661', '2002-02-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (686, 'Nap Boyett', 'I', 'Beier, Kessler and MacGyver', 'nboyettj1@altervista.org', '+63 657 251 4157', '1986-06-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (687, 'Anatola Showalter', 'I', 'Langworth-Homenick', 'ashowalterj2@over-blog.com', '+52 865 452 5148', '1987-01-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (688, 'Adore Hinder', 'I', 'MacGyver-Jakubowski', 'ahinderj3@pinterest.com', '+7 489 964 0645', '2013-05-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (689, 'Angelo Lendrem', 'I', 'Kautzer, Fay and Metz', 'alendremj4@dropbox.com', '+27 342 585 7128', '1989-11-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (690, 'Elfrida Jeal', 'T', 'Windler-Hackett', 'ejealj5@nytimes.com', '+92 868 905 6343', '1984-11-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (691, 'Kalvin Hallstone', 'T', 'Gulgowski and Sons', 'khallstonej6@woothemes.com', '+372 185 616 7208', '1988-03-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (692, 'Mayer Brien', 'C', 'Upton-Senger', 'mbrienj7@cocolog-nifty.com', '+264 300 684 1346', '2020-04-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (693, 'Felipa Mathelon', 'C', 'Dickinson, Wiza and Grant', 'fmathelonj8@t-online.de', '+1 216 819 6639', '2006-10-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (694, 'Gilbert Courteney', 'T', 'Witting LLC', 'gcourteneyj9@ucsd.edu', '+255 550 552 6688', '1988-01-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (695, 'Cassandra Simenot', 'I', 'Hane, Frami and Greenholt', 'csimenotja@cdc.gov', '+62 879 563 7830', '2020-11-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (696, 'Thoma Hellyer', 'I', 'Hoeger-Kub', 'thellyerjb@unesco.org', '+420 368 388 2623', '1981-05-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (697, 'Lucine Beniesh', 'C', 'Nader, Hackett and Welch', 'lbenieshjc@europa.eu', '+82 471 768 2583', '1994-03-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (698, 'Teresina Wreakes', 'C', 'Weber, Spencer and Kris', 'twreakesjd@goo.ne.jp', '+86 524 300 7348', '2006-03-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (699, 'Bertie Le Brum', 'I', 'Keeling Group', 'bleje@blogger.com', '+7 431 801 7649', '1984-11-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (700, 'Alyosha Fant', 'I', 'Gislason and Sons', 'afantjf@nytimes.com', '+27 704 350 5690', '1984-05-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (701, 'Heidie Ferras', 'C', 'Bauch, Thompson and Konopelski', 'hferrasjg@goo.gl', '+234 809 945 5477', '1999-09-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (702, 'Phillida McTerlagh', 'I', 'Littel-Keeling', 'pmcterlaghjh@mysql.com', '+62 574 365 9084', '1984-12-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (703, 'Christiane Taplin', 'I', 'Schamberger-Brown', 'ctaplinji@artisteer.com', '+7 306 425 6205', '1990-05-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (704, 'Jaquelin Zack', 'I', 'Haag-Schumm', 'jzackjj@yandex.ru', '+95 580 949 6081', '1982-08-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (705, 'Idaline D''Aguanno', 'T', 'Wolff Inc', 'idaguannojk@boston.com', '+55 324 713 6789', '2015-12-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (706, 'Veda Troucher', 'T', 'Bauch-Cole', 'vtroucherjl@springer.com', '+1 775 806 2469', '2015-02-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (707, 'Inez Mohan', 'I', 'Bergstrom-Dietrich', 'imohanjm@howstuffworks.com', '+234 999 432 9944', '1984-10-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (708, 'Mason Cockman', 'C', 'Barrows-Kutch', 'mcockmanjn@businessweek.com', '+33 203 293 7704', '1999-05-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (709, 'Marchall Gimeno', 'T', 'Langosh LLC', 'mgimenojo@amazon.co.jp', '+86 802 404 0624', '2018-02-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (710, 'Beltran Bielfeld', 'C', 'McDermott-Kessler', 'bbielfeldjp@marriott.com', '+423 246 801 1710', '2009-03-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (711, 'Poul Reast', 'I', 'Reynolds-Runte', 'preastjq@vistaprint.com', '+48 939 245 2028', '1999-11-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (712, 'Sarene Boch', 'I', 'Collins, Braun and Brakus', 'sbochjr@1688.com', '+7 320 124 5959', '1985-02-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (713, 'Hollie Alred', 'C', 'Botsford Inc', 'halredjs@plala.or.jp', '+351 299 674 1590', '1983-03-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (714, 'Matilde Lenox', 'T', 'Hirthe Inc', 'mlenoxjt@sakura.ne.jp', '+55 646 643 5567', '2006-04-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (715, 'Marlo Worts', 'C', 'Wehner Group', 'mwortsju@zdnet.com', '+57 210 786 5229', '2015-03-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (716, 'Jade Farndell', 'C', 'Roberts-Schowalter', 'jfarndelljv@google.com.au', '+355 286 999 1454', '2012-01-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (717, 'Philippa Sangster', 'T', 'Will-Herzog', 'psangsterjw@cyberchimps.com', '+63 473 291 0011', '1990-07-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (718, 'Aindrea Jirek', 'T', 'Ledner-Koelpin', 'ajirekjx@google.ca', '+86 120 833 1115', '1987-03-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (719, 'Thorstein Skydall', 'I', 'Schuppe, Bogan and Rath', 'tskydalljy@photobucket.com', '+84 873 268 5039', '2017-09-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (720, 'Dacia Albasini', 'T', 'Reichel-Monahan', 'dalbasinijz@epa.gov', '+86 293 596 9131', '2017-11-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (721, 'Rozalie Foulsham', 'I', 'Brekke-Runolfsson', 'rfoulshamk0@rambler.ru', '+1 888 146 8979', '1995-06-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (722, 'Ashlen Shrieves', 'T', 'Hirthe-Herzog', 'ashrievesk1@paypal.com', '+7 129 906 1971', '1991-05-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (723, 'Caitrin Tompsett', 'I', 'Fisher, Gislason and Baumbach', 'ctompsettk2@ebay.com', '+261 387 617 3714', '2018-06-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (724, 'Olivia Shoebotham', 'I', 'Schimmel, Emmerich and Lakin', 'oshoebothamk3@wikia.com', '+256 121 538 2981', '1990-02-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (725, 'Davin Greystoke', 'C', 'Shields Group', 'dgreystokek4@parallels.com', '+81 808 253 5189', '2003-02-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (726, 'Frankie Ponde', 'C', 'Botsford, Haag and Feil', 'fpondek5@msu.edu', '+51 677 436 0448', '1995-09-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (727, 'Darleen Djurkovic', 'I', 'Witting-Bednar', 'ddjurkovick6@globo.com', '+63 251 115 9350', '1992-10-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (728, 'Katie Jeste', 'C', 'Kertzmann-Cremin', 'kjestek7@hud.gov', '+505 365 818 4341', '1992-07-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (729, 'Johnathan Blueman', 'C', 'Ondricka, Wunsch and Tromp', 'jbluemank8@bandcamp.com', '+420 847 827 5799', '2003-12-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (730, 'Richy Echelle', 'T', 'Wehner-Stoltenberg', 'rechellek9@yellowpages.com', '+351 205 949 9676', '2022-07-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (731, 'Larine Kenyon', 'I', 'Heaney, Rau and Mueller', 'lkenyonka@mediafire.com', '+976 341 832 6497', '2013-07-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (732, 'Eugenia Rosencwaig', 'I', 'Thompson, Abbott and O''Kon', 'erosencwaigkb@mit.edu', '+1 661 282 8128', '2018-10-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (733, 'Kayne Hunday', 'T', 'Auer-Russel', 'khundaykc@comcast.net', '+1 649 308 1953', '1996-11-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (734, 'Patience Chavey', 'C', 'Dibbert Group', 'pchaveykd@qq.com', '+63 837 566 9276', '1986-09-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (735, 'Curcio Sheara', 'C', 'Frami-Reilly', 'cshearake@blogs.com', '+63 144 448 9383', '2012-06-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (736, 'Elle Seppey', 'T', 'Lang-Nienow', 'eseppeykf@geocities.jp', '+63 839 137 7610', '2000-06-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (737, 'Leta End', 'C', 'Hagenes Inc', 'lendkg@wunderground.com', '+420 510 934 0942', '2005-12-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (738, 'Scarlett Pender', 'C', 'Lakin Group', 'spenderkh@cnbc.com', '+420 751 360 1678', '1994-12-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (739, 'Codee Louca', 'C', 'Bruen Group', 'cloucaki@twitter.com', '+33 300 811 6498', '2004-08-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (740, 'Idelle Gosker', 'C', 'Mitchell, Lynch and Lubowitz', 'igoskerkj@youtu.be', '+86 671 886 3642', '2015-08-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (741, 'Aeriell Bustard', 'C', 'Shields, Huel and Hills', 'abustardkk@squidoo.com', '+86 455 774 8522', '1996-03-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (742, 'Ichabod Ascough', 'I', 'McCullough-Jakubowski', 'iascoughkl@live.com', '+52 349 591 0266', '2000-10-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (743, 'Maren Yateman', 'C', 'Friesen LLC', 'myatemankm@odnoklassniki.ru', '+86 154 317 7257', '2017-08-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (744, 'Godwin Davidove', 'T', 'Schaefer, Ferry and Christiansen', 'gdavidovekn@artisteer.com', '+63 770 692 1867', '2023-04-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (745, 'Amory Losbie', 'C', 'Pfannerstill, Willms and Cummings', 'alosbieko@people.com.cn', '+62 207 570 5432', '2023-01-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (746, 'Clareta Meneghi', 'T', 'Cummerata-Mitchell', 'cmeneghikp@csmonitor.com', '+62 693 259 9787', '2000-07-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (747, 'Joyann Cormack', 'C', 'Anderson Group', 'jcormackkq@list-manage.com', '+86 371 930 4655', '2018-12-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (748, 'Adriane Papes', 'I', 'Koelpin, Yundt and Hermiston', 'apapeskr@pen.io', '+86 634 229 4539', '1995-11-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (749, 'Phillida Chatres', 'T', 'O''Connell-Cormier', 'pchatresks@deviantart.com', '+46 648 537 9919', '1994-12-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (750, 'Sheffie Carrett', 'C', 'Gerlach-Schmidt', 'scarrettkt@amazonaws.com', '+62 364 433 9734', '1993-10-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (751, 'Roddie Betancourt', 'C', 'Carter-Feest', 'rbetancourtku@imdb.com', '+237 427 771 3514', '2007-10-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (752, 'Tana Delacroux', 'T', 'Price-Dooley', 'tdelacrouxkv@theatlantic.com', '+57 684 124 4879', '1999-08-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (753, 'Pierson Ciraldo', 'I', 'Vandervort LLC', 'pciraldokw@tripod.com', '+62 987 383 3952', '1990-06-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (754, 'Dionis Brimman', 'T', 'Daugherty Group', 'dbrimmankx@free.fr', '+46 839 183 4768', '2014-09-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (755, 'Walton Cuberley', 'C', 'Schulist and Sons', 'wcuberleyky@liveinternet.ru', '+7 841 503 3533', '2012-09-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (756, 'Luce Camelia', 'I', 'Yundt-Cartwright', 'lcameliakz@a8.net', '+33 410 916 5361', '1994-08-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (757, 'Hagen Scargill', 'T', 'Tromp-Hettinger', 'hscargilll0@blogs.com', '+56 710 843 6890', '1992-01-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (758, 'Gerti Swallwell', 'I', 'Zboncak and Sons', 'gswallwelll1@ow.ly', '+351 678 742 1953', '1986-09-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (759, 'Florella Tessyman', 'T', 'Murazik, Lakin and Smith', 'ftessymanl2@ezinearticles.com', '+60 862 404 8067', '1989-03-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (760, 'Eliza Sancias', 'C', 'Kunze, Adams and Miller', 'esanciasl3@yellowbook.com', '+420 231 958 7274', '2016-09-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (761, 'Zahara Sokill', 'T', 'Beer and Sons', 'zsokilll4@meetup.com', '+420 184 347 4477', '1980-11-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (762, 'Skipp Savatier', 'T', 'Kilback, Littel and Fisher', 'ssavatierl5@gravatar.com', '+33 651 526 1082', '1987-03-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (763, 'Akim Fryatt', 'C', 'Hackett Inc', 'afryattl6@hatena.ne.jp', '+55 971 956 3861', '2002-09-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (764, 'Rem McLellan', 'T', 'Medhurst LLC', 'rmclellanl7@w3.org', '+86 437 289 5608', '1989-09-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (765, 'Nanine Kroch', 'C', 'Romaguera-Schowalter', 'nkrochl8@moonfruit.com', '+86 765 977 3216', '1981-03-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (766, 'Huntley Bebbell', 'I', 'Kemmer-Brekke', 'hbebbelll9@cdbaby.com', '+27 903 190 9428', '2011-06-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (767, 'Brenden Ziemsen', 'T', 'Wilderman, Stoltenberg and Stiedemann', 'bziemsenla@homestead.com', '+972 162 993 8606', '2002-03-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (768, 'Lynnell Armytage', 'C', 'VonRueden-Altenwerth', 'larmytagelb@naver.com', '+86 201 422 9111', '2003-11-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (769, 'Ganny Brannigan', 'C', 'Considine Group', 'gbranniganlc@desdev.cn', '+63 575 359 0157', '1998-05-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (770, 'Obed Wolfit', 'C', 'Oberbrunner-Monahan', 'owolfitld@istockphoto.com', '+48 647 700 3515', '2017-10-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (771, 'Jerald Hatt', 'C', 'Bergnaum-Bashirian', 'jhattle@meetup.com', '+86 414 327 9194', '1990-06-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (772, 'Cletis Klimus', 'C', 'Friesen, Borer and Doyle', 'cklimuslf@narod.ru', '+504 748 571 5106', '1994-05-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (773, 'Vivienne Wemm', 'C', 'Morissette-Nolan', 'vwemmlg@tinypic.com', '+53 332 953 8326', '2006-09-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (774, 'Sheffield Settle', 'I', 'Blick LLC', 'ssettlelh@examiner.com', '+46 148 466 2979', '1982-06-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (775, 'Trudey Jebb', 'T', 'Beer, Dickinson and Towne', 'tjebbli@hugedomains.com', '+86 996 650 2496', '1999-05-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (776, 'Carley Margerrison', 'C', 'Heathcote LLC', 'cmargerrisonlj@mapquest.com', '+62 983 715 3869', '2020-01-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (777, 'Domenico Elston', 'C', 'Dare-Crooks', 'delstonlk@google.es', '+81 975 759 8958', '1999-06-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (778, 'Carmelia Lukasen', 'C', 'Howell and Sons', 'clukasenll@sourceforge.net', '+1 526 600 8436', '2012-11-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (779, 'Julianne Brickham', 'T', 'Lindgren, Collier and Brakus', 'jbrickhamlm@fotki.com', '+251 661 913 7530', '2012-08-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (780, 'Temple Taks', 'I', 'Labadie and Sons', 'ttaksln@ning.com', '+86 373 259 9066', '1998-03-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (781, 'Isahella Warton', 'T', 'Adams, Walter and Schowalter', 'iwartonlo@hexun.com', '+62 194 709 5890', '1989-08-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (782, 'Felic Legan', 'T', 'Nader, McLaughlin and Ryan', 'fleganlp@photobucket.com', '+66 421 129 0357', '1983-05-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (783, 'Husain Welden', 'T', 'Kshlerin-Gutkowski', 'hweldenlq@g.co', '+33 260 892 8867', '1981-10-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (784, 'Saunder Hedon', 'T', 'Champlin Group', 'shedonlr@example.com', '+86 764 972 6721', '2008-03-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (785, 'Ferdie Indge', 'T', 'Bartoletti Inc', 'findgels@hatena.ne.jp', '+55 995 966 5083', '1993-06-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (786, 'Caroline Honywill', 'C', 'Anderson, Weimann and Crona', 'chonywilllt@freewebs.com', '+590 408 180 8430', '2021-08-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (787, 'Kristan McKeggie', 'C', 'Bins-Heathcote', 'kmckeggielu@gizmodo.com', '+86 679 279 4662', '1988-11-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (788, 'Allyn Ballance', 'T', 'Hackett-Bins', 'aballancelv@lulu.com', '+244 319 279 0563', '2023-07-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (789, 'Willabella Camsey', 'T', 'Rodriguez, Quigley and Pagac', 'wcamseylw@webeden.co.uk', '+55 342 799 0321', '1995-05-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (790, 'Mia Vauls', 'C', 'Dare and Sons', 'mvaulslx@altervista.org', '+20 927 597 7402', '2017-03-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (791, 'Hilton McBratney', 'T', 'Walker, Stokes and Von', 'hmcbratneyly@bloglines.com', '+47 962 785 4068', '2017-10-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (792, 'Toddy Iffe', 'I', 'Haag, Moen and Romaguera', 'tiffelz@state.gov', '+86 934 515 6255', '1984-02-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (793, 'Keen Abrashkov', 'T', 'Schaden Group', 'kabrashkovm0@ftc.gov', '+57 185 342 9259', '1985-02-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (794, 'Beatrice Hache', 'C', 'Douglas, Murazik and Zemlak', 'bhachem1@networkadvertising.org', '+81 191 961 0980', '2018-05-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (795, 'Bondie Senten', 'C', 'Robel-DuBuque', 'bsentenm2@ihg.com', '+7 136 153 2771', '2023-07-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (796, 'Lou Reddecliffe', 'C', 'Rau and Sons', 'lreddecliffem3@quantcast.com', '+7 237 170 3766', '2010-01-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (797, 'Axe Rubert', 'T', 'Wyman Inc', 'arubertm4@sina.com.cn', '+48 170 665 1775', '1996-01-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (798, 'Tori Enrdigo', 'I', 'Willms Inc', 'tenrdigom5@bigcartel.com', '+420 650 268 3800', '2018-07-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (799, 'Claude Washbrook', 'C', 'Brakus, Bednar and Pagac', 'cwashbrookm6@webeden.co.uk', '+46 820 695 8850', '2006-01-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (800, 'Richy Tysack', 'T', 'Anderson, Tremblay and Renner', 'rtysackm7@google.com', '+81 873 929 8577', '1988-09-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (801, 'Ludvig Cheesley', 'T', 'Deckow-Koss', 'lcheesleym8@delicious.com', '+52 360 183 1161', '1991-12-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (802, 'Pieter Dixie', 'I', 'Kohler-Rohan', 'pdixiem9@redcross.org', '+30 560 360 0984', '1994-04-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (803, 'Corny Wash', 'C', 'Heaney and Sons', 'cwashma@sbwire.com', '+351 396 489 9073', '2006-07-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (804, 'Rikki Corgenvin', 'I', 'D''Amore-Hilpert', 'rcorgenvinmb@baidu.com', '+86 404 141 7089', '1980-09-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (805, 'Lynnett Feben', 'C', 'Durgan Group', 'lfebenmc@umn.edu', '+62 811 246 3666', '2016-08-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (806, 'Drugi Trevithick', 'T', 'O''Reilly Group', 'dtrevithickmd@prlog.org', '+86 150 741 9601', '2006-07-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (807, 'Nikoletta Stango', 'T', 'Dicki LLC', 'nstangome@xinhuanet.com', '+63 297 238 9670', '2006-11-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (808, 'Korey McLice', 'T', 'Kling, Stark and Erdman', 'kmclicemf@noaa.gov', '+216 467 960 3369', '2007-01-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (809, 'Terry Albrooke', 'T', 'Simonis LLC', 'talbrookemg@nhs.uk', '+51 934 916 4387', '2017-06-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (810, 'Daven Gouth', 'I', 'Schmeler-Wolff', 'dgouthmh@homestead.com', '+98 527 101 5213', '2010-05-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (811, 'Lucio Fackrell', 'C', 'Pagac LLC', 'lfackrellmi@addthis.com', '+237 640 331 3426', '2014-05-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (812, 'Shari Baignard', 'C', 'Cummerata-Gerhold', 'sbaignardmj@comsenz.com', '+86 470 936 3431', '2007-04-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (813, 'Anetta Pyser', 'I', 'Schaden and Sons', 'apysermk@cbc.ca', '+33 303 134 3632', '2021-03-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (814, 'Karil Rabidge', 'T', 'Bruen-Murray', 'krabidgeml@economist.com', '+62 246 122 8858', '1981-06-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (815, 'Appolonia Trenholm', 'T', 'Glover-Larson', 'atrenholmmm@npr.org', '+55 268 895 2084', '1996-01-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (816, 'Dillie Guiet', 'I', 'Ward, Leffler and Wilderman', 'dguietmn@state.gov', '+84 608 768 7072', '1983-05-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (817, 'Brion Delmage', 'T', 'Reichert, Watsica and Dietrich', 'bdelmagemo@newsvine.com', '+7 856 168 5556', '2016-03-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (818, 'Eden Pavier', 'T', 'Bayer Group', 'epaviermp@hibu.com', '+86 294 444 3588', '2016-01-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (819, 'Marthena Mollett', 'C', 'Boyle, Rodriguez and Bechtelar', 'mmollettmq@digg.com', '+7 115 119 6686', '2001-08-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (820, 'Farlay Roggers', 'C', 'Hyatt-Jast', 'froggersmr@wix.com', '+1 837 833 7276', '2009-09-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (821, 'Odille Ludee', 'I', 'Gulgowski, Hintz and Fadel', 'oludeems@soup.io', '+86 195 357 0878', '2010-04-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (822, 'Beatrisa Baudet', 'C', 'Hermann LLC', 'bbaudetmt@tinyurl.com', '+33 582 183 0966', '2018-04-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (823, 'Joann Dyble', 'C', 'Pouros Group', 'jdyblemu@usda.gov', '+970 295 300 8844', '1992-10-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (824, 'Dyanna Challice', 'C', 'Ward-Harris', 'dchallicemv@time.com', '+51 504 986 2945', '2023-02-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (825, 'Joseito Konneke', 'T', 'Kshlerin-Cremin', 'jkonnekemw@newyorker.com', '+420 628 535 5405', '2012-12-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (826, 'Georgeanne Seth', 'C', 'Hoeger-Cormier', 'gsethmx@blogtalkradio.com', '+53 671 626 1548', '1993-05-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (827, 'Karie Worlidge', 'C', 'Dickens-Corkery', 'kworlidgemy@youku.com', '+7 260 827 5055', '1987-07-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (828, 'Joey Cantu', 'I', 'Klein LLC', 'jcantumz@mediafire.com', '+55 360 299 8402', '2002-10-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (829, 'Agnella Marjanovic', 'I', 'Rowe, Moore and Heidenreich', 'amarjanovicn0@dagondesign.com', '+1 851 694 4898', '2004-04-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (830, 'Anita Ranklin', 'T', 'Blanda and Sons', 'aranklinn1@nbcnews.com', '+86 236 103 7069', '2014-02-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (831, 'Rafaellle Bathoe', 'I', 'McGlynn-Stark', 'rbathoen2@pinterest.com', '+62 807 156 6088', '2018-07-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (832, 'Roxy Cattermoul', 'C', 'Lueilwitz, Denesik and Wyman', 'rcattermouln3@issuu.com', '+54 591 763 8908', '2022-08-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (833, 'Lyda Velasquez', 'I', 'Schmidt LLC', 'lvelasquezn4@mail.ru', '+55 793 478 8475', '2010-08-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (834, 'Godfrey Infantino', 'C', 'Turner and Sons', 'ginfantinon5@msn.com', '+86 824 522 0896', '1982-07-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (835, 'Nevin Layhe', 'T', 'Bartoletti-Morissette', 'nlayhen6@princeton.edu', '+1 348 594 5271', '2018-01-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (836, 'Minna Hucker', 'C', 'Romaguera, Veum and Crona', 'mhuckern7@rambler.ru', '+33 724 201 4579', '1994-06-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (837, 'Randene Garfitt', 'I', 'Schuster, Mitchell and Quigley', 'rgarfittn8@1und1.de', '+55 581 148 8799', '2004-11-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (838, 'Brodie Rivers', 'C', 'Koelpin-Steuber', 'briversn9@scientificamerican.com', '+62 557 633 5398', '2010-04-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (839, 'Carlota Walisiak', 'T', 'Renner, Pfannerstill and Wilderman', 'cwalisiakna@yandex.ru', '+420 929 211 8960', '2014-02-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (840, 'Imogene Gibbe', 'T', 'Collier, Schaefer and Stoltenberg', 'igibbenb@blogger.com', '+81 750 148 5826', '1981-08-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (841, 'Gardie Simionescu', 'I', 'Spencer, Schuppe and Fisher', 'gsimionescunc@webs.com', '+381 297 985 7849', '1991-06-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (842, 'Melva Canellas', 'I', 'Ruecker-Carroll', 'mcanellasnd@apache.org', '+63 656 938 1164', '2005-10-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (843, 'Charley Hindenburg', 'T', 'White, McGlynn and DuBuque', 'chindenburgne@aboutads.info', '+63 568 385 8463', '1987-08-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (844, 'Lanae Northall', 'T', 'Windler LLC', 'lnorthallnf@etsy.com', '+7 371 484 7700', '2009-08-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (845, 'Donelle Slamaker', 'T', 'Ankunding LLC', 'dslamakerng@prweb.com', '+595 279 801 8329', '1980-10-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (846, 'Brina Hofer', 'I', 'Schmidt, Connelly and Kertzmann', 'bhofernh@zimbio.com', '+420 217 269 4606', '2006-09-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (847, 'Arron Sarjent', 'T', 'Schumm and Sons', 'asarjentni@whitehouse.gov', '+358 732 201 2669', '1999-09-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (848, 'Devlen Licciardi', 'T', 'Rau, McKenzie and Blick', 'dlicciardinj@spiegel.de', '+86 941 318 1870', '2011-06-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (849, 'Rosanna Delgardillo', 'I', 'Bernier-Gulgowski', 'rdelgardillonk@jugem.jp', '+57 159 614 7805', '2006-04-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (850, 'Adelbert Muffen', 'T', 'Greenfelder LLC', 'amuffennl@devhub.com', '+52 650 309 7045', '1994-10-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (851, 'Emmye Stenners', 'C', 'Conn-Runte', 'estennersnm@elpais.com', '+62 424 178 2401', '1994-05-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (852, 'Manon Capstaff', 'I', 'Turner, Jenkins and Bergnaum', 'mcapstaffnn@sfgate.com', '+62 634 538 9632', '1990-09-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (853, 'Franchot Verbeek', 'C', 'Heller-Volkman', 'fverbeekno@macromedia.com', '+7 580 445 1557', '2021-11-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (854, 'Lissa Lyndon', 'C', 'Goyette-Rodriguez', 'llyndonnp@tumblr.com', '+63 218 568 6978', '2005-02-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (855, 'Andreana Beany', 'T', 'Hintz-Fisher', 'abeanynq@list-manage.com', '+380 434 362 7832', '1991-02-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (856, 'Cherry Bazely', 'T', 'Dare, Rau and Hettinger', 'cbazelynr@ibm.com', '+86 106 275 3535', '1983-02-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (857, 'Korie Cleyne', 'T', 'Torp-McDermott', 'kcleynens@dailymail.co.uk', '+86 483 590 8657', '2005-03-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (858, 'Garold Satchell', 'I', 'Terry, Cremin and Tremblay', 'gsatchellnt@yandex.ru', '+33 193 419 3794', '1984-11-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (859, 'Salomone Rubes', 'T', 'Gottlieb Inc', 'srubesnu@nature.com', '+33 150 491 0783', '2020-12-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (860, 'C Chumley', 'T', 'Braun Group', 'vchumleynv@wufoo.com', '+351 186 100 6741', '2006-04-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (861, 'Aldrich Stephen', 'I', 'Schneider-Graham', 'astephennw@yelp.com', '+352 159 562 9071', '2014-11-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (862, 'Caspar Grzegorczyk', 'C', 'Parisian, Kihn and Cole', 'cgrzegorczyknx@cyberchimps.com', '+55 216 772 7983', '1992-01-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (863, 'Ezequiel Steketee', 'I', 'Dare-Howe', 'esteketeeny@deliciousdays.com', '+94 109 379 7080', '1997-01-27');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (864, 'Emera Wadwell', 'T', 'Robel-Cummings', 'ewadwellnz@wunderground.com', '+84 663 415 1026', '2006-11-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (865, 'Otto Whorlow', 'C', 'Kunze, Zemlak and Jenkins', 'owhorlowo0@google.it', '+351 245 268 3612', '1998-08-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (866, 'Dame D''Agostino', 'C', 'Lemke-Pfeffer', 'ddagostinoo1@tiny.cc', '+86 574 332 6533', '2017-04-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (867, 'Dre Sherebrooke', 'I', 'Runolfsdottir-Schumm', 'dsherebrookeo2@baidu.com', '+62 283 704 6226', '2018-05-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (868, 'Ximenez Iacobo', 'I', 'Zemlak Group', 'xiacoboo3@livejournal.com', '+84 752 766 8515', '2023-08-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (869, 'Gardener Downs', 'C', 'Kuhn-Stracke', 'gdownso4@hugedomains.com', '+234 654 908 0396', '1993-05-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (870, 'Tarrance Aldersley', 'I', 'Fadel-McGlynn', 'taldersleyo5@theguardian.com', '+86 353 546 8204', '2007-01-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (871, 'Carlo Bettaney', 'T', 'D''Amore Inc', 'cbettaneyo6@examiner.com', '+55 490 980 3318', '1999-03-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (872, 'Valentia Grabbam', 'I', 'Weissnat, Labadie and Altenwerth', 'vgrabbamo7@mysql.com', '+86 148 584 2344', '1982-07-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (873, 'Jilli Sketchley', 'T', 'Berge-Halvorson', 'jsketchleyo8@newsvine.com', '+355 848 953 3323', '1990-01-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (874, 'Ignaz Cramphorn', 'T', 'Simonis, Weissnat and Veum', 'icramphorno9@yahoo.com', '+351 544 926 1379', '2013-08-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (875, 'Alvin Barthelemy', 'C', 'Barton Group', 'abarthelemyoa@gizmodo.com', '+86 136 680 8604', '1995-01-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (876, 'Lance Kort', 'I', 'Zemlak, Hermann and Mertz', 'lkortob@samsung.com', '+63 238 903 9748', '1991-07-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (877, 'Felipe Gilchrest', 'T', 'Lockman, Sporer and Schaefer', 'fgilchrestoc@clickbank.net', '+62 393 800 2529', '1999-02-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (878, 'Currey Fitchew', 'C', 'Tillman LLC', 'cfitchewod@bloglovin.com', '+63 109 948 7507', '1995-01-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (879, 'Vin Gladstone', 'C', 'Williamson Group', 'vgladstoneoe@goo.gl', '+60 879 233 0003', '1996-05-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (880, 'Shannen Lester', 'T', 'O''Reilly-Hartmann', 'slesterof@unesco.org', '+51 863 411 7094', '1990-02-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (881, 'Judah Malsher', 'I', 'Stamm-Bergnaum', 'jmalsherog@vinaora.com', '+27 812 492 1931', '2016-03-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (882, 'Karlie Signoret', 'I', 'Dicki Group', 'ksignoretoh@amazon.co.jp', '+86 321 301 6188', '1981-02-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (883, 'Mitchael Skaife d''Ingerthorpe', 'C', 'Simonis Inc', 'mskaifeoi@yahoo.com', '+33 458 163 4927', '1982-02-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (884, 'Kelvin d'' Eye', 'C', 'Cassin-Jaskolski', 'kdoj@photobucket.com', '+385 624 789 3782', '1985-03-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (885, 'Emeline Feedome', 'C', 'Aufderhar, Howe and Hintz', 'efeedomeok@omniture.com', '+48 195 836 2933', '2001-12-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (886, 'Alisa Ivic', 'T', 'Watsica, Lubowitz and Mayer', 'aivicol@statcounter.com', '+86 614 407 2786', '2009-07-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (887, 'Florella Slaten', 'C', 'MacGyver-Hoeger', 'fslatenom@miibeian.gov.cn', '+62 200 635 5126', '2017-01-16');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (888, 'Amabelle Evers', 'T', 'Roob LLC', 'aeverson@mtv.com', '+1 612 711 9910', '1984-08-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (889, 'Rois Everington', 'C', 'Gulgowski Group', 'reveringtonoo@baidu.com', '+62 621 880 7013', '1992-07-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (890, 'Earvin Meddows', 'T', 'Spinka Inc', 'emeddowsop@gov.uk', '+66 799 985 6930', '2020-02-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (891, 'Lorettalorna Olligan', 'C', 'Effertz, Labadie and Rogahn', 'lolliganoq@reverbnation.com', '+234 360 408 9902', '1990-10-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (892, 'Sylvan Fuxman', 'I', 'Metz and Sons', 'sfuxmanor@issuu.com', '+86 677 361 6591', '1991-09-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (893, 'Bar Gley', 'I', 'Fisher, Brown and Monahan', 'bgleyos@ox.ac.uk', '+63 247 667 9662', '2018-04-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (894, 'Hubert Custy', 'T', 'Bednar-Johnston', 'hcustyot@prnewswire.com', '+374 746 788 3205', '2012-07-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (895, 'Silvano Maher', 'C', 'Farrell Inc', 'smaherou@redcross.org', '+57 646 744 6202', '1985-08-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (896, 'Laverna Ciccetti', 'I', 'Ortiz LLC', 'lciccettiov@shinystat.com', '+7 830 694 3358', '2009-06-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (897, 'Sonia Staniford', 'I', 'Langosh, Bechtelar and Sipes', 'sstanifordow@deviantart.com', '+86 579 737 9488', '1981-07-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (898, 'Blaine Provis', 'T', 'Upton-Torphy', 'bprovisox@scribd.com', '+351 798 659 6308', '2023-06-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (899, 'Holly Heams', 'C', 'Cartwright-Boyer', 'hheamsoy@odnoklassniki.ru', '+46 816 130 0580', '2002-08-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (900, 'Marvin Flintoff', 'T', 'Yost-Bradtke', 'mflintoffoz@wikimedia.org', '+86 138 922 4572', '1998-08-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (901, 'Agnes Leather', 'C', 'Cruickshank and Sons', 'aleatherp0@wiley.com', '+7 737 791 5837', '2011-09-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (902, 'Gan Jira', 'I', 'Strosin, Jast and Fritsch', 'gjirap1@walmart.com', '+86 233 954 4353', '1991-05-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (903, 'Forster Lyddyard', 'T', 'Hane LLC', 'flyddyardp2@patch.com', '+86 442 304 1987', '1991-11-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (904, 'Shadow Baudi', 'I', 'Ryan, Abshire and Swaniawski', 'sbaudip3@illinois.edu', '+48 447 741 9590', '1988-10-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (905, 'Lauryn Cornilli', 'C', 'Walker-Berge', 'lcornillip4@paginegialle.it', '+691 812 844 8752', '2015-11-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (906, 'Hally Anker', 'T', 'Kuvalis Group', 'hankerp5@flickr.com', '+62 168 418 6014', '2001-08-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (907, 'Nannette Pinckney', 'C', 'Sawayn, Moore and Schoen', 'npinckneyp6@a8.net', '+63 137 456 3045', '2010-11-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (908, 'Micky Goodrick', 'T', 'Olson, O''Kon and Nader', 'mgoodrickp7@theglobeandmail.com', '+62 749 571 3024', '1996-04-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (909, 'Aurelea Golbourn', 'I', 'Braun-Corwin', 'agolbournp8@nature.com', '+33 677 101 2198', '2021-06-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (910, 'Denice Friedank', 'T', 'Boyer-Deckow', 'dfriedankp9@epa.gov', '+62 141 870 1672', '2018-07-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (911, 'Cilka Nodes', 'I', 'Yost-Bernier', 'cnodespa@webeden.co.uk', '+972 203 432 4349', '2015-11-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (912, 'Kimberly Kingett', 'T', 'McClure, Orn and Wuckert', 'kkingettpb@dyndns.org', '+230 229 512 8609', '1989-07-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (913, 'Denver Crownshaw', 'T', 'Franecki Inc', 'dcrownshawpc@utexas.edu', '+7 720 624 0876', '2004-10-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (914, 'Andonis Vanyatin', 'I', 'Schmitt Inc', 'avanyatinpd@artisteer.com', '+52 509 424 4446', '2008-01-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (915, 'Celestia Pabst', 'T', 'Abernathy LLC', 'cpabstpe@mtv.com', '+598 313 696 6782', '1982-12-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (916, 'Timofei Lincoln', 'C', 'Harris-Medhurst', 'tlincolnpf@unesco.org', '+1 376 479 8493', '2015-01-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (917, 'Blondell Rehorek', 'C', 'Fahey, Kautzer and White', 'brehorekpg@issuu.com', '+20 968 692 2163', '1996-05-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (918, 'Allis Armin', 'I', 'Krajcik Inc', 'aarminph@histats.com', '+86 799 421 8696', '2008-06-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (919, 'Fernandina Couthard', 'T', 'Corwin-Howe', 'fcouthardpi@bluehost.com', '+53 445 199 8005', '1983-04-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (920, 'Pamela Paggitt', 'T', 'Feest, Weimann and Krajcik', 'ppaggittpj@ask.com', '+55 396 839 8779', '2013-09-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (921, 'Pace Nellies', 'I', 'Lowe-Schmidt', 'pnelliespk@salon.com', '+46 609 709 4832', '1989-11-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (922, 'Malory Alcoran', 'I', 'Hagenes, Treutel and Predovic', 'malcoranpl@booking.com', '+62 115 147 2577', '1982-01-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (923, 'Annamaria Tudor', 'C', 'Trantow, Lindgren and Prohaska', 'atudorpm@ibm.com', '+62 594 535 1050', '2021-10-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (924, 'Trevor Perrone', 'C', 'Gutmann, Hammes and Wunsch', 'tperronepn@ucla.edu', '+856 178 264 7138', '2020-03-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (925, 'Una Inwood', 'C', 'O''Connell Group', 'uinwoodpo@admin.ch', '+420 620 621 3501', '2011-03-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (926, 'Hermy Sunock', 'T', 'Boyle LLC', 'hsunockpp@bluehost.com', '+82 365 820 2224', '2000-05-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (927, 'Jourdan Turmell', 'T', 'Hermiston Inc', 'jturmellpq@google.de', '+1 841 528 3980', '2021-06-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (928, 'Waite Moyser', 'I', 'Bartoletti-Runte', 'wmoyserpr@fema.gov', '+33 338 475 4059', '2008-09-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (929, 'Glen Powton', 'C', 'Ritchie-Schinner', 'gpowtonps@fotki.com', '+351 750 487 9335', '2019-08-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (930, 'Dorie Jaksic', 'T', 'Moore, Kovacek and Morar', 'djaksicpt@studiopress.com', '+62 150 144 3483', '2011-01-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (931, 'Rodie Drugan', 'T', 'Mueller-Weber', 'rdruganpu@discovery.com', '+63 823 931 9679', '2016-04-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (932, 'Cherie Gall', 'I', 'C-Kihn', 'cgallpv@tinypic.com', '+63 418 816 2592', '2012-07-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (933, 'Raddie Selman', 'I', 'Erdman-Kozey', 'rselmanpw@wikimedia.org', '+52 747 272 1415', '2015-03-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (934, 'Thedric Benian', 'T', 'Donnelly-Ernser', 'tbenianpx@google.ru', '+595 353 325 9792', '2011-05-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (935, 'Constantine Rousby', 'I', 'McGlynn and Sons', 'crousbypy@topsy.com', '+86 536 819 5292', '1983-11-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (936, 'Stanleigh Cristofari', 'C', 'Bechtelar, Carroll and Schumm', 'scristofaripz@istockphoto.com', '+62 817 881 7963', '2023-01-23');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (937, 'Cayla Smullin', 'I', 'Grimes Group', 'csmullinq0@wp.com', '+48 459 415 3347', '2016-09-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (938, 'Wolfie Loffill', 'C', 'Hessel Inc', 'wloffillq1@unicef.org', '+850 400 652 9834', '2002-09-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (939, 'Alexei Curston', 'I', 'Pacocha LLC', 'acurstonq2@ameblo.jp', '+48 422 574 9821', '1988-09-22');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (940, 'Sylas Crafter', 'T', 'Hessel Group', 'scrafterq3@storify.com', '+52 237 402 1799', '1992-05-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (941, 'Taddeusz Dublin', 'I', 'Nienow-Lueilwitz', 'tdublinq4@engadget.com', '+33 171 246 7504', '1993-05-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (942, 'Addy Steer', 'C', 'Gerlach and Sons', 'asteerq5@mapy.cz', '+86 210 703 3295', '1992-05-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (943, 'Beniamino Yitzovicz', 'T', 'Kreiger-Koelpin', 'byitzoviczq6@hexun.com', '+241 229 957 8425', '1988-11-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (944, 'Evvie Le Lievre', 'I', 'Bogisich, Moen and Herman', 'eleq7@msu.edu', '+86 273 288 5561', '2018-06-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (945, 'Noby Kunrad', 'I', 'Oberbrunner-Shanahan', 'nkunradq8@example.com', '+234 718 363 6935', '2018-12-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (946, 'Joe Appleford', 'I', 'Robel Inc', 'japplefordq9@cbc.ca', '+86 617 715 7513', '2015-05-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (947, 'Germaine Gamwell', 'C', 'Hermann, Conn and Mante', 'ggamwellqa@admin.ch', '+86 744 963 0142', '2022-09-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (948, 'Nalani Cuthbert', 'C', 'Okuneva-Balistreri', 'ncuthbertqb@pagesperso-T.fr', '+351 434 494 0516', '1995-04-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (949, 'Bartholomeus Bratty', 'I', 'Bayer, Kassulke and Pfannerstill', 'bbrattyqc@google.com', '+7 518 399 8968', '1998-12-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (950, 'Maure Croke', 'I', 'Huels-Lind', 'mcrokeqd@quantcast.com', '+7 697 615 1925', '1981-12-02');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (951, 'Sammy Becke', 'I', 'Lueilwitz-Nitzsche', 'sbeckeqe@yellowpages.com', '+84 490 556 2097', '1981-01-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (952, 'Benedetto Lambertz', 'I', 'Nader Inc', 'blambertzqf@jigsy.com', '+86 211 319 6498', '1998-01-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (953, 'Zach Dayce', 'C', 'Donnelly LLC', 'zdayceqg@auda.org.au', '+86 433 399 0877', '1981-04-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (954, 'Hazel Van Halle', 'C', 'Sporer, Pouros and Welch', 'hvanqh@netlog.com', '+1 447 416 2355', '2004-02-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (955, 'Nixie Weinham', 'T', 'Armstrong, Schneider and Hilpert', 'nweinhamqi@tripadvisor.com', '+48 177 745 5475', '1989-07-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (956, 'Sloan Kliemke', 'T', 'Luettgen-Dare', 'skliemkeqj@dailymotion.com', '+55 995 632 9184', '2005-04-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (957, 'Frannie Adin', 'T', 'Wisozk, West and Murray', 'fadinqk@nih.gov', '+265 811 831 0508', '1993-04-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (958, 'Joyan Pettet', 'C', 'Emard, Roob and Friesen', 'jpettetql@mapy.cz', '+55 206 303 1517', '2017-10-05');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (959, 'Kristofer Billanie', 'I', 'Orn, Klocko and Bernier', 'kbillanieqm@blinklist.com', '+381 556 362 9992', '2011-04-13');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (960, 'Vassily Schneidar', 'C', 'Gutkowski LLC', 'vschneidarqn@example.com', '+7 456 546 3402', '1994-10-19');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (961, 'Dalton Blenkinsopp', 'C', 'Berge-Barrows', 'dblenkinsoppqo@latimes.com', '+86 733 879 8345', '2005-04-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (962, 'Jarvis Woloschin', 'I', 'Schoen, Dooley and Gislason', 'jwoloschinqp@de.vu', '+1 544 927 5109', '1994-10-08');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (963, 'Oby Trimble', 'I', 'Spencer Group', 'otrimbleqq@cloudflare.com', '+46 814 484 5512', '2001-04-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (964, 'Kalvin Arbon', 'C', 'Jakubowski, Kshlerin and Bogan', 'karbonqr@multiply.com', '+81 647 523 1656', '2020-12-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (965, 'Melissa Ludl', 'T', 'Wyman, Schaefer and Ondricka', 'mludlqs@dropbox.com', '+212 658 440 6102', '1998-11-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (966, 'Reiko Flaxon', 'I', 'Ziemann, Kuhn and Legros', 'rflaxonqt@myspace.com', '+351 801 257 1914', '2019-01-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (967, 'Verena Ellar', 'I', 'Wilderman, Kilback and Brekke', 'vellarqu@bluehost.com', '+66 622 957 7182', '1982-08-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (968, 'Hendrick Boustead', 'T', 'Stamm Group', 'hbousteadqv@newyorker.com', '+62 609 203 1306', '1988-01-28');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (969, 'Elayne Albro', 'I', 'Rohan, Rath and Herzog', 'ealbroqw@ameblo.jp', '+351 274 766 6049', '2008-06-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (970, 'Valencia Cherry', 'C', 'Deckow, Strosin and Christiansen', 'vcherryqx@hao123.com', '+7 513 171 2736', '2011-04-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (971, 'Haven Click', 'T', 'Stehr Inc', 'hclickqy@behance.net', '+81 410 559 8807', '1992-06-15');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (972, 'Amity Kerfod', 'C', 'Hirthe, Stroman and Feeney', 'akerfodqz@howstuffworks.com', '+62 203 784 9577', '1998-06-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (973, 'Cherin Kernan', 'C', 'Osinski LLC', 'ckernanr0@mashable.com', '+57 661 206 7954', '2009-06-24');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (974, 'Hyacinthe Rowling', 'T', 'Bergnaum LLC', 'hrowlingr1@pen.io', '+967 482 718 3573', '2016-07-07');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (975, 'Talbot Goutcher', 'T', 'Pfeffer LLC', 'tgoutcherr2@mashable.com', '+51 890 299 0268', '2023-08-25');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (976, 'Catarina Bebb', 'T', 'Blanda, Bernier and Fay', 'cbebbr3@ft.com', '+62 365 705 4845', '1994-07-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (977, 'Cletus Franciskiewicz', 'T', 'Erdman LLC', 'cfranciskiewiczr4@com.com', '+86 259 976 5720', '1996-08-31');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (978, 'Joell Creeber', 'T', 'Beier and Sons', 'jcreeberr5@unblog.fr', '+62 418 380 5245', '2012-08-21');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (979, 'Ursa Peggs', 'C', 'Raynor-Romaguera', 'upeggsr6@reuters.com', '+48 189 308 3134', '1984-10-26');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (980, 'Ripley Lassey', 'I', 'White LLC', 'rlasseyr7@linkedin.com', '+86 734 490 2733', '1994-09-17');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (981, 'Faina Bremen', 'T', 'Pouros-Grady', 'fbremenr8@senate.gov', '+355 718 299 7807', '2017-09-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (982, 'Farrand Alwen', 'C', 'Goyette, Huels and Hirthe', 'falwenr9@soundcloud.com', '+7 165 921 6075', '1983-10-09');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (983, 'Jobina Sergent', 'T', 'Schuster and Sons', 'jsergentra@mashable.com', '+86 997 800 9736', '2006-08-11');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (984, 'Germana Villaron', 'T', 'Rohan-Hodkiewicz', 'gvillaronrb@npr.org', '+86 118 219 5934', '1999-07-06');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (985, 'Freddi Karim', 'T', 'Harber, McDermott and Rolfson', 'fkarimrc@arstechnica.com', '+234 957 212 9842', '2016-08-01');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (986, 'Riordan Newiss', 'C', 'Price-Christiansen', 'rnewissrd@cnet.com', '+234 482 630 5984', '1982-05-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (987, 'Heddie Bartali', 'C', 'Harber and Sons', 'hbartalire@pbs.org', '+86 232 303 6150', '2016-06-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (988, 'Sonnie Potkins', 'T', 'Thompson, C and Johns', 'spotkinsrf@example.com', '+48 340 398 3979', '1984-01-10');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (989, 'Morlee Oldred', 'C', 'Crooks-Dickinson', 'moldredrg@ucoz.ru', '+81 983 147 4592', '2009-11-14');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (990, 'Dael Attawell', 'T', 'Kuhn, Gorczany and Deckow', 'dattawellrh@wikipedia.org', '+86 114 484 2851', '2011-06-03');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (991, 'Shalom Berzon', 'T', 'Huel, Jacobi and Kessler', 'sberzonri@woothemes.com', '+62 614 145 9955', '1989-07-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (992, 'Zollie Amys', 'T', 'Walter Inc', 'zamysrj@umich.edu', '+1 702 334 4037', '2021-03-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (993, 'Deeann Tithacott', 'T', 'Rippin, Wolf and Cruickshank', 'dtithacottrk@adobe.com', '+46 459 889 4037', '1996-03-29');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (994, 'Pen Coulsen', 'T', 'Stiedemann-Runolfsdottir', 'pcoulsenrl@timesonline.co.uk', '+62 670 525 2739', '1990-01-18');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (995, 'Nero Bresner', 'C', 'Rogahn, Hegmann and Schaden', 'nbresnerrm@yahoo.com', '+66 295 578 4608', '1983-04-30');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (996, 'Madalyn Dorney', 'T', 'Turner, Reinger and Balistreri', 'mdorneyrn@51.la', '+7 666 615 8248', '2020-10-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (997, 'Trula Dallan', 'C', 'Schulist-McGlynn', 'tdallanro@baidu.com', '+974 247 763 5866', '1994-12-12');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (998, 'Bendite Poley', 'I', 'Toy and Sons', 'bpoleyrp@microsoft.com', '+996 728 514 3244', '1993-06-20');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (999, 'Sheree Vasilchikov', 'C', 'Kris and Sons', 'svasilchikovrq@php.net', '+7 155 480 9576', '2019-03-04');
insert into Users.users (user_id, user_full_name, user_type, user_company_name, user_email, user_phone_number, user_modified_date) values (1000, 'Stanley Rowlett', 'T', 'Luettgen-Hegmann', 'srowlettrr@deliciousdays.com', '+27 604 956 8610', '2008-06-21');
SET IDENTITY_INSERT Users.users OFF;
--SELECT CONVERT(varchar, user_modified_date, 120) AS fecha_hora_formateada FROM Users.users;

SET IDENTITY_INSERT Users.users OFF;
select*
from Users.users
--Users.roles
SET IDENTITY_INSERT users.roles ON;
INSERT INTO users.roles (role_id, role_name)
VALUES
(1, 'Huesped'),
(2, 'Gerente'),
(3, 'Oficinista'),
(4, 'Administrador'),
(5, 'Usuario');
SET IDENTITY_INSERT users.roles OFF;


INSERT INTO users.user_roles (usro_user_id, usro_role_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 2),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5);

SET IDENTITY_INSERT users.user_profiles ON;
INSERT INTO users.user_profiles (uspro_id, uspro_national_id, uspro_birth_date, uspro_job_title, uspro_marital_status, uspro_gender, uspro_addr_id, uspro_user_id)
VALUES (1, '123-45-6789', '1980-01-01', 'Gerente', 'S', 'M', 1, 1),
       (2, '234-56-7890', '1985-02-02', 'Desarrollador', 'M', 'F', 2, 2),
       (3, '345-67-8901', '1990-03-03', 'Dise�ador', 'S', 'M', 3, 3),
       (4, '456-78-9012', '1995-04-04', 'Tester', 'M', 'F', 4, 4),
       (5, '567-89-0123', '2000-05-05', 'Analista', 'S', 'M', 5, 5),
       (6, '678-90-1234', '2005-06-06', 'Consultor', 'M', 'F', 6, 6),
       (7, '789-01-2345', '2010-07-07', 'Vendedor', 'S', 'M', 7, 7),
       (8, '890-12-3456', '2015-08-08', 'Gerente Recursos Humanos', 'M', 'F', 8, 8),
       (9, '901-23-4567', '2020-09-09', 'Gerente De Proyecto', 'S', 'M', 9, 9),
       (10, '012-34-5678', '2025-10-10', 'Gerente De Marketing', 'M', 'F', 10, 10),
	   (11, '123-45-6789', '1985-01-01', 'Ingeniero', 'S', 'M', 11, 11),
	   (12, '234-56-7890', '1990-01-01', 'Dise�ador', 'S', 'F', 12, 12),
	   (13, '345-67-8901', '1995-01-01', 'Periodista', 'S', 'M', 13, 13),
	   (14, '456-78-9012', '1980-01-01', 'Profesor', 'M', 'F', 14, 14),
	   (15, '567-89-0123', '1985-01-01', 'Escritor', 'S', 'M', 15, 15);
SET IDENTITY_INSERT users.user_profiles OFF;

SET IDENTITY_INSERT users.user_password ON;
INSERT INTO users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt)
VALUES
(1, '123456', 'abcdef'),
(2, 'password', 'ghijkl'),
(3, 'qwerty', 'mnopqr'),
(4, 'letmein', 'stuvwx'),
(5, 'trustno1', 'yzabcd'),
(6, 'sunshine', 'efghij'),
(7, 'iloveyou', 'klmnop'),
(8, 'monkey', 'qrstuv'),
(9, 'starwars', 'wxyzab'),
(10, 'master', 'cdefgh'),
(11, 'abc123', 'ijklmn'),
(12, '123abc', 'opqrst'),
(13, 'welcome', 'uvwxyz'),
(14, 'monkey1', 'abcdefg'),
(15, 'password1', 'hijklmn');
SET IDENTITY_INSERT users.user_password OFF;

SET IDENTITY_INSERT users.bonus_points ON;
INSERT INTO users.bonus_points (ubpo_id, ubpo_user_id, ubpo_total_points, ubpo_bonus_type, ubpo_created_on)
VALUES (1, 1, 1000, 'R', '2022-01-01'),
	   (2, 2, 2000, 'P', '2022-02-02'),
	   (3, 3, 3000, 'P', '2022-03-03'),
	   (4, 4, 4000, 'R', '2022-04-04'),
	   (5, 5, 5000, 'P', '2022-05-05'),
	   (6, 6, 6000, 'P', '2022-06-06'),
	   (7, 7, 7000, 'R', '2022-07-07'),
	   (8, 8, 8000, 'P', '2022-08-08'),
	   (9, 9, 9000, 'P', '2022-09-09'),
	   (10, 10, 10000, 'R', '2022-10-10'),
	   (11, 11, 10000, 'P', '2022-11-11'),
	   (12, 12, 10000, 'R', '2022-12-12'),
	   (13, 13, 10000, 'P', '2022-01-01'),
	   (14, 14, 10000, 'R', '2022-02-02'),
	   (15, 15, 10000, 'P', '2022-03-03');
SET IDENTITY_INSERT users.bonus_points OFF;

-- INSERT MODULE Hotel
--* DATA HOTEL *--
INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Grand Hyatt Jakarta', 'Luxury hotel in the heart of Jakarta', 1, '+62 21 29921234', 4, 'Jl. M. H. Thamrin No.30, Jakarta Pusat', GETDATE());

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Aston Priority Simatupang Hotel & Conference Center', 'Contemporary hotel in South Jakarta', 0, '+62 21 78838777', 5, 'Jl. Let. Jend. T.B. Simatupang Kav. 9 Kebagusan Pasar Minggu, Jakarta Selatan', GETDATE());

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('The Trans Luxury Hotel Bandung', 'Luxury hotel in Bandung', 0, '+62 22 87348888', 6, 'Jl. Gatot Subroto No. 289, Bandung, Jawa Barat', GETDATE());

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Padma Resort Ubud', 'Resort with rice field views in Ubud', 1, '+62 361 3011111', 7, 'Banjar Carik, Desa Puhu, Payangan, Gianyar, Bali', GETDATE());

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Four Seasons Resort Bali at Sayan', 'Luxury resort in the heart of Bali', 0, '+62 361 977577', 8, 'Sayan, Ubud, Bali', GETDATE());

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('The Stones - Legian, Bali', 'Beachfront hotel in Legian, Bali', 1, '+62 361 3005888', 9, 'Jl. Raya Pantai Kuta, Banjar Legian Kelod, Legian, Bali', GETDATE());

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Aryaduta Makassar', 'City hotel in Makassar', 1, '+62 411 871111', 4, 'Jl. Somba Opu No. 297, Makassar, Sulawesi Selatan', GETDATE());

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_modified_date, hotel_addr_id, hotel_addr_description)
VALUES ('Hotel Tugu Malang', 'Hotel mewah dengan desain klasik Indonesia', 0, '(0341) 363891', GETDATE(), 5, 'Jl. Tugu No. 3, Klojen, Malang');

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_modified_date, hotel_addr_id, hotel_addr_description)
VALUES ('The Shalimar Boutique Hotel', 'Hotel butik bintang 4 dengan taman tropis', 0, '(0341) 550888', GETDATE(), 5, 'Jalan Salak No. 38-42, Oro Oro Dowo, Klojen, Malang');

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_modified_date, hotel_addr_id, hotel_addr_description)
VALUES ('Hotel Santika Premiere Malang', 'Hotel bintang 4 dengan restoran dan kolam renang', 1, '(0341) 405405', GETDATE(), 5, 'Jl. Letjen S. Parman No. 60, Malang');

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_modified_date, hotel_addr_id, hotel_addr_description)
VALUES ('Ijen Suites Resort & Convention', 'Hotel mewah dengan kolam renang dan spa', 1, '(0341) 404888', GETDATE(), 5, 'Jalan Raya Kahuripan No. 16, Tlogomas, Malang');

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_modified_date, hotel_addr_id, hotel_addr_description)
VALUES ('Atria Hotel Malang', 'Hotel mewah dengan pemandangan pegunungan', 0, '(0341) 402888', GETDATE(), 5, 'Jl. Letjen Sutoyo No.79, Klojen, Malang');

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_modified_date, hotel_addr_id, hotel_addr_description)
VALUES ('Jambuluwuk Batu Resort', 'Resor bintang 4 dengan taman dan kolam renang', 0, '(0341) 596333', GETDATE(), 5, 'Jl. Trunojoyo No.99, Oro Oro Ombo, Batu, Malang');

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_modified_date, hotel_addr_id, hotel_addr_description)
VALUES ('Aria Gajayana Hotel', 'Hotel mewah dengan pemandangan pegunungan', 0, '(0341) 320188', GETDATE(), 5, 'Jl. Hayam Wuruk No. 5, Klojen, Malang');

INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_modified_date, hotel_addr_id, hotel_addr_description)
VALUES ('The Batu Hotel & Villas', 'Hotel mewah dengan kolam renang dan restoran', 1, '(0341) 512555', GETDATE(), 5, 'Jalan Raya Selecta No.1');
-- select * from Hotel.hotels


--* DATA REVIEWS *--
-- Data 1
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Hotel ini sangat menyenangkan!', 5, GETDATE(), 1, 1);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Pelayanan hotel sangat baik', 4, GETDATE(), 5, 1);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Kamar hotel sangat bersih dan nyaman', 5, GETDATE(), 6, 1);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Sangat puas dengan penginapan ini', 1, GETDATE(), 10, 1);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Sarapan paginya enak dan bervariasi', 1, GETDATE(), 11, 1);

-- Data 2
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Saya suka kamar mandinya yang luas', 4, GETDATE(), 1, 2);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Lokasi hotelnya sangat dekat dengan pusat kota', 4, GETDATE(), 5, 2);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Makanan di restoran hotelnya enak', 5, GETDATE(), 6, 2);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Pengalaman menginap yang menyenangkan', 5, GETDATE(), 10, 2);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Pelayanan receptionistnya ramah dan cepat', 5, GETDATE(), 11, 2);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Hotel yang direkomendasikan', 5, GETDATE(), 15, 2);

-- Data 3
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Kamar hotelnya luas dan bersih', 5, GETDATE(), 1, 3);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Sarapan paginya enak dan bergizi', 4, GETDATE(), 5, 3);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Fasilitas hotelnya lengkap', 5, GETDATE(), 6, 3);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Sangat puas dengan pelayanan hotelnya', 5, GETDATE(), 10, 3);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Harga yang sangat terjangkau', 5, GETDATE(), 11, 3);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Saya suka dengan suasana hotelnya yang tenang', 5, GETDATE(), 15, 3);

--DATA 4
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Hotel yang bagus untuk staycation', 5, GETDATE(), 1, 4);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Pemandangannya indah dari kamar', 4, GETDATE(), 5, 4);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Tempat yang pas untuk liburan keluarga', 5, GETDATE(), 6, 4);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Saya akan merekomendasikan hotel ini ke teman', 5, GETDATE(), 10, 4);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Sangat menyenangkan menginap di hotel ini', 5, GETDATE(), 11, 4);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Layanan hotelnya memuaskan', 5, GETDATE(), 15, 4);

-- DATA 5
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Kamar hotelnya bersih dan nyaman', 5, GETDATE(), 1, 5);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Lokasi hotelnya sangat dekat dengan pusat kota', 4, GETDATE(), 5, 5);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Pelayanan yang sangat baik', 5, GETDATE(), 6, 5);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Hotel yang cocok untuk perjalanan bisnis', 5, GETDATE(), 10, 5);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Saya suka kolam renangnya yang besar', 4, GETDATE(), 11, 5);
INSERT INTO Hotel.Hotel_Reviews (hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id)
VALUES
('Hotelnya direkomendasikan untuk liburan keluarga', 5, GETDATE(), 15, 5);


INSERT INTO Hotel.Facilities
(faci_name, faci_description, faci_max_number, faci_measure_unit, faci_room_number, faci_startdate, faci_enddate, faci_low_price, faci_high_price, faci_rate_price, faci_expose_price, faci_discount, faci_tax_rate, faci_modified_date, faci_cagro_id, faci_hotel_id, faci_user_id)
VALUES
('Deluxe Room', 'Spacious room with modern amenities', 2, 'beds', 'D01', '2023-03-10', '2023-03-11', 1000000, 1500000, NULL, 1, 10, 10, GETDATE(), 1, 3, 9);
INSERT INTO Hotel.Facilities
(faci_name, faci_description, faci_max_number, faci_measure_unit, faci_room_number, faci_startdate, faci_enddate, faci_low_price, faci_high_price, faci_rate_price, faci_expose_price, faci_discount, faci_tax_rate, faci_modified_date, faci_cagro_id, faci_hotel_id, faci_user_id)
VALUES
('Superior Room', 'Cozy room with city view', 2, 'beds', 'D02', '2023-03-10', '2023-05-10', 900000, 1200000, NULL, 1, NULL, NULL, GETDATE(), 1, 3, 9);
INSERT INTO Hotel.Facilities
(faci_name, faci_description, faci_max_number, faci_measure_unit, faci_room_number, faci_startdate, faci_enddate, faci_low_price, faci_high_price, faci_rate_price, faci_expose_price, faci_discount, faci_tax_rate, faci_modified_date, faci_cagro_id, faci_hotel_id, faci_user_id)
VALUES
('Pool Villa', 'Private villa with pool access', 2, 'people', 'PV01', '2023-14-03', '2023-16-03', 3000000, 3500000, NULL, 1, NULL, NULL, GETDATE(), 1, 3, 9);
INSERT INTO Hotel.Facilities
(faci_name, faci_description, faci_max_number, faci_measure_unit, faci_room_number, faci_startdate, faci_enddate, faci_low_price, faci_high_price, faci_rate_price, faci_expose_price, faci_discount, faci_tax_rate, faci_modified_date, faci_cagro_id, faci_hotel_id, faci_user_id)
VALUES
('Meeting Room 1', 'Suitable for small meetings', 20, 'people', 'M01', '2023-14-03', '2023-16-03', 1500000, 2000000, NULL, 1, NULL, NULL, GETDATE(), 3, 3, 9);
INSERT INTO Hotel.Facilities
(faci_name, faci_description, faci_max_number, faci_measure_unit, faci_room_number, faci_startdate, faci_enddate, faci_low_price, faci_high_price, faci_rate_price, faci_expose_price, faci_discount, faci_tax_rate, faci_modified_date, faci_cagro_id, faci_hotel_id, faci_user_id)
VALUES
('Gym', 'Fully equipped gym with personal trainer', 50, 'people', 'G01', '2023-14-03', '2023-16-03', 750000, 1000000, NULL, 1, 20, 10, GETDATE(), 4, 3, 9);
INSERT INTO Hotel.Facilities
(faci_name, faci_description, faci_max_number, faci_measure_unit, faci_room_number, faci_startdate, faci_enddate, faci_low_price, faci_high_price, faci_rate_price, faci_expose_price, faci_discount, faci_tax_rate, faci_modified_date, faci_cagro_id, faci_hotel_id, faci_user_id)
VALUES
('Sauna', 'Relaxing sauna for your wellness', 10, 'people', 'S01', '2023-14-03', '2023-16-03', 300000, 400000, NULL, 1, NULL, NULL, GETDATE(), 6, 3, 9);
INSERT INTO Hotel.Facilities
(faci_name, faci_description, faci_max_number, faci_measure_unit, faci_room_number, faci_startdate, faci_enddate, faci_low_price, faci_high_price, faci_rate_price, faci_expose_price, faci_discount, faci_tax_rate, faci_modified_date, faci_cagro_id, faci_hotel_id, faci_user_id)
VALUES
('Ballroom', 'Elegant ballroom for your event', 100, 'people', 'B01', '2023-14-03', '2023-16-03', 10000000, 15000000, NULL, 1, 10, 10, GETDATE(), 7, 3, 9);

