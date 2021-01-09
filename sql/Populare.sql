use policlinica;
delete from orargeneric;
delete from orarspecific;
delete from programare;
delete from aparatpercabinet;
delete from medic;
delete from cabinet;
delete from tipasistentmedical;
delete from dateangajat;
delete from UserData;
delete from contract;
delete from Unitatemedicala;
delete from Program;
delete from AparatMedical;
delete from pacient;

Insert into Program values                              
(1,"08:00-12:00 13:00-18:00","08:00-12:00 13:00-19:00","08:00-12:00 15:00-20:00","08:00-11:00 15:00-20:00","08:00-12:30 13:00-17:00","",""),
(2,"07:00-12:00 13:00-18:30","09:00-12:00 13:00-19:00","08:00-12:00 15:30-20:00","07:00-11:00 15:30-19:30","08:00-12:30 13:00-17:30","09:00-14:00 14:30-17:00",""),
(3,"08:00-13:00 14:00-17:00","08:00-13:00 14:00-18:00","08:00-12:00 15:30-19:00","08:00-11:00 15:30-20:00","09:00-12:30 13:30-17:30","",""),
(4,"09:00-12:00 13:00-18:00","09:00-12:00 13:00-19:00","09:00-12:00 15:30-19:00","09:00-11:00 15:00-20:00","07:00-12:30 13:00-16:00","07:00-10:00 11:00-15:00","");

Insert into Unitatemedicala values
(1,"Regina Maria","Strada Observatorului nr.3, Cluj",1),
(2,"Polimed","Strada Gabriel Popescu nr.4, Targoviste ",2),
(3,"Medica","Calea Dumbrăvii nr.107, Sibiu",3),
(4,"Petros","Strada Alesd nr.16, Cluj",4);

Insert into contract values
(1,"Baragan","Andrei",35,NULL,210,"hr",1),
(2,"Bledea","Dragos",30,NULL,200,"rec",1),
(3,"Gavrila","Tiberiu",35,NULL,190,"m",1),
(4,"Tiplea","Ionut",25,NULL,205,"eco",1),
(5,"Varga","Robert",50,NULL,210,"m",1),
(6,"Ivan","Cosmina",50,NULL,200,"m",1),
(7,"Cornea","Georgiana",40,NULL,190,"as",1),
(8,"Gabor","Mihai",50,NULL,205,"m",2),
(9,"Ratiu","Vlad",45,NULL,180,"m",2),
(10,"Lazareanu","Sabina",35,NULL,190,"as",2),
(11,"Hustiuc","Teodor",35,NULL,200,"hr",2),
(12,"Manole","Gicu",25,NULL,195,"eco",2),
(13,"Todor","Robert",30,NULL,180,"rec",2),
(14,"Rusu","Mihai",45,NULL,190,"m",3),
(15,"Lunca","Eduard",35,NULL,190,"eco",3),
(16,"Coatu","Sorin",35,NULL,190,"hr",3),
(17,"Pop","Diana",35,NULL,190,"rec",3),
(18,"David","Valeriu",40,NULL,190,"as",3),
(19,"Gardea","Codrin",35,NULL,190,"as",4),
(20,"Rusu","David",55,NULL,190,"m",4),
(21,"Berci","Roxana",30,NULL,190,"eco",4),
(22,"Trifoi","Mihaela",35,NULL,190,"rec",4),
(23,"Ofrim","Adela",35,NULL,190,"hr",4);

Insert into UserData  values
(1,"gabor","0000","admin"),
(2,"ultrainstinctshaggy","0000","user"),
(3,"demonmonkey","0000","user"),
(4,"trabantt","0000","user"),
(5,"noobmaster69","0000","user"),
(6,"xx_mrbeast_xx","0000","user"),
(7,"xo_tm","1111","user"),
(8,"meremaimuta","1234","user"),
(9,"spicy","1357","user"),
(10,"destrukto24","1111","user"),
(11,"rapidpanda","2345","Sadmin"),
(12,"itachi","9999","user"),
(13,"aventoryus","4456","user"),
(14,"blizard4u2","9832","user"),
(15,"creepytaco","6580","user"),
(16,"ducksnotallowed","5684","admin"),
(17,"knighty","4550","user"),
(18,"2fat2kidnaap","0712","user"),
(19,"cowboyfrog","1234","user"),
(20,"aladeen","1111","user"),
(21,"hequn","1111","user"),
(22,"markopejlo","0000","user"),
(23,"tembelizor","5555","Sadmin");

Insert into dateangajat values
(501492145,"In varful Carpatilor acolo unde se strang animalele","5442974402","steaua2@gmail.com","IBANRO6622",1,'2001-01-01'),
(123456789,"nr Magic,Str Baba Vanga,Pocreaca din Deal","6963770107","bri@yahoo.com","IBANanei",2,'2020-12-30'),
(674392843,"A treia strada la stanga la casa cu 2 etaje","8795123091","dia420@gmail.com","GBKK2139512151",3,'2000-02-29'),
(315918244,"Sub podul vechi de 100 de ani din capitala Angliei, Rusia","5329854115","restanta@utcluj.com","AFP141256124",4,'2010-02-28'),
(126125125,"Al patrulea copac de langa spitalul de urgente","7693520943","anideliceu@maimuta.uk","TYA12351612",5,'1912-12-12'),
(879540324,"A doua statie de bus de la aeroport","7592481042","boratsagdiev@europa.ro","POO35135113",6,'1901-9-11'),
(019249127,"In podul din casa lui Pinocchio","4583922687","mariansafi@gmail.ro","AF4412515125",7,'2019-12-25'),
(105910258,"In baia din metrou","9334096751","arianagrande@gmail.com","BD12940124",8,'2008-10-01'),
(012580129,"La ferma lui LeatherFace","7593302587","kimmygranger@gmail.com","AS21312321",9,'2020-02-04'),
(163523460,"In buncarul vechi de pe vremea lui bunicu' ","6550938471","florinpascu@yahoo.ro","TO123123124",10,'2006-06-06'),
(162623321,"In subteranul scolii unde a invatat","4033598576","johnnysins@gmail.com","RE123912741",11,'2004-01-07'),
(123909262,"In fundul lacului Malaia","5783390561","andersenamy@canada.ro","AF1251125",12,'1994-04-05'),
(812034913,"In santul de langa carciuma din drum","5901587629","jensenpeta@usanda.us","POT1279081",13,'2000-04-19'),
(023851314,"In varful unui copac din Padurea Cozia","0958509632","johnwick@movies.com","HMG1248129",14,'2003-01-30'),
(156326239,"In mlastina de langa oras","8665043571","sparrowjack@caribbean.com","YTK1250712",15,'2007-08-15'),
(162632356,"Dupa al 40-lea stalp de electricitate la stanga pe strada cu namol","3024865491","erenjeager@titans.com","GA7433248712",16,'2005-01-07'),
(173477477,"La granita dintre Romania si Ungaria","56540382912","mikasaarmin@astre.ro","KHM214012",17,'2005-02-02'),
(182553255,"In mijlocul Campiei Romane","1208576023","levilight@note.jpn","IVS123850",18,'2001-02-22'),
(197236235,"Langa cosul de gunoi de la mall","5503211789","lmn@ripthem.com","GIER120842",19,'2002-02-26'),
(212412440,"In directia iesirii din oras, al patrulea stalp in sus","1029584732","reinerbertholdt@ziduri.ro","ZPC123971",20,'2001-03-01'),
(215325555,"In interiorul policlinicii","5758330256","attackontitan@superio.com","IGO12412412",21,'1999-04-02'),
(222344342,"Langa beciul din Castelul Peles","0754029841","nanatsunotaizai@captain.com","JCA2131212",22,'2005-05-05'),
(235235325,"La a 5-a aruncatura de bat inspre supermarket","5794209123","bokunoheroacademia@dago.com","GAI1293841",23,'2001-11-01');

Insert into tipasistentmedical values
(7,"generalist",1),
(10,"radiologie",0),
(18,"laborator",1),
(19,"generalist",0);

Insert into medic values
(3,3,"ecografie, endoscopie digestivă,EEG,EMG","doctorand","profesor",5),
(5,5,"ecocardiografie, cardiologie intervențională, bronhoscopie,chirurgie toracică, chirurgie spinală, chirurgie spinală","doctor în științe medicale","lector",10),
(6,6,"chirurgie laparoscopică, chirurgie toracică, chirurgie spinală, chirurgie spinală, litotriție extracorporeală","doctor în științe medicale","conferențiar",8),
(8,8,"litotriție extracorporeală, explorare computer tomograf","","preparator",5),
(9,9,"cardiologie intervențională","","",3),
(14,14,"chirurgie toracică, chirurgie spinală, chirurgie spinală","","asistent",10),
(20,20,"litotriție extracorporeală, explorare computer tomograf","doctor în științe medicale","",7);


insert into pacient values
(1,"Agachi","Luminita"),
(2,"Achim","Ioan"),
(3,"Adamescu","Dominica"),
(4,"Enache","Sorin"),
(5,"Giurgiu","Valer"),
(6,"Jurca","Traian"),
(7,"Lascu","Mihaela"),
(8,"Miclaus","Simona"),
(9,"Nicoara","Tania"),
(10,"Patru","Ion"),
(11,"Rab","Laura"),
(12,"Samoilescu","Gheorghe"),
(13,"Soimu","Andreea"),
(14,"Stefanescu","Florian"),
(15,"Vascan","Teodor"),
(16,"Voncila","Ion");


Insert into aparatmedical values
(1,"Stestoscop"),
(2,"Concentrator de oxigen"),
(3,"Oximetru"),
(4,"Electrocardiograf"),
(5,"Ecograf"),
(6,"Monitor functii vitale"),
(7,"Aspirator chirurgical"),
(8,"Aparat electrostimulare");



Insert into cabinet values
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,2),
(12,2),
(13,2),
(14,2),
(15,2),
(16,2),
(17,2),
(18,2),
(19,2),
(20,2),
(21,3),
(22,3),
(23,3),
(24,3),
(25,3),
(26,3),
(27,3),
(28,3),
(29,3),
(30,3),
(31,4),
(32,4),
(33,4),
(34,4),
(35,4),
(36,4),
(37,4),
(38,4),
(39,4),
(40,4);


insert into programare values
(1,'2021-01-13','16:30:00',3,1,1),
(2,'2021-04-14','16:00:00',3,2,2),
(3,'2021-02-02','15:00:00',3,5,2),
(4,'2021-02-22','15:30:00',3,7,3),
(5,'2021-03-01','08:00:00',5,10,4),
(6,'2021-01-25','09:00:00',5,9,4),
(7,'2021-04-01','10:30:00',5,8,5),
(8,'2021-02-15','08:30:00',5,1,6),
(9,'2021-12-13','09:30:00',6,3,6),
(10,'2021-12-20','09:00:00',8,11,7), 
(11,'2021-10-29','15:00:00',6,4,8),
(12,'2021-08-19','16:00:00',6,6,8),
(13,'2021-06-07','09:00:00',9,14,9),
(14,'2021-05-13','16:30:00',9,15,10),
(15,'2021-05-17','10:30:00',9,20,10),
(16,'2021-01-30','10:00:00',8,16,11),
(17,'2021-02-20','07:00:00',20,33,12),
(18,'2021-07-13','10:00:00',14,24,12),
(19,'2021-07-31','16:00:00',8,12,13), 
(20,'2021-11-06','12:00:00',8,15,14), 
(21,'2021-11-23','09:00:00',14,29,14),
(22,'2021-07-20','16:00:00',14,22,15),
(23,'2021-06-08','10:00:00',20,31,16),
(24,'2021-08-26','16:00:00',20,40,16);

insert into raport values
(1,1,5,7,"","","",false),
(2,2,6,7,"","","",false),
(3,3,NULL,7,"","","",false),
(4,4,NULL,NULL,"","","",false),
(5,5,3,NULL,"","","",false),
(6,6,3,7,"","","",false),
(7,7,NULL,NULL,"","","",false),
(8,8,6,7,"","","",false),
(9,9,NULL,NULL,"","","",false),
(10,10,NULL,10,"","","",false),
(11,11,NULL,7,"","","",false),
(12,12,3,7,"","","",false),
(13,13,NULL,10,"","","",false),
(14,14,NULL,NULL,"","","",false),
(15,15,NULL,NULL,"","","",false),
(16,16,NULL,10,"","","",false),
(17,17,8,19,"","","",false),
(18,18,9,18,"","","",false),
(19,19,NULL,10,"","","",false),
(20,20,NULL,NULL,"","","",false),
(21,21,3,NULL,"","","",false),
(22,22,9,18,"","","",false),
(23,23,8,19,"","","",false),
(24,24,14,NULL,"","","",false);

Insert into aparatpercabinet values
(1,1,1),
(2,3,1),
(3,4,2),
(4,6,2),
(5,7,3),
(6,8,3),
(7,2,4),
(8,3,4),
(9,4,5),
(10,5,5),
(11,1,6),
(12,3,6),
(13,2,7),
(14,1,7),
(15,6,8),
(16,5,8),
(17,7,9),
(18,8,9),
(19,2,10),
(20,1,10),
(21,5,11),
(22,1,11),
(23,5,12),
(24,6,12),
(25,1,13),
(26,6,13),
(27,1,14),
(28,4,14),
(29,2,15),
(30,7,15),
(31,3,16),
(32,6,16),
(33,5,17),
(34,4,17),
(35,1,18),
(36,8,18),
(37,2,19),
(38,4,19),
(39,6,20),
(40,8,20),
(41,4,21),
(42,5,21),
(43,3,22),
(44,2,22),
(45,5,23),
(46,1,23),
(47,8,24),
(48,7,24),
(49,7,25),
(50,6,25),
(51,4,26),
(52,2,26),
(53,3,27),
(54,5,27),
(55,1,28),
(56,5,28),
(57,2,29),
(58,5,29),
(59,3,30),
(60,4,30),
(61,6,31),
(62,1,31),
(63,8,32),
(64,1,32),
(65,2,33),
(66,1,33),
(67,2,34),
(68,7,34),
(69,7,35),
(70,6,35),
(71,5,36),
(72,4,36),
(73,4,37),
(74,7,37),
(75,4,38),
(76,8,38),
(77,8,39),
(78,3,39),
(79,3,40),
(80,6,40);


Insert into orarGeneric (ziSaptamana,intervalOrar ,nrunitate,nrcontract)  values
("Luni","08:30-12:00 13:00-18:00",1,1),
("Marti","09:30-12:00 13:00-18:00",1,1),
("Miercuri","09:30-12:00 15:00-20:00",1,1),
("Joi","09:30-11:00 15:00-18:00",1,1),
("Vineri","09:30-12:00 13:00-17:00",1,1),

("Luni","09:30-11:00 14:00-18:00",1,2),
("Marti","09:30-11:00 14:00-19:00",1,2),
("Miercuri","09:30-12:00 15:00-18:00",1,2),
("Joi","09:30-11:00 15:00-18:00",1,2),
("Vineri","08:00-12:00 14:00-17:00",1,2),

("Luni","09:30-12:00 13:30-18:00",1,4),
("Marti","09:30-12:00 13:30-18:00",1,4),
("Miercuri","09:30-11:30 15:30-20:00",1,4),
("Joi","09:30-11:00 15:30-20:00",1,4),
("Vineri","08:30-11:00 13:30-17:00",1,4),

("Luni","08:00-12:00 13:00-17:00",1,5),
("Marti","09:30-12:00 13:00-17:00",1,5),
("Miercuri","09:30-12:00 15:00-17:00",1,5),
("Joi","09:30-11:00 15:00-17:00",1,5),
("Vineri","09:30-12:00 13:00-17:00",1,5),

("Luni","09:30-12:00 13:00-17:30",1,6),
("Marti","09:30-12:00 13:00-17:30",1,6),
("Miercuri","09:30-12:00 15:00-17:30",1,6),
("Joi","09:30-11:00 15:00-17:30",1,6),
("Vineri","09:30-12:00 13:00-17:00",1,6),

("Luni","09:30-12:00 13:00-18:00",1,7),
("Marti","09:30-12:00 13:00-18:00",1,7),
("Miercuri","09:30-12:00 15:00-18:00",1,7),
("Joi","09:30-11:00 15:00-19:00",1,7),
("Vineri","09:30-12:00 13:00-17:00",1,7), -- Prima unitate medicala

("Luni","07:00-12:00 13:00-18:00",2,9),
("Marti","09:30-12:00 13:00-19:00",2,9),
("Miercuri","09:30-12:00 16:00-18:00",2,9),
("Joi","09:30-11:00 16:00-18:00",2,9),
("Vineri","09:30-12:00 13:00-17:30",2,9), 
("Sambata","09:30-12:00 16:00-17:00",2,9), 

("Luni","09:30-12:00 13:00-18:00",2,10),
("Marti","09:30-12:00 13:00-18:00",2,10),
("Miercuri","09:30-12:00 16:00-20:00",2,10),
("Joi","07:30-11:00 16:00-18:00",2,10),
("Vineri","09:30-12:00 13:00-17:00",2,10),
("Sambata","09:30-12:00 16:00-17:00",2,10), 

("Luni","07:30-12:00 13:00-18:00",2,11),
("Marti","09:30-12:00 13:00-19:00",2,11),
("Miercuri","09:30-12:00 15:30-20:00",2,11),
("Joi","09:30-11:00 16:00-18:00",2,11),
("Vineri","09:30-12:00 13:00-17:30",2,11),
("Sambata","09:30-12:00 15:00-17:00",2,11), 

("Luni","07:30-12:00 13:00-18:00",2,12),
("Marti","09:30-12:00 13:00-18:00",2,12),
("Miercuri","09:30-12:00 16:00-19:00",2,12),
("Joi","07:30-11:00 15:30-18:00",2,12),
("Vineri","09:30-12:00 13:00-17:00",2,12),
("Sambata","09:30-12:00 14:30-17:00",2,12), 

("Luni","07:00-12:00 13:00-18:00",2,13),
("Marti","08:00-12:00 13:00-18:00",2,13),
("Miercuri","09:00-12:00 15:30-20:00",2,13),
("Joi","07:00-11:00 15:30-18:00",2,13),
("Vineri","09:30-12:00 13:00-17:00",2,13),
("Sambata","09:30-12:00 15:00-17:00",2,13), -- A doua unitate medicala

("Luni","08:00-12:00 14:00-17:00",3,14),
("Marti","09:30-12:00 14:00-18:00",3,14),
("Miercuri","09:30-12:00 14:00-19:00",3,14),
("Joi","09:30-11:00 14:00-20:00",3,14),
("Vineri","09:30-12:00 14:00-17:00",3,14),

("Luni","09:30-12:00 14:00-17:00",3,15),
("Marti","08:00-13:00 14:00-18:00",3,15),
("Miercuri","09:30-12:00 14:00-18:00",3,15),
("Joi","09:30-11:00 14:00-18:00",3,15),
("Vineri","09:30-12:00 14:00-17:30",3,15), 

("Luni","09:30-12:00 14:00-17:00",3,16),
("Marti","09:30-12:00 14:00-18:00",3,16),
("Miercuri","08:00-12:00 14:00-18:00",3,16),
("Joi","09:30-11:00 14:00-20:00",3,16),
("Vineri","09:30-12:00 14:00-17:00",3,16), 

("Luni","09:30-12:00 14:00-17:00",3,17),
("Marti","09:30-12:00 14:00-18:00",3,17),
("Miercuri","09:30-12:00 14:00-19:00",3,17),
("Joi","08:00-11:00 14:00-18:00",3,17),
("Vineri","09:30-12:00 14:00-17:00",3,17), 

("Luni","09:30-12:00 14:00-17:00",3,18),
("Marti","09:30-12:00 14:00-18:00",3,18),
("Miercuri","09:30-12:00 14:00-19:00",3,18),
("Joi","09:30-11:00 14:00-18:00",3,18),
("Vineri","08:00-12:00 14:00-17:30",3,18), -- A treia unitate medicala

("Luni","09:30-12:00 13:00-18:00",4,19),
("Marti","09:30-12:00 13:00-19:00",4,19),
("Miercuri","09:30-12:00 16:00-18:00",4,19),
("Joi","09:30-11:00 15:00-18:00",4,19),
("Vineri","07:30-12:00 13:00-15:00",4,19),
("Sambata","08:30-10:00 11:00-15:00",4,19),

("Luni","09:30-12:00 13:00-19:00",4,21),
("Marti","09:30-12:00 13:00-18:00",4,21),
("Miercuri","09:30-12:00 16:00-18:00",4,21),
("Joi","09:30-11:00 15:00-18:00",4,21),
("Vineri","09:30-12:00 13:00-16:00",4,21),
("Sambata","07:30-10:00 11:00-14:00",4,21),

("Luni","09:30-12:00 13:00-19:00",4,22),
("Marti","09:30-12:00 13:00-18:00",4,22),
("Miercuri","09:30-12:00 15:30-18:00",4,22),
("Joi","09:30-11:00 16:00-18:00",4,22),
("Vineri","07:30-12:00 13:00-16:00",4,22),
("Sambata","07:30-10:00 11:00-15:00",4,22),

("Luni","09:30-12:00 13:00-18:00",4,23),
("Marti","09:30-12:00 13:00-19:00",4,23),
("Miercuri","09:30-12:00 16:00-18:00",4,23),
("Joi","09:30-11:00 15:00-20:00",4,23),
("Vineri","09:30-12:00 13:00-15:00",4,23),
("Sambata","07:00-10:00 11:00-15:00",4,23); -- A patra unitate medicala

Insert into orarSpecific (ziCalendaristica,intervalOrar ,nrunitate,nrcontract)  values
("2021-01-13","16:30-17:00",1,3),
("2021-04-14","16:00-16:30",1,3),
("2021-02-02","15:00-15:30",1,3),
("2021-02-22","15:30-16:00",1,3),
("2021-03-01","08:00-08:30",1,5),
("2021-01-25","09:00-09:30",1,5),
("2021-04-01","10:30-11:00",1,5),
("2021-02-15","08:30-09:00",1,5),
("2021-12-13","09:30-10:00",1,6),
("2021-08-19","15:00-15:30",1,6),
("2021-10-29","16:00-16:30",1,6),
("2021-12-20","09:00-09:30",2,8),
("2021-01-30","10:00-10:30",2,8),
("2021-07-31","16:00-16:30",2,8),
("2021-11-06","12:00-12:30",2,8),
("2021-06-07","09:00-09:30",2,9),
("2021-05-13","16:30-17:00",2,9),
("2021-05-17","10:30-11:00",2,9),
("2021-07-13","10:00-10:30",3,14),
("2021-11-23","09:00-09:30",3,14),
("2021-07-20","16:00-16:30",3,14),
("2021-02-20","07:00-07:30",4,20),
("2021-06-08","10:00-10:30",4,20),
("2021-08-26","16:00-16:30",4,20);
-- nu merge inca , trebuie creat intai serviciul
-- delete from AparatNecesar;
-- Insert into aparatnecesar  values
-- (1,1,1),
-- (2,1,2),
-- (3,1,5),
-- (4,1,8),
-- (5,2,5),
-- (6,2,7),
-- (7,3,6),
-- (8,4,4),
-- (9,5,1),
-- (10,5,2),
-- (11,5,4),
-- (12,5,6);



