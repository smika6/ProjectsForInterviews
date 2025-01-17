
/* Relation Tables */
DROP TABLE WRITES;
DROP TABLE EDITS;
DROP TABLE PUBLISHES;
DROP TABLE PUBACCESSES;
DROP TABLE REFERENCES;

/* Entitiy Tables */
DROP TABLE USERS;
DROP TABLE AUTHOR;
DROP TABLE PERSON;
DROP TABLE PUBLICATION;
DROP TABLE PUBLISHER;
DROP TABLE ADDRESS;

CREATE TABLE ADDRESS(
  street varchar(50) NOT NULL PRIMARY KEY,
  city varchar(50),
  state varchar(35),
  zip varchar(5)
);

CREATE TABLE PERSON(
  pid int NOT NULL PRIMARY KEY,
  name varchar(50),
  street varchar(50),
  FOREIGN KEY(street) REFERENCES ADDRESS(street) ON DELETE CASCADE
);

CREATE TABLE AUTHOR (
  aid int NOT NULL PRIMARY KEY,
  FOREIGN KEY(aid) REFERENCES PERSON (pid) ON DELETE CASCADE
);

CREATE TABLE USERS ( 
  userid int NOT NULL PRIMARY KEY,
  uemail varchar(50),
  upass varchar(50),
  FOREIGN KEY (userid) REFERENCES PERSON (pid) ON DELETE CASCADE
);

CREATE TABLE PUBLISHER(
  pubid int NOT NULL PRIMARY KEY,
  publisherName varchar(50)
);

CREATE TABLE PUBLICATION(
  pid int NOT NULL PRIMARY KEY,
  type varchar(50),
  title varchar(150),
  pubcontent varchar(100)
);

CREATE TABLE REFERENCES(
  pid1 int,
  pid2 int,
  FOREIGN KEY(pid1) REFERENCES PUBLICATION(pid) ON DELETE CASCADE,
  FOREIGN KEY(pid2) REFERENCES PUBLICATION(pid) ON DELETE CASCADE
);

CREATE TABLE PUBACCESSES (
  userid int,
  view_date varchar(15),
  FOREIGN KEY(userid) REFERENCES USERS(userid) ON DELETE CASCADE
);

CREATE TABLE WRITES(
  pid int,
  aid int,
  FOREIGN KEY(pid) REFERENCES PUBLICATION(pid) ON DELETE CASCADE,
  FOREIGN KEY(aid) REFERENCES AUTHOR(aid) ON DELETE CASCADE
);

CREATE TABLE EDITS(
  pid int,
  aid int,
  FOREIGN KEY(pid) REFERENCES PUBLICATION(pid) ON DELETE CASCADE,
  FOREIGN KEY(aid) REFERENCES AUTHOR(aid) ON DELETE CASCADE
);

CREATE TABLE PUBLISHES (
  pid int NOT NULL,
  pubid number NOT NULL,
  publish_date varchar(35) NOT NULL,
  FOREIGN KEY (pubid) references PUBLISHER (pubid) ON DELETE CASCADE,
  FOREIGN KEY (pid) references PUBLICATION (pid) ON DELETE CASCADE
);

---Insert statements---

-- Address---
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('723 Imperdiet, St.','Dublin','Pennsylvania',55643);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #426-3290 Arcu. Road','Arquata del Tronto','Minnesota',46323);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #983-1695 Sagittis. St.','Orai','Minnesota', 36104);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('777-7445 Non Avenue','Wodonga','Nebraska', 99801);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('591-127 Id, Avenue','Dublin','Pennsylvania', 85001);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('784-5985 Magna. Avenue','Cáceres','Nebraska', 72201);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('3200 Quisque St.','Waitara','Minnesota', 95814);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('5976 In St.','Morvi','Minnesota', 80202);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('8043 Eu Rd.','Hattiesburg','Mississippi', 06103);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #142-5999 In, St.','Istanbul','Delaware', 19901);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('823-6082 Aliquet Street','Münster','Nebraska', 32301);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('5663 Ut St.','Täby','Nebraska', 30303);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('986-6598 A, St.','Southend','Nebraska', 96813);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('384-4624 Id, Ave','Castelló','Minnesota',83702);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #811-9645 Luctus. St.','Newark','Minnesota', 62701);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('3551 Donec Rd.','Kapiti','Wyoming', 46225);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('837-2305 Elementum Ave','Vienna','Nebraska', 50309);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 729, 5301 Pede Av.','Bulandshahr','Nebraska', 66603);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 534, 5001 Gravida. St.','Taupo','South Carolina', 40601);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #361-8040 Vitae Av.','Cache Creek','New Hampshire', 70802);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 277, 6619 Tincidunt Av.','Liberia','Hawaii', 04330);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #624-9680 Donec Ave','Barranca','New Hampshire', 21401);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 190, 9744 Auctor. St.','Haarlem','Maryland',  02201);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 232, 5659 Sed Avenue','Tarnów','Maryland', 48933);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('703-9416 Semper St.','Borno','Michigan', 55102);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('6850 Pharetra. St.','Shreveport','Colorado', 39205);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #473-9604 Phasellus Street','Columbia','Minnesota', 65101);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #468-2092 Ac, Rd.','Silchar','Minnesota', 50118);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('5609 Auctor Street','Berlin','Minnesota', 59623);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('946-7062 Nulla St.','Albacete','Minnesota', 68502);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 194, 6625 Pede, Street','Värnamo','Minnesota', 89701);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('243 Lacus. Rd.','Dollard-des-Ormeaux','Quebec', 03301);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #757-4829 Malesuada Avenue','Acireale','Minnesota' , 08608);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('192-9330 In St.','Stamford','Connecticut', 87501);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('318-3010 Mauris Street','Whitewater Region Township','Ontario', 12207);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('2205 Mollis. Rd.','K?z?lcahamam','Ontario', 27601);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 249, 6195 Ultrices Av.','Åkersberga','Ontario', 58501);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('9787 Risus. St.','Batiscan','Minnesota', 43215);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 664, 6374 Ornare. St.','Martigues','Minnesota', 73102);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #599-5532 Quis, Road','Ankara','Minnesota', 97301);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('8108 Elit, Street','Flushing','Texas', 17101);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #859-3812 Lorem St.','Ajax','Texas', 02903);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('8127 Nullam Ave','Vienna','Nebraska', 29217);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 929, 3642 Arcu. Rd.','Foz do Iguaçu','Rhode Island', 57501);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('157-7287 Ipsum St.','Tilburg','Mississippi', 37219);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('Ap #557-8932 Eu Rd.','Heerhugowaard','Nebraska', 78701);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 892, 8153 Elementum Av.','Cornwall','Ontario' , 84111);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('P.O. Box 134, 8836 Eu Rd.','Pero','Nebraska', 05602);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('4409 Nulla St.','Boo','Nebraska', 23219);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('936-1974 Non, Avenue','Mataró','Colorado', 98507);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('9147 Nec Rd.','Coltauco','Rhode Island', 25301);
INSERT INTO ADDRESS (street,city,state,zip) VALUES ('625-4729 Ipsum Road','Châtellerault','Delaware', 82001);

--Person---
INSERT INTO PERSON (pid,name,street) VALUES (102,   'Graiden Wilkins'   , '723 Imperdiet, St.');
INSERT INTO PERSON (pid,name,street) VALUES (103,   'Brandon Horton'    , '777-7445 Non Avenue');
INSERT INTO PERSON (pid,name,street) VALUES (106,   'Drew Lott'         , '784-5985 Magna. Avenue');
INSERT INTO PERSON (pid,name,street) VALUES (107,   'Michelle Farley'   , '3200 Quisque St.');
INSERT INTO PERSON (pid,name,street) VALUES (108,   'Reese Harper'      , '8043 Eu Rd.');
INSERT INTO PERSON (pid,name,street) VALUES (117,   'Talon Shelton'     , '823-6082 Aliquet Street');
INSERT INTO PERSON (pid,name,street) VALUES (118,   'Donald O. Hamnes'  , '3551 Donec Rd.');
INSERT INTO PERSON (pid,name,street) VALUES (119,   'Stephanie Gordon'  , '837-2305 Elementum Ave');
INSERT INTO PERSON (pid,name,street) VALUES (120,   'Jacob Wheeler'     , 'Ap #361-8040 Vitae Av.');
INSERT INTO PERSON (pid,name,street) VALUES (121,   'Victoria Holder'   , 'Ap #624-9680 Donec Ave');
INSERT INTO PERSON (pid,name,street) VALUES (122,   'Aspen Ayala'       , '703-9416 Semper St.');
INSERT INTO PERSON (pid,name,street) VALUES (123,   'Melissa Hernandez' , '6850 Pharetra. St.');
INSERT INTO PERSON (pid,name,street) VALUES (124,   'Bertha Santos'     , 'Ap #473-9604 Phasellus Street');
INSERT INTO PERSON (pid,name,street) VALUES (125,   'Barbara Page'      , '5609 Auctor Street');
INSERT INTO PERSON (pid,name,street) VALUES (126,   'Iliana Peterson'   , '946-7062 Nulla St.');
INSERT INTO PERSON (pid,name,street) VALUES (130,   'Conan Johns'       , '243 Lacus. Rd.');
INSERT INTO PERSON (pid,name,street) VALUES (131,   'Candice Clemons'   , 'Ap #757-4829 Malesuada Avenue');
INSERT INTO PERSON (pid,name,street) VALUES (134,   'Patricia Curtis'   , '192-9330 In St.');
INSERT INTO PERSON (pid,name,street) VALUES (135,   'Neil Knowles'      , '318-3010 Mauris Street');
INSERT INTO PERSON (pid,name,street) VALUES (141,   'Olga Martinez'     , '2205 Mollis. Rd.');
INSERT INTO PERSON (pid,name,street) VALUES (142,   'Upton Booker'      , '8108 Elit, Street');
INSERT INTO PERSON (pid,name,street) VALUES (145,   'Alyssa Gilmore'    , '8127 Nullam Ave');
INSERT INTO PERSON (pid,name,street) VALUES (146,   'Logan Oneil'       , '157-7287 Ipsum St.');
INSERT INTO PERSON (pid,name,street) VALUES (147,   'Bryant A. Julstrom', 'Ap #557-8932 Eu Rd.');
INSERT INTO PERSON (pid,name,street) VALUES (150,   'Yolanda Glover'    , '4409 Nulla St.');
INSERT INTO PERSON (pid,name,street) VALUES (151,   'Charity Stevens'   , '936-1974 Non, Avenue');
INSERT INTO PERSON (pid,name,street) VALUES (152,   'Allen Carr'        , '9787 Risus. St.');
INSERT INTO PERSON (pid,name,street) VALUES (153,   'Alexa Thomas'      , '9147 Nec Rd.');
INSERT INTO PERSON (pid,name,street) VALUES (200,   'Bobby George'      , '625-4729 Ipsum Road');

--AUTHOR---
INSERT INTO AUTHOR (aid) VALUES (102);
INSERT INTO AUTHOR (aid) VALUES (103);
INSERT INTO AUTHOR (aid) VALUES (106);
INSERT INTO AUTHOR (aid) VALUES (107);
INSERT INTO AUTHOR (aid) VALUES (108);
INSERT INTO AUTHOR (aid) VALUES (117);
INSERT INTO AUTHOR (aid) VALUES (118);
INSERT INTO AUTHOR (aid) VALUES (119);
INSERT INTO AUTHOR (aid) VALUES (120);
INSERT INTO AUTHOR (aid) VALUES (121);
INSERT INTO AUTHOR (aid) VALUES (122);
INSERT INTO AUTHOR (aid) VALUES (123);
INSERT INTO AUTHOR (aid) VALUES (124);
INSERT INTO AUTHOR (aid) VALUES (125);
INSERT INTO AUTHOR (aid) VALUES (126);
INSERT INTO AUTHOR (aid) VALUES (130);
INSERT INTO AUTHOR (aid) VALUES (131);
INSERT INTO AUTHOR (aid) VALUES (134);
INSERT INTO AUTHOR (aid) VALUES (135);
INSERT INTO AUTHOR (aid) VALUES (141);
INSERT INTO AUTHOR (aid) VALUES (142);
INSERT INTO AUTHOR (aid) VALUES (145);
INSERT INTO AUTHOR (aid) VALUES (146);
INSERT INTO AUTHOR (aid) VALUES (147);
INSERT INTO AUTHOR (aid) VALUES (150);
INSERT INTO AUTHOR (aid) VALUES (151);
INSERT INTO AUTHOR (aid) VALUES (152);
INSERT INTO AUTHOR (aid) VALUES (153);

---USERS---
INSERT INTO USERS (userid, uemail, upass) VALUES (102,'mauris.eu@convallisconvallis.ca' ,'qwerty');
INSERT INTO USERS (userid, uemail, upass) VALUES (108,'luctus.aliquet@ametrisusDonec.ca' , 'sdfgg');
INSERT INTO USERS (userid, uemail, upass) VALUES (117,'pharetra.nibh.Aliquam@posuerevulputate.co.uk' , 'dogdolla');
INSERT INTO USERS (userid, uemail, upass) VALUES (118, 'sem.semper@quisdiamluctus.net', 'wackysack');
INSERT INTO USERS (userid, uemail, upass) VALUES (120,'magna.Nam@metus.co.uk' , 'HotMagma');
INSERT INTO USERS (userid, uemail, upass) VALUES (121,'molestie.sodales@Proinnonmassa.com' , 'Gingerbread');
INSERT INTO USERS (userid, uemail, upass) VALUES (124,'dohamnes@stcloudstate.edu' , 'Jacob');
INSERT INTO USERS (userid, uemail, upass) VALUES (125, 'libero.lacus@sagittis.org', 'YHGFD');
INSERT INTO USERS (userid, uemail, upass) VALUES (126, 'quam.a.felis@morbitristiquesenectus.ca',  'qualm');
INSERT INTO USERS (userid, uemail, upass) VALUES (141, 'dollardolla@gmail.com', 'oneandonly');
INSERT INTO USERS (userid, uemail, upass) VALUES (200,'dippindots@yahoo.com' ,'Admin');
INSERT INTO USERS (userid, uemail, upass) VALUES (103, 'fa345a63@go.minnstate.edu','afewsfa sf');
INSERT INTO USERS (userid, uemail, upass) VALUES (119, '3af451a6w35f@go.minnstate.edu','avcescaae');
INSERT INTO USERS (userid, uemail, upass) VALUES (122, 'af3wawfr@go.minnstate.edu','avsevasdcvzxdv');
INSERT INTO USERS (userid, uemail, upass) VALUES (123, '3afaw3f@go.minnstate.edu','adrgbsdrvbrsdvsdgv');
INSERT INTO USERS (userid, uemail, upass) VALUES (130, 'a3wf3fa@go.minnstate.edu','dfghdthbdfgbsfdb');
INSERT INTO USERS (userid, uemail, upass) VALUES (142, 'a3wfa3wfaW3@go.minnstate.edu','e fzvxzdver');
INSERT INTO USERS (userid, uemail, upass) VALUES (145, '4G5W4ESG@go.minnstate.edu','av 3at453ts');
INSERT INTO USERS (userid, uemail, upass) VALUES (146, '4AGAG@go.minnstate.edu','43fgw34gse4rtgs');
INSERT INTO USERS (userid, uemail, upass) VALUES (147, 'w45g5w4s@go.minnstate.edu','43qga4sgfe');
INSERT INTO USERS (userid, uemail, upass) VALUES (150, '34gq@go.minnstate.edu','as4gaserg');
INSERT INTO USERS (userid, uemail, upass) VALUES (151, 'a4gag@go.minnstate.edu','4atg4aetg34et3');
INSERT INTO USERS (userid, uemail, upass) VALUES (152, 'a4g4a4etg@go.minnstate.edu','43aga34wta34g');
INSERT INTO USERS (userid, uemail, upass) VALUES (153, '2t3at@go.minnstate.edu','a4gasetgse4t');

---TO BE FINISHED FROM HERE ---

---PUBLISHERS---
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (37270, 'River Media');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (45671, 'Champion Arts');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (27542, 'Clover Navigations');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (87623, 'Parableutions');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (12076, 'Shadearts');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (31677, 'Trekords');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (17588, 'Hummingbirdustries');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (15470, 'Accentsun');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (77523, 'Alligatorsearch');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (73864, 'Marshtales');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (02585, 'Cube Electronics');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (79566, 'Lagoon Co');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (20527, 'Fjord Systems');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (75892, 'Elitelligence');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (85680, 'NightWorks');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (00451, 'Imaginetworks');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (45762, 'Neptunetworks');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (73243, 'Nightelligence');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (28954, 'Freakshack');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (44641, 'Thundershade');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (76522, 'Freaksys');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (14891, 'Spirit Electronics');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (98567, 'Berry Media');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (25228, 'Tigress Media');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (45629, 'Typhoonavigations');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (12354, 'Spritechnologies');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (03485, 'Ironavigation');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (15587, 'Vertexoftwards');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (01, 'Walmart');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (02, 'Petsmart');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (03, 'Costco');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (04, 'Cabelas');
INSERT INTO PUBLISHER (pubid, publisherName) VALUES (05, 'LoveIsAnIngredient');

---PUBLICATION---
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (67651,'Journal','Potential of Native Organic Feeding Stuffs in Poultry Production','the content of journal: Potential of Native...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (47681,'Journal','Water the Epic Struggle for Wealth, Power, and Civilization','the content of journal: Water the Epic...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (34195,'Journal','Nebraskas Twin Cities','the content of journal: Nebraskas Twin Cities');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (26351,'Journal','The Role of Time and Time Perspective','the content of journal: The Role of Time...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (53189,'Journal','Serum Biochemistry of Lumpy Skin Disease Virus-Infected Cattle','the content of journal: Serum Biochemistry of Lumpy...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (63584,'Journal','Low-power Depth-based Descending Stair Detection for Smart Assistive Devices','the content of journal: Low-power Depth-based...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (43485,'Journal','LISP: A Southbound SDN Protocol?','the content of journal: LISP: A Southbound SDN Protocol?');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (52369,'Journal','Remarque en toy telle marque','the content of journal: Remarque en toy telle marque');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (94387,'Journal','Dynamic Assessment of Exposure to Air Pollution Using Mobile Phone Data','the content of journal: Dynamic Assessment of Exposure...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (72345,'Magazine','10 Studies to Help Shape Your Health','The content of magazine: 10 Studies to Help...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (52234,'Magazine','Neurodegeneration: Cold shock protects the brain','The content of magazine: Neurodegeneration...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (41432,'Magazine','Canadas History Society Annual Report 2015','The content of magazine: Canadas History 2015...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (61312,'Magazine','Off-Grid Food Preservation','The content of magazine: Off-Grid Food Preservation');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (26422,'Magazine','Foods You Should (and Can) Produce Yourself and Why','The content of magazine: Foods You Should Produce Yourself...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (13244,'Magazine','How is Bitcoin money','The content of magazine: How is Bitcoin money');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (46133,'Magazine','Can you change how you feel about money?','The content of magazine: Can you change how you feel about money?');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (11146,'Book','Moby-Dick','The content of book: Moby-Dick');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (75232,'Book','The Old Lady Who Swallowed a Fly','The content of book: The Old Lady...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (24435,'Book','Animal Farm','The content of book: Animal Farm');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (12346,'Book','Wuthering Heights','The content of book: Wuthering Heights');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (41469,'Book','Mrs Dalloway','The content of book: Mrs Dalloway');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (41425,'Book','The Bell Jar','The content of book: The Bell Jar');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (11491,'Book','A Confederacy of Dunces','The content of book: A Confederacy of Dunces');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (11519,'Book','The Trial','The content of book: The Trial');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (67159,'Book','Finnegans Wake','The content of book: Finnegans Wake');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (01152,'Book','Sons and Lovers','The content of book: Sons and Lovers');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (00152,'Book','Gravitys Rainbow','The content of book: Gravitys Rainbow');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (01589,'Book','The Old Man and the Sea','The content of book: The Old Man...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (01556,'Conference Proceeding','Iterated mutation in an evolutionary algorithm for Sudoku','The content of proceeding: Iterated mutation...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (71577,'Conference Proceeding','Probabilistic neural networks structure optimization through genetic algorithms for recognizing faces under illumination variations','The content of proceeding:');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (71554,'Conference Proceeding','Wind Power Plant Prediction by Using Neural Networks','The content of proceeding: Wind Power Plant Prediction..');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (71515,'Conference Proceeding','CFD analysis of pre-cooling water spray system in natural draft dry cooling towers','The content of proceeding: CFD analysis of pre-cooling...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (74589,'Conference Proceeding','Host computer software design of MAA hydrolysis reaction based on WINCC configuration software','The content of proceeding: Host computer software...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (01450,'Transactions','Store purchase from Walmart','The customer purchased milk, bananas and...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (02450,'Transactions','Store purchase from petsmart','The customer purchased a large rat and...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (03450,'Transactions','Store purchase from costco','The customer purchased a slice of pizza that was bigger then their face and..');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (02440,'Transactions','Store purchase from Cabelas  ','The customer purchased a 6f6i rod with a heavy casting reel and...');
INSERT INTO PUBLICATION (pid,type,title,pubcontent) VALUES (04530,'Transactions','Store purchase from LoveIsAnIngredient','The customer purchased a bath bomb and...');

---REFERENCES---
INSERT INTO REFERENCES (pid1,pid2) VALUES (67651, 47681);
INSERT INTO REFERENCES (pid1,pid2) VALUES (72345, 34195);
INSERT INTO REFERENCES (pid1,pid2) VALUES (43485, 67651);
INSERT INTO REFERENCES (pid1,pid2) VALUES (34195, 72345);
INSERT INTO REFERENCES (pid1,pid2) VALUES (53189, 11491); 

---PUBACCESS---
INSERT INTO PUBACCESSES (userid,view_date) VALUES (120,'14-DEC-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (108,'13-FEB-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (102,'12-JAN-2020');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (120,'30-JAN-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (121,'12-JAN-2020');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (102,'09-JUN-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (124,'17-FEB-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (108,'09-JUN-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (141,'18-DEC-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (141,'26-FEB-2020');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (118,'28-FEB-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (102,'30-JUL-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (117,'14-DEC-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (108,'27-JUL-2020');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (118,'18-DEC-2020');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (102,'28-FEB-2020');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (118,'09-JUN-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (117,'23-FEB-2021');
INSERT INTO PUBACCESSES (userid,view_date) VALUES (108,'30-JAN-2021');


---WRITES---
INSERT INTO Writes (pid,aid)  VALUES (67651,122); 
INSERT INTO Writes (pid,aid)  VALUES (47681,145); 
INSERT INTO Writes (pid,aid)  VALUES (34195,147); 
INSERT INTO Writes (pid,aid)  VALUES (26351,146); 
INSERT INTO Writes (pid,aid)  VALUES (53189,103); 
INSERT INTO Writes (pid,aid)  VALUES (63584,103); 
INSERT INTO Writes (pid,aid)  VALUES (43485,126); 
INSERT INTO Writes (pid,aid)  VALUES (52369,126); 
INSERT INTO Writes (pid,aid)  VALUES (52369,122); 
INSERT INTO Writes (pid,aid)  VALUES (52369,146); 
INSERT INTO Writes (pid,aid)  VALUES (94387,146); 
INSERT INTO Writes (pid,aid)  VALUES (72345,102); 
INSERT INTO Writes (pid,aid)  VALUES (52234,119); 
INSERT INTO Writes (pid,aid)  VALUES (41432,121); 
INSERT INTO Writes (pid,aid)  VALUES (61312,141); 
INSERT INTO Writes (pid,aid)  VALUES (61312,103); 
INSERT INTO Writes (pid,aid)  VALUES (26422,152); 
INSERT INTO Writes (pid,aid)  VALUES (13244,153); 
INSERT INTO Writes (pid,aid)  VALUES (46133,153); 
INSERT INTO Writes (pid,aid)  VALUES (11146,102); 
INSERT INTO Writes (pid,aid)  VALUES (75232,153); 
INSERT INTO Writes (pid,aid)  VALUES (75232,152); 
INSERT INTO Writes (pid,aid)  VALUES (24435,103); 
INSERT INTO Writes (pid,aid)  VALUES (12346,153); 
INSERT INTO Writes (pid,aid)  VALUES (41469,152); 
INSERT INTO Writes (pid,aid)  VALUES (41425,124); 
INSERT INTO Writes (pid,aid)  VALUES (11491,117); 
INSERT INTO Writes (pid,aid)  VALUES (11519,151); 
INSERT INTO Writes (pid,aid)  VALUES (11519,103); 
INSERT INTO Writes (pid,aid)  VALUES (11519,153); 
INSERT INTO Writes (pid,aid)  VALUES (11519,120); 
INSERT INTO Writes (pid,aid)  VALUES (67159,150); 
INSERT INTO Writes (pid,aid)  VALUES (01152,147); 
INSERT INTO Writes (pid,aid)  VALUES (00152,142);
INSERT INTO Writes (pid,aid)  VALUES (01589,123);
INSERT INTO Writes (pid,aid)  VALUES (01556,118);
INSERT INTO Writes (pid,aid)  VALUES (01556,147);
INSERT INTO Writes (pid,aid)  VALUES (71577,130);
INSERT INTO Writes (pid,aid)  VALUES (71554,125);
INSERT INTO Writes (pid,aid)  VALUES (71515,120);
INSERT INTO Writes (pid,aid)  VALUES (74589,120);

---EDITS---
INSERT INTO Edits (pid, aid) VALUES (67651,102);
INSERT INTO Edits (pid, aid) VALUES (47681,106);
INSERT INTO Edits (pid, aid) VALUES (34195,107);
INSERT INTO Edits (pid, aid) VALUES (26351,107);
INSERT INTO Edits (pid, aid) VALUES (53189,117);
INSERT INTO Edits (pid, aid) VALUES (63584,130);
INSERT INTO Edits (pid, aid) VALUES (43485,103);
INSERT INTO Edits (pid, aid) VALUES (52369,102);
INSERT INTO Edits (pid, aid) VALUES (94387,103);
INSERT INTO Edits (pid, aid) VALUES (72345,106);
INSERT INTO Edits (pid, aid) VALUES (52234,106);
INSERT INTO Edits (pid, aid) VALUES (41432,117);
INSERT INTO Edits (pid, aid) VALUES (61312,131);
INSERT INTO Edits (pid, aid) VALUES (26422,135);
INSERT INTO Edits (pid, aid) VALUES (13244,107);
INSERT INTO Edits (pid, aid) VALUES (46133,135);
INSERT INTO Edits (pid, aid) VALUES (11146,103);
INSERT INTO Edits (pid, aid) VALUES (75232,102);
INSERT INTO Edits (pid, aid) VALUES (24435,135);
INSERT INTO Edits (pid, aid) VALUES (12346,135);
INSERT INTO Edits (pid, aid) VALUES (41469,117);
INSERT INTO Edits (pid, aid) VALUES (41425,135);
INSERT INTO Edits (pid, aid) VALUES (11491,102);
INSERT INTO Edits (pid, aid) VALUES (11519,135);
INSERT INTO Edits (pid, aid) VALUES (67159,134);
INSERT INTO Edits (pid, aid) VALUES (01152,131);
INSERT INTO Edits (pid, aid) VALUES (00152,103);
INSERT INTO Edits (pid, aid) VALUES (01589,130);
INSERT INTO Edits (pid, aid) VALUES (01556,108);
INSERT INTO Edits (pid, aid) VALUES (71577,108);
INSERT INTO Edits (pid, aid) VALUES (71554,107);
INSERT INTO Edits (pid, aid) VALUES (71515,117);
INSERT INTO Edits (pid, aid) VALUES (74589,103);

---PUBLISHES---
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (67651,37270,'31-DEC-1998');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (47681,45671,'14-DEC-2002');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (34195,27542,'25-JAN-1967');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (26351,87623,'16-MAR-2009');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (53189,12076,'13-FEB-1994');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (63584,31677,'22-FEB-2000');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (43485,31677,'30-JAN-1992');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (52369,17588,'09-JUN-2014');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (94387,31677,'23-FEB-1980');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (72345,15470,'12-JAN-2000');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (52234,15470,'03-DEC-2003');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (41432,77523,'09-JUN-2014');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (61312,73864,'14-DEC-2002');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (26422,73864,'26-FEB-2000');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (13244,02585,'04-FEB-2011');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (46133,79566,'17-FEB-1982');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (11146,20527,'28-FEB-1990');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (75232,75892,'18-DEC-1994');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (24435,85680,'27-JUL-1968');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (12346,00451,'14-DEC-2002');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (41469,45762,'30-JUL-1994');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (41425,73243,'14-JUN-2011');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (11491,28954,'14-DEC-2002');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (11519,44641,'02-JUN-2003');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (67159,76522,'02-DEC-1994');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (01152,14891,'01-JAN-1997');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (00152,98567,'12-MAR-1999');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (01589,25228,'09-JUN-2014');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (01556,45629,'18-JUN-2008');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (71577,45629,'09-JUN-2014');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (71554,12354,'28-MAR-2015');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (71515,03485,'23-JAN-1996');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (74589,15587,'22-JAN-2016');
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (01450,01,   '15-JAN-1997');   
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (02450,02,   '19-MAR-2021');   
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (03450,03,   '28-MAY-2000');   
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (02440,04,   '20-AUG-2001');   
INSERT INTO Publishes (pid,pubid,publish_date) VALUES (04530,05,   '22-SEP-1998');
