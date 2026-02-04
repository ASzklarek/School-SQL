-- Przykładowa lista opeikunów
INSERT INTO opiekunowie
(imie, drugie_imie, nazwisko, nr_tel, e_mail, miasto) VALUES
('Anna', 'Magda', 'Kowalska', '+48600110001', 'anna.kowalska@gmail.com', 'Warszawa'),
('Piotr', 'Adam', 'Kowalski', '+48600110002', 'piotr.kowalski@gmail.com', 'Warszawa'),
('Maria', 'Roksana', 'Nowak', '+48600110003', 'maria.nowak@gmail.com', 'Pruszków'),
('Tomasz', NULL, 'Nowak', '+48600110004', 'tomasz.nowak@gmail.com', 'Pruszków'),
('Katarzyna','Małgorzata', 'Wiśniewska', '+48600110005', 'k.wisniewska@gmail.com', 'Piaseczno'),
('Paweł', 'Filip', 'Wiśniewski', '+48600110006', 'pawel.wisniewski@gmail.com', 'Piaseczno'),
('Monika', NULL , 'Mazur', '+48600110007', 'monika.mazur@gmail.com', 'Legionowo'),
('Robert', NULL , 'Mazur', '+48600110008', 'robert.mazur@gmail.com', 'Legionowo'),
('Ewa', NULL , 'Zielińska', '+48600110009', 'ewa.zielinska@gmail.com', 'Marki'),
('Marek', NULL , 'Zieliński', '+48600110010', 'marek.zielinski@gmail.com', 'Marki'),
('Agnieszka', 'Beata' , 'Kaczmarek', '+48600110011', 'agnieszka.kaczmarek@gmail.com', 'Ząbki'),
('Rafał', NULL , 'Kaczmarek', '+48600110012', 'rafal.kaczmarek@gmail.com', 'Ząbki'),
('Joanna', NULL , 'Lewandowska', '+48600110013', 'joanna.lewandowska@gmail.com', 'Otwock'),
('Michał', 'Piotr' , 'Kamiński', '+48600110014', 'michal.kaminski@gmail.com', 'Piastów'),
('Dorota', NULL, 'Piotrowska', '+48600110015', 'dorota.piotrowska@gmail.com', 'Józefów')
;
-- Przykładowa lista nauczycieli

INSERT INTO nauczyciele
(imie, drugie_imie, nazwisko, nr_tel, adres_email) VALUES
('Jan', 'Paweł', 'Malinowski', '+48600300001', 'jan.malinowski@school.pl'),
('Agnieszka', 'Maria', 'Kaczmarek', '+48600300002', 'agnieszka.kaczmarek@school.pl'),
('Robert', NULL , 'Dąbrowski', '+48600300003', 'robert.dabrowski@school.pl'),
('Monika', 'Elżbieta', 'Piotrowska', '+48600300004', 'monika.piotrowska@school.pl'),
('Tomasz', 'Krzysztof' , 'Lewandowski', '+48600300005', 'tomasz.lewandowski@school.pl'),
('Anna', NULL, 'Król' , '+48600300006', 'anna.krol@school.pl'),
('Paweł', 'Michał' , 'Wójcik', '+48600300007', 'pawel.wojcik@school.pl'),
('Karolina', 'Joanna', 'Kamińska', '+48600300008', 'karolina.kaminska@school.pl'),
('Michał', NULL , 'Kowalczyk', '+48600300009', 'michal.kowalczyk@school.pl'),
('Ewa', 'Dorota', 'Zielińska', '+48600300010', 'ewa.zielinska@school.pl')
;

-- Przykładowa lista klas
INSERT INTO klasa (klasa, wychowawca, rozpoczecie, zakonczenie) VALUES
-- ukończone
('A', 1, '2020-09-01', '2023-06-30'),
('B', 2, '2020-09-01', '2023-06-30'), 
-- obecne
('A', 3, '2021-09-01', NULL),  -- rok 2021
('B', 4, '2021-09-01', NULL),  
('A', 5, '2022-09-01', NULL),  -- rok 2022
('B', 6, '2022-09-01', NULL)
;  

-- Lista uczniow
INSERT INTO uczniowie 
(imie, drugie_imie, nazwisko, data_ur, id_klasa, pesel, id_opiekun_1, id_opiekun_2) VALUES
('Adam','Paweł','Kowalski','2007-05-10',1,'07051000001',1,2),
('Julia','Maria','Kowalska','2007-03-12',1,'07031200002',1,2),
('Michał',NULL,'Nowak','2007-01-20',2,'07012000003',3,4),
('Zuzanna','Anna','Nowak','2007-07-18',2,'07071800004',3,4),
('Paweł','Krzysztof','Wiśniewski','2007-09-09',1,'07090900005',5,6),
('Oliwia','Natalia','Wiśniewska','2007-11-21',1,'07112100006',5,6),
('Kacper','Jakub','Mazur','2007-02-14',2,'07021400007',7,8),
('Natalia',NULL,'Mazur','2007-06-30',2,'07063000008',7,8),
('Filip','Michał','Zieliński','2007-12-01',1,'07120100009',9,10),
('Lena','Dorota','Zielińska','2007-04-04',1,'07040400010',9,10),
('Mateusz','Jan','Kowalski','2008-09-15',3,'08091500011',1,2),
('Zofia','Ewa','Kowalska','2008-02-20',3,'08022000012',1,2),
('Sebastian','Tomasz','Nowak','2008-03-05',4,'08030500013',3,4),
('Martyna','Katarzyna','Nowak','2008-05-14',4,'08051400014',3,4),
('Bartek','Paweł','Wiśniewski','2008-07-08',3,'08070800015',5,6),
('Sandra',NULL,'Wiśniewska','2008-10-11',3,'08101100016',5,6),
('Igor','Mateusz','Mazur','2008-08-22',4,'08082200017',7,8),
('Julia','Monika','Mazur','2008-11-19',4,'08111900018',7,8),
('Kinga','Ewa','Zielińska','2008-06-12',3,'08061200019',9,10),
('Paweł','Michał','Zieliński','2008-01-25',3,'08012500020',9,10),
('Oliwier','Jan','Kaczmarek','2009-09-30',5,'09093000021',11,12),
('Hanna','Maria','Kaczmarek','2009-04-12',5,'09041200022',11,12),
('Maksymilian','Tomasz','Lewandowski','2009-03-14',6,'09031400023',13,NULL),
('Natalia','Joanna','Lewandowska','2009-02-27',6,'09022700024',13,NULL),
('Mikołaj','Paweł','Kamiński','2009-12-05',6,'09120500025',14,NULL),
('Zuzanna','Dorota','Piotrowska','2009-07-18',6,'09071800026',15,NULL),
('Kamil','Robert','Malinowski','2009-06-22',5,'09062200027',1,2),
('Laura','Agnieszka','Kowalska','2009-01-10',5,'09011000028',1,2),
('Tomek','Paweł','Nowak','2009-11-30',6,'09113000029',3,4),
('Julia','Monika','Nowak','2009-05-09',6,'09050900030',3,4);

-- Przykładowa lista przedmiotów

INSERT INTO przedmioty (id_klasa, nazwa_przedmiot, prowadzacy) VALUES
(1, 'Matematyka', 1),
(1, 'Język polski', 2),
(1, 'Historia', 3),
(1, 'Fizyka', 4),
(2, 'Matematyka', 1),
(2, 'Język polski', 2),
(2, 'Historia', 5),
(2, 'Fizyka', 6),
(3, 'Matematyka', 1),
(3, 'Język polski', 2),
(3, 'Historia', 3),
(3, 'Fizyka', 4),
(4, 'Matematyka', 1),
(4, 'Język polski', 2),
(4, 'Historia', 5),
(4, 'Fizyka', 6),
(5, 'Matematyka', 1),
(5, 'Język polski', 2),
(5, 'Historia', 3),
(5, 'Fizyka', 4),
(6, 'Matematyka', 1),
(6, 'Język polski', 2),
(6, 'Historia', 5),
(6, 'Fizyka', 6);

-- Przykładowa lista ocen
INSERT INTO oceny (id_przedmiot, id_nauczyciel, id_uczen, ocena) VALUES

-- Uczniowie klasy 1A (id_uczen 1,2,5,6,9,10) – przedmioty id 1,2,3,4
-- Adam Kowalski
(1,1,1,5),(1,1,1,4),(1,1,1,6),
(2,2,1,4),(2,2,1,5),(2,2,1,3),
(3,3,1,5),(3,3,1,4),(3,3,1,5),
(4,4,1,3),(4,4,1,5),(4,4,1,4),

-- Julia Kowalska
(1,1,2,3),(1,1,2,4),(1,1,2,5),
(2,2,2,5),(2,2,2,4),(2,2,2,5),
(3,3,2,4),(3,3,2,5),(3,3,2,3),
(4,4,2,4),(4,4,2,5),(4,4,2,4),

-- Paweł Wiśniewski
(1,1,5,4),(1,1,5,5),(1,1,5,4),
(2,2,5,5),(2,2,5,4),(2,2,5,5),
(3,3,5,3),(3,3,5,4),(3,3,5,5),
(4,4,5,4),(4,4,5,5),(4,4,5,3),

-- Oliwia Wiśniewska
(1,1,6,3),(1,1,6,4),(1,1,6,5),
(2,2,6,4),(2,2,6,5),(2,2,6,4),
(3,3,6,5),(3,3,6,4),(3,3,6,4),
(4,4,6,3),(4,4,6,5),(4,4,6,4),

-- Filip Zieliński
(1,1,9,4),(1,1,9,5),(1,1,9,4),
(2,2,9,5),(2,2,9,4),(2,2,9,5),
(3,3,9,3),(3,3,9,4),(3,3,9,5),
(4,4,9,4),(4,4,9,5),(4,4,9,3),

-- Lena Zielińska
(1,1,10,3),(1,1,10,4),(1,1,10,5),
(2,2,10,4),(2,2,10,5),(2,2,10,4),
(3,3,10,5),(3,3,10,4),(3,3,10,4),
(4,4,10,3),(4,4,10,5),(4,4,10,4),

-- Uczniowie klasy 1B (id_uczen 3,4,7,8) – przedmioty id 5,6,7,8
-- Michał Nowak
(5,1,3,4),(5,1,3,5),(5,1,3,4),
(6,2,3,5),(6,2,3,4),(6,2,3,5),
(7,5,3,3),(7,5,3,4),(7,5,3,5),
(8,6,3,4),(8,6,3,3),(8,6,3,5),

-- Zuzanna Nowak
(5,1,4,3),(5,1,4,4),(5,1,4,3),
(6,2,4,4),(6,2,4,5),(6,2,4,4),
(7,5,4,5),(7,5,4,4),(7,5,4,5),
(8,6,4,3),(8,6,4,5),(8,6,4,4),

-- Kacper Mazur
(5,1,7,4),(5,1,7,5),(5,1,7,4),
(6,2,7,3),(6,2,7,4),(6,2,7,5),
(7,5,7,4),(7,5,7,3),(7,5,7,5),
(8,6,7,5),(8,6,7,4),(8,6,7,4),

-- Natalia Mazur
(5,1,8,5),(5,1,8,4),(5,1,8,5),
(6,2,8,4),(6,2,8,5),(6,2,8,4),
(7,5,8,4),(7,5,8,5),(7,5,8,4),
(8,6,8,5),(8,6,8,4),(8,6,8,5),

-- Uczniowie klasy 2A (id_uczen 11,12,19,20) – przedmioty id 9,10,11,12
-- Mateusz Kowalski
(9,1,11,4),(9,1,11,5),(9,1,11,4),
(10,2,11,5),(10,2,11,4),(10,2,11,5),
(11,3,11,3),(11,3,11,4),(11,3,11,5),
(12,4,11,4),(12,4,11,3),(12,4,11,5),

-- Zofia Kowalska
(9,1,12,3),(9,1,12,4),(9,1,12,5),
(10,2,12,4),(10,2,12,5),(10,2,12,4),
(11,3,12,5),(11,3,12,4),(11,3,12,4),
(12,4,12,3),(12,4,12,5),(12,4,12,4),

-- Kinga Zielińska
(9,1,19,4),(9,1,19,5),(9,1,19,4),
(10,2,19,5),(10,2,19,4),(10,2,19,5),
(11,3,19,3),(11,3,19,4),(11,3,19,5),
(12,4,19,4),(12,4,19,3),(12,4,19,5),

-- Paweł Zieliński
(9,1,20,3),(9,1,20,4),(9,1,20,5),
(10,2,20,4),(10,2,20,5),(10,2,20,4),
(11,3,20,5),(11,3,20,4),(11,3,20,4),
(12,4,20,3),(12,4,20,5),(12,4,20,4),

-- Uczniowie klasy 2B (id_uczen 13,14,26,27) – przedmioty id 13,14,15,16
-- Sebastian Nowak
(13,1,13,4),(13,1,13,5),(13,1,13,4),
(14,2,13,5),(14,2,13,4),(14,2,13,5),
(15,5,13,3),(15,5,13,4),(15,5,13,5),
(16,6,13,4),(16,6,13,3),(16,6,13,5),

-- Martyna Nowak
(13,1,14,3),(13,1,14,4),(13,1,14,5),
(14,2,14,4),(14,2,14,5),(14,2,14,4),
(15,5,14,5),(15,5,14,4),(15,5,14,4),
(16,6,14,3),(16,6,14,5),(16,6,14,4),

-- Zuzanna Piotrowska
(13,1,26,3),(13,1,26,4),(13,1,26,5),
(14,2,26,4),(14,2,26,5),(14,2,26,4),
(15,5,26,5),(15,5,26,4),(15,5,26,4),
(16,6,26,3),(16,6,26,5),(16,6,26,4),

-- Kamil Malinowski
(13,1,27,4),(13,1,27,5),(13,1,27,4),
(14,2,27,5),(14,2,27,4),(14,2,27,5),
(15,5,27,3),(15,5,27,4),(15,5,27,5),
(16,6,27,4),(16,6,27,3),(16,6,27,5),

-- Uczniowie klasy 3A (id_uczen 15,16,21,22,28) – przedmioty id 17,18,19,20
-- Bartek Wiśniewski
(17,1,15,4),(17,1,15,5),(17,1,15,4),
(18,2,15,5),(18,2,15,4),(18,2,15,5),
(19,3,15,3),(19,3,15,4),(19,3,15,5),
(20,4,15,4),(20,4,15,3),(20,4,15,5),

-- Sandra Wiśniewska
(17,1,16,3),(17,1,16,4),(17,1,16,5),
(18,2,16,4),(18,2,16,5),(18,2,16,4),
(19,3,16,5),(19,3,16,4),(19,3,16,4),
(20,4,16,3),(20,4,16,5),(20,4,16,4),

-- Mateusz Kowalski
(17,1,21,4),(17,1,21,5),(17,1,21,4),
(18,2,21,5),(18,2,21,4),(18,2,21,5),
(19,3,21,3),(19,3,21,4),(19,3,21,5),
(20,4,21,4),(20,4,21,3),(20,4,21,5),

-- Zofia Kowalska
(17,1,22,3),(17,1,22,4),(17,1,22,5),
(18,2,22,4),(18,2,22,5),(18,2,22,4),
(19,3,22,5),(19,3,22,4),(19,3,22,4),
(20,4,22,3),(20,4,22,5),(20,4,22,4),

-- Laura Kowalska
(17,1,28,4),(17,1,28,5),(17,1,28,4),
(18,2,28,5),(18,2,28,4),(18,2,28,5),
(19,3,28,3),(19,3,28,4),(19,3,28,5),
(20,4,28,4),(20,4,28,3),(20,4,28,5),

-- Uczniowie klasy 3B (id_uczen 17,18,23,24,25,29,30) – przedmioty id 21,22,23,24
-- Igor Mazur
(21,1,17,4),(21,1,17,5),(21,1,17,4),
(22,2,17,3),(22,2,17,4),(22,2,17,5),
(23,5,17,4),(23,5,17,3),(23,5,17,5),
(24,6,17,5),(24,6,17,4),(24,6,17,5),

-- Julia Mazur
(21,1,18,5),(21,1,18,4),(21,1,18,5),
(22,2,18,4),(22,2,18,5),(22,2,18,4),
(23,5,18,4),(23,5,18,5),(23,5,18,4),
(24,6,18,5),(24,6,18,4),(24,6,18,5),

-- Maksymilian Lewandowski
(21,1,23,4),(21,1,23,5),(21,1,23,4),
(22,2,23,3),(22,2,23,4),(22,2,23,5),
(23,5,23,4),(23,5,23,3),(23,5,23,5),
(24,6,23,5),(24,6,23,4),(24,6,23,5),

-- Natalia Lewandowska
(21,1,24,5),(21,1,24,4),(21,1,24,5),
(22,2,24,4),(22,2,24,5),(22,2,24,4),
(23,5,24,4),(23,5,24,5),(23,5,24,4),
(24,6,24,5),(24,6,24,4),(24,6,24,5),

-- Mikołaj Kamiński
(21,1,25,4),(21,1,25,5),(21,1,25,4),
(22,2,25,5),(22,2,25,4),(22,2,25,5),
(23,5,25,3),(23,5,25,4),(23,5,25,5),
(24,6,25,4),(24,6,25,3),(24,6,25,5),

-- Tomek Nowak
(21,1,29,3),(21,1,29,4),(21,1,29,5),
(22,2,29,4),(22,2,29,5),(22,2,29,4),
(23,5,29,5),(23,5,29,4),(23,5,29,4),
(24,6,29,3),(24,6,29,5),(24,6,29,4),

-- Julia Nowak
(21,1,30,4),(21,1,30,5),(21,1,30,4),
(22,2,30,5),(22,2,30,4),(22,2,30,5),
(23,5,30,3),(23,5,30,4),(23,5,30,5),
(24,6,30,4),(24,6,30,3),(24,6,30,5);
