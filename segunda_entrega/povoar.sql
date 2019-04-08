PRAGMA foreign_keys = on;

-- Client
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (1, 'Hale', 'Gracey', 'hgracey0@jigsy.com', '+86 738 133 4237', 'kBektbCysjn', '164-49-8036');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (2, 'Dag', 'Enoksson', 'denoksson1@storify.com', '+81 295 510 0195', 'aFRpPXD', '435-54-8206');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (3, 'Mame', 'Rochester', 'mrochester2@google.es', '+82 770 341 5325', 'paRPFy', '252-88-1734');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (4, 'Nahum', 'Coffey', 'ncoffey3@miitbeian.gov.cn', '+86 739 704 6464', 'yPXwVz', '554-69-9543');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (5, 'Denis', 'Sall', 'dsall4@people.com.cn', '+86 228 495 6873', 'IJTo4K', '791-54-0254');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (6, 'Fanechka', 'Aizikovitz', 'faizikovitz5@google.com', '+54 318 465 9463', 'apuRkqPLI', '123-24-8471');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (7, 'Brent', 'Sterland', 'bsterland6@unesco.org', '+1 971 566 6580', '5EfhcZOt', '795-84-0269');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (8, 'Mina', 'Maxwell', 'mmaxwell7@slashdot.org', '+33 823 230 8280', 'jt18g1Rz7Q', '710-08-7673');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (9, 'Brewer', 'Shuttell', 'bshuttell8@over-blog.com', '+86 911 902 6301', 'IB0S4T8NdTNb', '209-62-6942');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (10, 'Tades', 'Kidstoun', 'tkidstoun9@rediff.com', '+81 122 365 3276', 'joRqm5tgTZa', '872-85-8557');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (11, 'Chase', 'Kose', 'ckosea@livejournal.com', '+93 737 547 3618', 'qFsnwwroy', '897-89-9679');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (12, 'Erminia', 'Trevers', 'etreversb@rediff.com', '+86 970 471 1556', 'yQROkNrZoqxU', '212-35-1008');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (13, 'Miles', 'Josovich', 'mjosovichc@ifeng.com', '+966 210 371 9598', 'QoqPoG6OitWV', '103-70-1147');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (14, 'Annabelle', 'Ganiford', 'aganifordd@scribd.com', '+33 981 661 5725', '5XtAMErHtIRr', '568-43-7471');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (15, 'Worthy', 'Du Fray', 'wdufraye@printfriendly.com', '+86 967 337 2027', 'omZ3LfpnPF7Z', '269-35-5138');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (16, 'Lyndsie', 'Sackur', 'lsackurf@google.es', '+998 540 692 2454', 'FPfvLdR', '511-24-8088');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (17, 'Allis', 'Twigge', 'atwiggeg@hubpages.com', '+62 501 424 5334', 'o1GqRc', '894-73-9461');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (18, 'Daile', 'Medlar', 'dmedlarh@jiathis.com', '+1 791 863 4651', 'X0YZrjBbe', '697-18-6392');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (19, 'Gerry', 'Briars', 'gbriarsi@123-reg.co.uk', '+234 553 820 5989', 'HnVMMf3hR', '852-30-7468');
insert into Client (clientID, firstName, lastName, email, phoneNumber, password, taxNumber) values (20, 'Fairlie', 'Pellingar', 'fpellingarj@1688.com', '+62 834 571 3993', 'RhQmda7YeCOI', '634-02-9324');

-- Cancelling

-- Reservation
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (1, '2018-03-12', '€3966,61', false, 8, 4);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (2, '2018-05-06', '€1478,51', false, 2, 4);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (3, '2018-11-03', '€2484,23', false, 4, 4);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (4, '2018-11-01', '€4753,09', false, 3, 1);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (5, '2019-01-26', '€2899,02', false, 5, 4);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (6, '2018-08-05', '€207,83', true, 6, 1);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (7, '2018-11-24', '€436,95', true, 7, 1);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (8, '2018-06-06', '€4126,18', false, 1, 3);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (9, '2018-03-21', '€2724,09', false, 9, 2);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (10,'2018-03-22', '€985,20', true, 10, 2);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (11,'2018-09-24', '€710,91', false, 11, 3);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (12,'2018-12-21', '€807,43', false, 12, 3);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (13,'2019-01-13', '€4122,03', true, 13, 4);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (14,'2018-06-29', '€306,08', false, 20, 1);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (15,'2019-02-18', '€1405,67', true, 15, 3);
insert into Reservation (reservationID, creationDate, finalPrice, isPaid, client, complement) values (16,'2018-12-08', '€2928,73', true, 19, 2);

-- Complement

-- Stay

-- Guest

-- Comment

-- Room

-- MeetingRoom

-- Bedroom

-- BedroomType

-- Feature
