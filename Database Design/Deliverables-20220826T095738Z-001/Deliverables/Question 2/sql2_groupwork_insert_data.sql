INSERT INTO unit_measure (unit_measure_id, metric_code, metric_name)
VALUES 
(1,'KG','kilograms'),
(2,'MT','meters'),
(3,'ML','miles'),
(4,'KM','kilometers'),
(5,'GR','gramms'),
(6,'LT','litres'),
(7,'ML','millilitres'),
(8,'UN','unit item'),
(9,'NM','no measure');


INSERT INTO segment (segment_id, seg_name, descr)
VALUES 
(1,'food & beverage','food & beverage'),
(2,'entertainment','entertainment'),
(3,'beauty & health care','beauty & health care'),
(4,'gaming','gaming');


insert into family (family_id, segment_id, fam_name, descr)
values
(1,1,'food','food'),
(2,1,'beverage','beverage'),
(3,4,'gambling games','gambling games'),
(4,2,'cinema','cinema'),
(5,3,'beauty','beauty'),
(6,3,'health care','health care');


insert into class (class_id, family_id, class_name, descr)
values
(1,1,'fast food','fast food'),
(2,1,'healthy food','healthy food'),
(3,1,'pasta','pasta'),
(4,2,'alcoholic beverage','alcoholic beverage'),
(5,2,'non alcoholic beverage','non alcoholic beverage'),
(6,4,'movie','movie'),
(7,3,'casino','casino'),
(8,6,'massage','massage'),
(9,5,'haircut','haircut');



insert into category (category_id, class_id, cat_name, descr)
values
(1,1,'burger','burger'),
(2,2,'salad','salad'),
(3,3,'italian pasta','italian pasta'),
(4,4,'whisky','whisky'),
(5,5,'soft drink','soft drink'),
(6,6,'action movie','action movie'),
(7,7,'casino round','casino round'),
(8,8,'thai massage','thai massage'),
(9,9,'full haircut','full haircut');



insert into item (item_id, category_id, unit_measure_id, weight, item_name, descr)
values
(1,1,1,0.2,'cheeseburger','cheeseburger'),
(2,1,1,0.2,'hamburger','hamburger'),
(3,2,1,0.2,'caesar','caesar salad'),
(4,3,1,0.3,'alfredo','alfredo pasta'),
(5,4,6,0.7,'macallan','macallan single malt scotch'),
(6,5,6,0.33,'coke zero','coca cola zero'),
(7,6,8,null,'doctor strange - #1','doctor strange - session #1'),
(8,7,9,null,'cash in','casino cash in'),
(9,7,9,null,'cash out','casino cash out'),
(10,8,8,null,'thai fb rel massage','thai full body relaxation massage'),
(11,9,8,null,'haircut + wash','haircut with a wash');



insert into payment (payment_id, payment_code, payment_type, decription)
values
(1,'CASH','cash','payment made in cash'),
(2,'VS','non-cash','visa payment'),
(3,'MC','non-cash','master card payment'),
(4,'BC','crypto','bitcoin payment');



insert into currency (currency_id, currency_code, description)
values
(1,'USD','US dollars'),
(2,'EUR','Euro'),
(3,'GBP','British pounds'),
(4,'RUB','Russian ruble'),
(5,'GEL','Georgian lari');



insert into zipcode (zipcode_id, zipcode, city, state, country)
values
(1,'11','Hunan','Khyber Pakhtoonkhwa','Australia'),
(2,'5','Molde','Banten','Chile'),
(3,'9','Satriano di Lucania','East Kalimantan','Netherlands'),
(4,'19','Canberra','Hamburg','Costa Rica'),
(5,'17','Waiheke Island','Cajamarca','Nigeria'),
(6,'19','Banda','Northern Territory','Belgium'),
(7,'17','Mataró','Yukon','Germany'),
(8,'3','Hainan','Pays de la Loire','Netherlands'),
(9,'CN001','Cajamarca','Mpumalanga','Canada'),
(10,'17','Mannheim','FATA','Germany'),
(11,'19','Charlottetown','North Sumatra','New Zealand'),
(12,'5','Urdaneta','Trà Vinh','Philippines'),
(13,'11','Dublin','Balochistan','Nigeria'),
(14,'15','Vienna','San José','Sweden'),
(15,'NW7','Radom;','La Libertad','United States'),
(16,'13','Soma','Central Luzon','Nigeria'),
(17,'7','Yurimaguas','Namen','Peru'),
(18,'13','Wrexham','Östergötlands län','Nigeria'),
(19,'AHS299','Den Helder','Arica y Parinacota','Pakistan'),
(20,'1','Kitsman','Queensland','Nigeria'),
(21,'9433-3482','Yaroslavl','Odessa oblast','Turkey'),
(22,'66427','Boo','Biobío','Norway'),
(23,'415133','Lebowakgomo','Niedersachsen','United Kingdom'),
(24,'AO8 2RQ','Challand-Saint-Victor','Gyeonggi','Austria'),
(25,'43374','Kearney','Zeeland','Australia'),
(26,'178692','Matamata','Noord Brabant','Netherlands'),
(27,'48405','Kaluga','Mpumalanga','Belgium'),
(28,'76677','Jeju','Molise','Austria'),
(29,'356165','Dnipro','South Island','Mexico'),
(30,'357812','Bauchi','Goiás','Costa Rica');



insert into address (address_id, street_name, address_number, zipcode_id)
values
(1,'911-9965 Pede, Av.',520,1),
(2,'1506 Sed Rd.',55114,2),
(3,'4345 Posuere Street',16538,3),
(4,'200-5915 Nostra',23819,4),
(5,'6297 Ultrices. Road',65845,5),
(6,'974-7031 Neque Avenue',840219,6),
(7,'7903 Convallis Rd.',56808,7),
(8,'5268 Et Avenue',945100,8),
(9,'224-9787 Eu',749,9),
(10,'996-9176 Magnis Rd.',614572,10),
(11,'8101 Et St.',4257,11),
(12,'7931 Vehicula Rd.',18218,12),
(13,'979-4236 Adipiscing Avenue',19231,13),
(14,'700-5527 Dictum. St.',14167,14),
(15,'9122 Nunc Rd.',1528,15),
(16,'967-9485 Nunc St.',21415,16),
(17,'6580 Lacus. Street',516611,17),
(18,'675-9243 Fusce St.',58655,18),
(19,'1558 Velit Rd.',6609,19),
(20,'456-2868 Vitae Road',17282,20),
(21,'6402 Vitae Street',9,21),
(22,'642-1318 Ornare Rd.',3,22),
(23,'P.O. Box 954 1953 Vulputate St.',2,23),
(24,'913-1920 Augue St.',3,24),
(25,'Ap #863-2506 Habitant St.;',9,25),
(26,'Ap #641-7980 Pellentesque Street',6,26),
(27,'Ap #430-4134 Lobortis Rd.',5,27),
(28,'P.O. Box 993 8094 Bibendum Ave',6,28),
(29,'P.O. Box 688 551 Magna. Road',9,29),
(30,'996-4223 Eget Street;',2,30);



insert into ships
(`ship_id`,
`ship_name`,
`built_date`,
`capacity`,
`no_of_rooms`,
`license_plate`,
`unit_measure_id`,
`ship_height`,
`ship_width`,
`ship_length`,
`origin_country`,
`ship_status`)
VALUES
(1,'titanic','1975-07-24',500,200,'HBR86CUX5VT',2,300,200,500,'Republic of Ireland','active'),
(2,'britanic','1976-10-05',300,150,'MZM71UCG4RU',2,180,120,300,'The United Kingdom','active'),
(3,'everest','1977-01-21',250,100,'CGI82SHM6FX',2,150,100,250,'China','active'),
(4,'victoria','1978-03-16',200,80,'ABQ72QUI1DV',2,120,80,200,'Netherlands','active'),
(5,'black pearl','1975-08-28',150,50,'QZE32QZL7QO',2,90,60,150,'the United States','inactive');



INSERT INTO `sql_workgroup`.`agent_cat`
(`agent_cat_id`,
`category_name`)
VALUES
(1, 'online - third party'),
(2, 'local office'),
(3, 'partner office'),
(4, 'online - website');


INSERT INTO `sql_workgroup`.`agents`
(`agent_id`,
`agent_name`,
`agent_cat_id`,
`phone`,
`email`,
`address_id`)
VALUES
(1,'booking.com',1,'603.123.6666','info@booking.com',9),
(2,'cruise ltd - costa rica',2,'515.123.7777','info@cruiseltd-cr.com',4),
(3,'expedia.com',1,'515.123.8888','info@expedia.com',12),
(4,'via tourism ltd',3,'515.123.8080','info@viatourism.com',2),
(5,'cruise ltd',4,'515.123.8181','info@cruiseltd.com',16);


INSERT INTO `sql_workgroup`.`room_category`
(`room_cat_id`,
`category_name`)
VALUES
(1,'standard'),
(2,'deluxe'),
(3,'suite'),
(4,'president');




INSERT INTO `sql_workgroup`.`room_type`
(`room_type_id`,
`room_type`,
`capacity`)
VALUES
(1,'single',1),
(2,'double',2),
(3,'triple',3);



INSERT INTO `sql_workgroup`.`rooms`
(`room_id`,
`room_type_id`,
`room_cat_id`,
`ship_id`,
`price`,
`currency_id`)
VALUES
(1,1,1,1,100,1),
(2,1,2,1,130,1),
(3,2,1,1,130,1),
(4,2,1,1,130,1),
(5,2,2,1,150,1),
(6,2,2,1,150,1),
(7,2,2,1,150,1),
(8,3,3,1,200,1),
(9,3,3,1,200,1),
(10,3,4,1,1000,1),
(11,1,1,2,100,1),
(12,1,1,2,100,1),
(13,1,2,2,140,1),
(14,2,1,2,140,1),
(15,2,1,2,140,1),
(16,2,1,2,140,1),
(17,2,2,2,170,1),
(18,2,2,2,170,1),
(19,3,3,2,300,1),
(20,3,3,2,300,1),
(21,3,4,2,800,1),
(22,1,1,3,110,1),
(23,1,1,3,110,1),
(24,2,1,3,140,1),
(25,2,1,3,140,1),
(26,2,1,3,140,1),
(27,2,2,3,175,1),
(28,2,2,3,175,1),
(29,2,3,3,225,1),
(30,3,4,3,500,1),
(31,1,1,4,110,1),
(32,1,1,4,110,1),
(33,2,1,4,155,1),
(34,2,1,4,155,1),
(35,2,1,4,155,1),
(36,2,1,4,155,1),
(37,2,2,4,215,1),
(38,2,2,4,215,1),
(39,3,3,4,350,1),
(40,1,1,5,75,1),
(41,1,1,5,75,1),
(42,2,1,5,125,1),
(43,2,1,5,125,1),
(44,3,2,5,175,1);



INSERT INTO `sql_workgroup`.`passengers`
(`passenger_id`,
`first_name`,
`last_name`,
`DOB`,
`address_id`,
`gender`,
`phone`,
`email`,
`nationality`,
`id_no`,
`id_type`)
VALUES
(100,'Steven','King','1973-06-24',1,'male','515.123.4567','Steven.King@mail.com','US','24000','passport'),
(101,'Neena','Kochhar','1975-09-29',3,'female','515.123.4568','Neena.Kochhar@mail.com','Pakistan','17000','passport'),
(102,'Lex','DeHaan','1971-01-21',5,'male','515.123.4569','Lex.DeHaan@mail.com','Belgium','17000','passport'),
(103,'Alexander','Hunold','1976-01-11',6,'male','590.423.4567','Alexander.Hunold@mail.com','Germany','9000','passport'),
(104,'Bruce','Ernst','1977-05-28',7,'male','590.423.4568','Bruce.Ernst@mail.com','Netherlands','6000','passport'),
(105,'David','Austin','1975-07-03',8,'male','590.423.4569','David.Austin@mail.com','UK','4800','passport'),
(106,'Valli','Pataballa','1976-02-13',10,'female','590.423.4560','Valli.Pataballa@mail.com','Spain','4800','passport'),
(107,'Diana','Lorentz','1977-02-14',11,'female','590.423.5567','Diana.Lorentz@mail.com','Mexico','4200','passport'),
(108,'Nancy','Greenberg','1972-08-24',13,'female','515.124.4569','Nancy.Greenberg@mail.com','Denmark','12008','passport'),
(109,'Daniel','Faviet','1972-08-23',14,'male','515.124.4169','Daniel.Faviet@mail.com','Sweden','9000','passport'),
(110,'John','Chen','1975-10-06',15,'male','515.124.4269','John.Chen@mail.com','China','8200','passport'),
(111,'Ismael','Sciarra','1975-10-08',17,'male','515.124.4369','Ismael.Sciarra@mail.com','Morocco','7700','passport'),
(112,'JoseManuel','Urman','1976-03-14',18,'male','515.124.4469','JoseManuel.Urman@mail.com','Honduras','7800','passport'),
(113,'Luis','Popp','1977-12-14',19,'male','515.124.4567','Luis.Popp@mail.com','Portugal','6900','passport'),
(114,'Den','Raphaely','1972-12-14',20,'male','515.127.4561','Den.Raphaely@mail.com','Italy','11000','passport'),
(115,'Alexander','Khoo','1973-05-25',21,'male','515.127.4562','Alexander.Khoo@mail.com','Singapore','3100','passport'),
(116,'Shelli','Baida','1976-01-01',22,'female','515.127.4563','Shelli.Baida@mail.com','India','2900','passport'),
(117,'Sigal','Tobias','1975-08-01',23,'male','515.127.4564','Sigal.Tobias@mail.com','US','2800','passport'),
(118,'Guy','Himuro','1976-11-22',24,'male','515.127.4565','Guy.Himuro@mail.com','Japan','2600','passport'),
(119,'Karen','Colmenares','1977-08-17',25,'female','515.127.4566','Karen.Colmenares@mail.com','El Salvador','2500','passport'),
(120,'Matthew','Weiss','1974-07-26',26,'male','650.123.1234','Matthew.Weiss@mail.com','Austria','8000','passport'),
(121,'Adam','Fripp','1975-04-18',27,'male','650.123.2234','Adam.Fripp@mail.com','Israel','8200','passport'),
(122,'Payam','Kaufling','1973-05-08',28,'female','650.123.3234','Payam.Kaufling@mail.com','Vietnam','7900','passport'),
(123,'Shanta','Vollman','1975-10-18',29,'female','650.123.4234','Shanta.Vollman@mail.com','Sri Lanka','6500','passport'),
(124,'Kevin','Mourgos','1977-11-23',30,'male','650.123.5234','Kevin.Mourgos@mail.com','Switzerland','5800','passport');



INSERT INTO `sql_workgroup`.`location`
(`location_id`,
`ship_id`,
`sector`,
`ship_level`)
VALUES
(1,1,'sector 1','level 1'),
(2,2,'sector 1','level 1'),
(3,3,'sector 1','level 1'),
(4,4,'sector 1','level 1'),
(5,5,'sector 1','level 1');



INSERT INTO `sql_workgroup`.`store_type`
(`store_type_id`,
`store_type_name`)
VALUES
(1,'grocery store'),
(2,'boutique'),
(3,'restaurant'),
(4,'café'),
(5,'beauty salon'),
(6,'spa salon'),
(7,'cinema'),
(8,'casino');



INSERT INTO `sql_workgroup`.`store`
(`store_id`,
`store_name`,
`store_type_id`,
`location_id`)
VALUES
(1,'aldi',1,1),
(2,'zara',2,2),
(3,'ratatouille',3,3),
(4,'starbucks',4,4),
(5,'tony & guy',5,5),
(6,'thai spa',6,1),
(7,'imax',7,2),
(8,'iveria',8,3);



INSERT INTO `sql_workgroup`.`seasons`
(`season_id`,
`season_name`)
VALUES
(1,'winter'),
(2,'spring'),
(3,'summer'),
(4,'autumn');



INSERT INTO `sql_workgroup`.`routes`
(`route_id`,
`route_name`,
`origin`,
`destination`,
`unit_measure_id`,
`distance`,
`date_time`,
`route_duration`,
`price`,
`currency_id`,
`season_id`)
VALUES
(1,'caribbean','the US','caribbean coasts',4,1737,'2021-06-01  08:00:00',15,1500,1,3),
(2,'columbian cruise','the US','columbia',4,1200,'2021-05-01  08:00:00',10,1000,1,2),
(3,'indian ocean','india','japan',4,800,'2021-09-10  08:00:00',7,700,1,4),
(4,'australian','australia','new zealand',4,1557,'2021-12-15  09:00:00',9,1000,1,1),
(5,'new year','south africa','morocco',4,600,'2021-12-30  09:00:00',5,1200,1,1);



INSERT INTO `sql_workgroup`.`sales_item`
(`sales_item_id`,
`sales_id`,
`item_id`,
`currency_id`,
`descr`,
`quantity`,
`price`,
`total_product`,
`tax_amount`,
`total_amount`)
VALUES
(1,1,5,1,'macallan single malt scotch',1,400,400,72,472),
(2,1,6,1,'coca cola zero',1,3,3,0.54,3.54),
(3,2,1,1,'cheeseburger',2,6,12,2.16,14.16),
(4,2,2,1,'hamburger',1,5,5,0.9,5.9),
(5,2,3,1,'caesar salad',1,7,7,1.26,8.26),
(6,3,6,1,'coca cola zero',5,3,15,2.7,17.7),
(7,3,1,1,'cheeseburger',2,6,12,2.16,14.16),
(8,3,2,1,'hamburger',1,5,5,0.9,5.9),
(9,3,3,1,'caesar salad',1,7,7,1.26,8.26),
(10,3,4,1,'alfredo pasta',1,13,13,2.34,15.34),
(11,4,7,1,'doctor strange - session #1',2,8,16,2.88,18.88),
(12,4,6,1,'coca cola zero',2,3,6,1.08,7.08),
(13,5,1,1,'cheeseburger',1,6,6,1.08,7.08),
(14,5,2,1,'hamburger',1,5,5,0.9,5.9),
(15,5,3,1,'caesar salad',1,7,7,1.26,8.26),
(16,5,4,1,'alfredo pasta',2,13,26,4.68,30.68),
(17,6,8,1,'casino cash in',1,1000,1000,0,1000),
(18,6,9,1,'casino cash out',1,-800,-800,0,-800),
(19,7,8,1,'casino cash in',1,200,200,0,200),
(20,7,9,1,'casino cash out',1,-300,-300,0,-300),
(21,8,11,1,'haircut with a wash',1,25,25,4.5,29.5),
(22,9,5,1,'macallan single malt scotch',1,400,400,72,472),
(23,9,3,1,'caesar salad',1,7,7,1.26,8.26),
(24,9,1,1,'cheeseburger',1,6,6,1.08,7.08),
(25,10,7,1,'doctor strange - session #1',3,8,24,4.32,28.32),
(26,11,10,1,'thai full body relaxation massage',1,100,100,18,118),
(27,12,8,1,'casino cash in',1,5000,5000,0,5000),
(28,12,9,1,'casino cash out',1,-400,-400,0,-400),
(29,13,10,1,'thai full body relaxation massage',1,100,100,18,118),
(30,13,6,1,'coca cola zero',1,3,3,0.54,3.54);



INSERT INTO `sql_workgroup`.`onboard_sales`
(`sales_id`,
`sales_date_time`,
`store_id`,
`total_product`,
`total_tax`,
`total_sales`,
`payment_id`,
`currency_id`)
VALUES
(1,'2021-06-03  08:00:00',1,403,72.54,475.54,2,1),
(2,'2021-05-03  08:00:00',3,24,4.32,28.32,2,1),
(3,'2021-09-12  08:00:00',3,52,9.36,61.36,2,1),
(4,'2021-12-17  09:00:00',7,22,3.96,25.96,2,1),
(5,'2021-01-01  09:00:00',3,44,7.92,51.92,2,1),
(6,'2021-06-03  08:00:00',8,200,0,200,1,1),
(7,'2021-05-03  08:00:00',8,-100,0,-100,1,1),
(8,'2021-09-12  08:00:00',5,25,4.5,29.5,2,1),
(9,'2021-12-17  09:00:00',3,413,74.34,487.34,2,1),
(10,'2021-01-01  09:00:00',8,24,4.32,28.32,1,1),
(11,'2021-06-03  08:00:00',6,100,18,118,2,1),
(12,'2021-05-03  08:00:00',8,4600,0,4600,1,1),
(13,'2021-09-12  08:00:00',6,103,18.54,121.54,2,1);




INSERT INTO `sql_workgroup`.`tickets`
(`ticket_id`,
`date_time`,
`agent_id`,
`total_services`,
`total_tax`,
`total_order`,
`currency_id`,
`payment_id`,
`passenger_id`,
`route_id`,
`room_id`)
VALUES
(1001,'2021-05-01  08:00:00',1,1600,288,1888,1,2,100,1,1),
(1002,'2021-04-01  08:00:00',2,1130,203.4,1333.4,1,3,101,2,2),
(1003,'2021-08-10  08:00:00',3,830,149.4,979.4,1,2,102,3,3),
(1004,'2021-11-15  09:00:00',4,1130,203.4,1333.4,1,3,103,4,4),
(1005,'2021-11-30  09:00:00',5,1350,243,1593,1,2,104,5,5),
(1006,'2021-05-01  08:00:00',1,1650,297,1947,1,3,105,1,6),
(1007,'2021-04-01  08:00:00',2,1150,207,1357,1,2,106,2,7),
(1008,'2021-08-10  08:00:00',3,900,162,1062,1,3,107,3,8),
(1009,'2021-11-15  09:00:00',4,1200,216,1416,1,2,108,4,9),
(1010,'2021-11-30  09:00:00',5,2200,396,2596,1,3,109,5,10),
(1011,'2021-05-01  08:00:00',1,1600,288,1888,1,2,110,1,11),
(1012,'2021-04-01  08:00:00',2,1100,198,1298,1,3,111,2,12),
(1013,'2021-08-10  08:00:00',3,840,151.2,991.2,1,2,112,3,13),
(1014,'2021-11-15  09:00:00',4,1140,205.2,1345.2,1,3,113,4,14),
(1015,'2021-11-30  09:00:00',5,1340,241.2,1581.2,1,2,114,5,15),
(1016,'2021-05-01  08:00:00',1,1640,295.2,1935.2,1,3,115,1,16),
(1017,'2021-04-01  08:00:00',2,1170,210.6,1380.6,1,2,116,2,17),
(1018,'2021-08-10  08:00:00',3,870,156.6,1026.6,1,3,117,3,18),
(1019,'2021-11-15  09:00:00',4,1300,234,1534,1,2,118,4,19),
(1020,'2021-11-30  09:00:00',5,1500,270,1770,1,3,119,5,20),
(1021,'2021-05-01  08:00:00',1,2300,414,2714,1,2,120,1,21),
(1022,'2021-04-01  08:00:00',2,1110,199.8,1309.8,1,3,121,2,22),
(1023,'2021-08-10  08:00:00',3,810,145.8,955.8,1,2,122,3,23),
(1024,'2021-11-15  09:00:00',4,1140,205.2,1345.2,1,3,123,4,24),
(1025,'2021-11-30  09:00:00',5,1340,241.2,1581.2,1,2,124,5,25);



