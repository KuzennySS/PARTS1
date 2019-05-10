create database if not exists test default character set utf8 collate utf8_general_ci;

USE test;

drop table if exists parts;

CREATE TABLE parts (
    id 			INTEGER AUTO_INCREMENT PRIMARY KEY, 
    namePart 	VARCHAR(50), 
    need 		boolean, 
    count 		INTEGER
) default character set utf8;

INSERT INTO parts (namePart, need, count) VALUES ('Процессор Intel Xeon E5-2603 v4', true, 9);
INSERT INTO parts (namePart, need, count) VALUES ('Материнская плата ASRock FM2A68M-DG3+', true, 7);
INSERT INTO parts (namePart, need, count) VALUES ('Видеокарта ASUS GeForce GT 710 Silent', true, 5);
INSERT INTO parts (namePart, need, count) VALUES ('Оперативная память AMD Radeon R5 2 ГБ', true, 13);
INSERT INTO parts (namePart, need, count) VALUES ('Блок питания CROWN 400W', true, 15);
INSERT INTO parts (namePart, need, count) VALUES ('Корпус Deepcool Smarter черный', true, 10);
INSERT INTO parts (namePart, need, count) VALUES ('Серверная память Crucial', false, 12);
INSERT INTO parts (namePart, need, count) VALUES ('Термопаста Rexant 09-3751', false, 7);
INSERT INTO parts (namePart, need, count) VALUES ('Термопрокладка Thermal Grizzly Minus Pad 8', false, 3);
INSERT INTO parts (namePart, need, count) VALUES ('Кулер для процессора CoolerMaster I30', true, 14);
INSERT INTO parts (namePart, need, count) VALUES ('Кулер для процессора CoolerMaster I30', false, 31);
INSERT INTO parts (namePart, need, count) VALUES ('Система охлаждения Gamer Storm MAELSTROM 120T', false, 15);
INSERT INTO parts (namePart, need, count) VALUES ('Система охлаждения Gamer Storm MAELSTROM 120K', false, 17);
INSERT INTO parts (namePart, need, count) VALUES ('Система охлаждения DEEPCOOL V2000', false, 7);
INSERT INTO parts (namePart, need, count) VALUES ('Система охлаждения HDD DEEPCOOL Icedisk 2', false, 1);
INSERT INTO parts (namePart, need, count) VALUES ('Система охлаждения Akasa', false, 6);
INSERT INTO parts (namePart, need, count) VALUES ('Теплопроводной клей АлСил-5', false, 7);
INSERT INTO parts (namePart, need, count) VALUES ('Регулятор оборотов DEXP CR-6025U черный', false, 9);
INSERT INTO parts (namePart, need, count) VALUES ('Панель управления подсветкой Akasa Vegas черный', false, 10);
INSERT INTO parts (namePart, need, count) VALUES ('Регулятор оборотов Lamptron CW611 черный', false, 11);
INSERT INTO parts (namePart, need, count) VALUES ('Комплект крепежа кулеров AM4 Clip для Frostwin', false, 12);
INSERT INTO parts (namePart, need, count) VALUES ('Комплект крепежа кулеров Corsair CW-8960046', false, 14);
INSERT INTO parts (namePart, need, count) VALUES ('Фитинг для СВО Thermaltake Pacific', false, 15);
INSERT INTO parts (namePart, need, count) VALUES ('Фитинг для СВО Thermaltake Pacific ', false, 7);
INSERT INTO parts (namePart, need, count) VALUES ('Концентрат для СВО Thermaltake Premium Concentrate', false, 4);
INSERT INTO parts (namePart, need, count) VALUES ('Жидкость для СВО Thermaltake C1000 Opaque', false, 12);
INSERT INTO parts (namePart, need, count) VALUES ('Набор инструментов для СВО Alphacool Molex', false, 8);
INSERT INTO parts (namePart, need, count) VALUES ('Резервуар для СВО Alphacool Cape Corp. Pro 15 L', false, 2);
INSERT INTO parts (namePart, need, count) VALUES ('Радиатор для СВО Hardware Labs Black Ice 140GTR', false, 7);
INSERT INTO parts (namePart, need, count) VALUES ('Водоблок для СВО Alphacool Eisblock XPX CPU', false, 12);
INSERT INTO parts (namePart, need, count) VALUES ('Комплект фитингов для СВО Thermaltake С-Pro', false, 4);
INSERT INTO parts (namePart, need, count) VALUES ('Подсветка корпуса', false, 5);
INSERT INTO parts (namePart, need, count) VALUES ('SSD диск', true, 4);
INSERT INTO parts (namePart, need, count) VALUES ('Наклейка intel inside', true, 7);
INSERT INTO parts (namePart, need, count) VALUES ('Наклейка Windows 95', true, 44);
INSERT INTO parts (namePart, need, count) VALUES ('Кактус', false, 4);
