

create database if not exists broadband;
use broadband;
SET FOREIGN_KEY_CHECKS = 0;
create table if not exists customer_master(
customer_id numeric(5),
account_no numeric(11),
aadhar_card_no numeric(20),
smartcard_no numeric(10),
customer_name varchar(20),
address varchar(30),
city  varchar(20),
mobile_no numeric(10),
email varchar(50),
tv_set_no numeric(4),
primary key(customer_id, smartcard_no,aadhar_card_no)
);

desc customer_master;

insert into customer_master values
(101, 11112222001, 506171609861, 1002001, 'Sanjiv Shah', '5-Patel Colony','Rajkot', 980051566, 'sanjivshah@gmail.com', 1);
insert into customer_master values
(102, 11112222011, 506226059877, 1002002, 'Kenil Kundaliya', 'Sector-B,Palace rd', 'Gandhinagar', 9408907252, 'kk503@gmail.com', 1);
insert into customer_master values
(103, 11112222111, 506336058916, 1002003, 'Dipesh Vora', 'IA-5 Pushpa Appt', 'Ahmedabad', 9998950555, 'dipeshv@yahoo.co.in', 2);
insert into customer_master values
(104, 11112222101, 507117058955, 1002004, 'Mukesh Dalal', 'A-1 Kanti residence', 'Surat', 8566013028, 'mukeshd53@gmail.com', 1);
insert into customer_master values
(105, 11112222100, 507227057533, 1002005, 'Anand Doshi', 'Vallabh main street', 'Rajkot', 7654055001, 'doshianand44@yahoo.co.in', 1);
insert into customer_master values
(106, 11112222010, 503443055746, 1002006, 'Parag Mehta', 'C-5 Green city', 'Jamnagar', 8855661234, 'p_mehta@yahoo.co.in', 3); 
insert into customer_master values
(107, 11112222110, 508118056457, 1002007, 'Kusum Zaveri', 'B-102 Sea Heights', 'Porbandar', 9106583230, 'kumar_kusum@yahoo.co.in', 1);
insert into customer_master values
(108, 11112100111, 505555018900, 1002008, 'Chintan Kumar', 'Maniyar,Satellite', 'Ahmedabad', 7990135677, 'chintan_k@gmail.com', 2);
insert into customer_master values
(109, 11112100001, 500110069815, 1002009, 'Sagar Sharma', 'C-308,Aagam flat', 'Ahmedabad', 9409345987, 'sagarsharma@gmail.com', 4);
insert into customer_master values
(110, 11112100011, 500550034855, 1002010, 'Asmita Shetty', 'B-5 Shantivan', 'Jamnagar', 6543110100, 'asmita_s7@gmail.com', 2);
insert into customer_master values
(111, 11112100101, 501010080011, 1002011, 'Gopal Verma', 'Jolly Super rd', 'Jamnagar', 02882670511, 'g_verma55@gmail.com', 1);
insert into customer_master values
(112, 11112100100, 503030010099, 1002012, 'Sunil Shah', 'Shah house town hall', 'Jamnagar', 8800107056, 'sunilshah@gmail.com', 1);
insert into customer_master values
(113, 11112100010, 512112550901, 1002013, 'Dhruti Pandya', 'D-501,Megha tower', 'Valsad', 9804852522, 'd_pandya77@yahoo.co.in', 8);
insert into customer_master values
(114, 11112100110, 532453440708, 1002014, 'Devangi Sheth', 'DS Infocity rd', 'Gandhinagar', 7980171089, 'devangi_505@yahoo.co.in', 4);
insert into customer_master values
(115, 21112110111, 545565548070, 1002015, 'Aayan Joshi', 'Silvernest,Palace rd', 'Rajkot', 7990817111, 'aayan_404@gmail.com', 5);
insert into customer_master values
(116, 21112110222, 567889709915, 1002016, 'Faizal Khan', 'Sector5-B,Main building', 'Gandhinagar', 9405237825, 'fk1234@yahoo.co.in', 1);
insert into customer_master values
(117, 21112110333, 531197851599, 1002017, 'Poonam Madam', 'Shree,Kamdar colony', 'Jamnagar', 9585667788, 'poonammadam@yahoo.co.in', 2);
insert into customer_master values
(118, 21112110444, 555513473847, 1002018, 'Paresh Kanakhara', 'Ekta tower,Naranpura', 'Ahmedabad', 7909425211, 'pareshbhai34@yahoo.co.in', 1);
insert into customer_master values
(119, 21112110555, 521228767388, 1002019, 'Dhairya Oza', 'Oza palace,Godrej city', 'Ahmedabad', 6534172525, 'd_oza550@gmail.com', 1);
insert into customer_master values
(120, 21112110666, 599985435678, 1002020, 'Monty Parekh', 'Bapu,Vallabh rd', 'Surat', 9540810100, 'mp_989@gmail.com', 1);

select * from customer_master;



create table if not exists package_master(
customer_id numeric(5),
package_id varchar(10),
basepackage_name varchar(15),
STB_no decimal(4,0),
STB_type varchar(15),
price decimal(6,2),
company varchar(15),
primary key(package_id,STB_no),
foreign key (customer_id) references customer_master(customer_id)
);

desc package_master;


insert into package_master values (101,'100HD','all in one HD',4015,'HD',460,'Jio');
insert into package_master values (102,'HDD1','HD diamond',4018,'HD',450,'GTPL');
insert into package_master values (103,'S001','Silver',1018,'SD',270,'GTPL');
insert into package_master values (104,'G002','Gold',4059,'HD',350,'GTPL');
insert into package_master values (105,'HDP2','HD platinium',4066,'HD',350,'Jio');
insert into package_master values (106,'P004','Premium',1235,'SD',345,'Jio');
insert into package_master values (107,'HDD1','HD diamond',5011,'HD',450,'GTPL');
insert into package_master values (108,'HDP2','HD platinium',5055,'HD',350,'Airtel');
insert into package_master values (109,'E003','Economy',1378,'SD',200,'Gtpl');
insert into package_master values (110,'100HD','all in one HD',5068,'HD',460,'GTPL');
insert into package_master values (111,'HDP2','HD platinium',5911,'HD',350,'Jio');
insert into package_master values (112,'G002','Gold',1459,'SD',350,'Jio');
insert into package_master values (113,'G002','Gold',6009,'HD',350,'Jio');
insert into package_master values (114,'E003','Economy',1560,'SD',200,'Jio');
insert into package_master values (115,'HDD1','HD diamond',6245,'HD',450,'Jio');
insert into package_master values (116,'HDP2','HD platinium',6547,'HD',350,'GTPL');
insert into package_master values (117,'P004','Premium',1870,'SD',345,'GTPL');
insert into package_master values (118,'P004','Premium',6817,'HD',345,'Jio');
insert into package_master values (119,'HDD1','HD diamond',7503,'HD',450,'Jio');
insert into package_master values (120,'HDP2','HD platinium',7883,'HD',350,'Jio');

select * from package_master;

create table if not exists WiFi_master(
customer_id numeric(5),
plan_id varchar(10),
plan_name varchar(15),
data_limit varchar(10),
validity varchar(15),
router_no decimal(9),
data_speed decimal(7,2),
price decimal(7,2),
company varchar(15),
primary key (plan_id,router_no),
foreign key (customer_id) references customer_master(customer_id)
);

desc WiFi_master;

insert into WiFi_master values(101,"SU100", "Super 100", "100","2021-03-31",5001,50,7000,"Jio");
insert into WiFi_master values(102,"SUUN0", "Super unlimited", "unlimited","2021-01-31",5511,50,11000,"GTPL");
insert into WiFi_master values(103,"BA100", "Basic 100", "100","2020-12-31",5522,10,3000,"Airtel");
insert into WiFi_master values(104,"BA500", "Basic 500", "500","2020-12-31",5500,10,5000,"GTPL");
insert into WiFi_master values(105,"MEUN0", "Mega unlimited", "unlimited","2020-12-31",6511,25,9000,"Jio");
insert into WiFi_master values(106,"MEUN0", "Mega unlimited", "unlimited","2020-12-31",6500,25,9000,"Jio");
insert into WiFi_master values(107,"SUUN0", "Super unlimited", "unlimited","2021-03-31",8511,10,11000,"GTPL");
insert into WiFi_master values(108,"SU500", "Super 500", "500","2021-01-31",4522,10,9000,"Airtel");
insert into WiFi_master values(109,"SU500", "Super 500", "500","2020-12-31",6511,10,7000,"GTPL");
insert into WiFi_master values(110,"SU100", "Super 100", "100","2020-12-31",5100,10,7000,"BSNL");
insert into WiFi_master values(111,"MEUN0", "Mega unlimited", "unlimited","2020-12-31",7990,25,9000,"BSNL");
insert into WiFi_master values(112,"ME500", "Mega 500", "500","2020-12-31",1010,25,7000,"Jio");
insert into WiFi_master values(113,"ME500", "Mega 500", "500","2020-12-31",5099,25,7000,"Jio");
insert into WiFi_master values(114,"SU100", "Super 100", "100","2020-12-31",8517,50,7000,"Jio");
insert into WiFi_master values(115,"SUUN0", "Super unlimited", "unlimited","2020-12-31",7918,50,11000,"Jio");
insert into WiFi_master values(116,"MEUN0", "Mega unlimited", "unlimited","2020-12-31",4320,25,9000,"Jio");
insert into WiFi_master values(117,"BAUN0", "Basic unlimited", "unlimited","2021-03-31",3011,10,7000,"GTPL");
insert into WiFi_master values(118,"BA100", "Basic 100", "100","2021-03-31",1033,10,3000,"GTPL");
insert into WiFi_master values(119,"SUUN0", "Super unlimited", "unlimited","2020-12-31",1801,50,11000,"Jio");
insert into WiFi_master values(120,"MEUN0", "Mega unlimited", "unlimited","2020-12-31",5959,25,9000,"Airtel");

select * from WiFi_master;

create table if not exists display_master
(
customer_id numeric(5),
setupbox_no decimal(4,0),
router_no decimal(9),
mobile_no numeric(10),
PRIMARY KEY (customer_id),
foreign key (customer_id) references customer_master(customer_id)
);
desc display_master;

insert into display_master values("101","4015","5001","9800513566");
insert into display_master values("102","4018","5511","9408907252");
insert into display_master values("103","1018","5522","9998950555");
insert into display_master values("104","4059","5500","8566013028");
insert into display_master values("105","4066","6511","7654055001");
insert into display_master values("106","1235","6500","8655661234");
insert into display_master values("107","5011","8511","9106583230");
insert into display_master values("108","5055","4522","7990135677");
insert into display_master values("109","1378","6511","9409345987");
insert into display_master values("110","5068","5100","6543110100");
insert into display_master values("111","5911","7990","0282670511");
insert into display_master values("112","1459","1010","8800107056");
insert into display_master values("113","6009","5099","9804852522");
insert into display_master values("114","1560","8517","7980171089");
insert into display_master values("115","6245","7918","7990817111");
insert into display_master values("116","6547","4320","9405237825");
insert into display_master values("117","1870","3011","9585667788");
insert into display_master values("118","6817","1033","7909425211");
insert into display_master values("119","7503","1801","6534172525");
insert into display_master values("120","7883","5959","9540810100");

select * from display_master;

create table if not exists payment_master(
customer_id numeric(5),
transaction_id char(15),
STB_no decimal(4),
router_no decimal(9),
mobile_no numeric(10),
package_id varchar(10),
plan_id varchar(10),
total_rs numeric(8,2),
date date,
primary key (transaction_id),
foreign key (customer_id) references customer_master(customer_id),
foreign key (package_id) references package_master(package_id),
foreign key (plan_id) references WiFi_master(plan_id)
);

desc payment_master;

insert into payment_master values(101,344524,4015,5001,9800513566,"100HD","SU100",12520,STR_TO_DATE('06/19/2020', '%m/%d/%Y'));
insert into payment_master values(102,432142,4018,5511,9408907252,"HDD1","SUUN0",16400,STR_TO_DATE('03/15/2020', '%m/%d/%Y'));
insert into payment_master values(103,762135,1018,5522,9998950555,"S001","BA100",6240,STR_TO_DATE('09/9/2020', '%m/%d/%Y'));
insert into payment_master values(104,942654,4059,5500,8566013028,"G002","BA500",9200, STR_TO_DATE('06/11/2020', '%m/%d/%Y'));
insert into payment_master values(105,345287,4066,6511,7654055001,"HDP2","MEUN0",13200,STR_TO_DATE('01/11/2020', '%m/%d/%Y'));
insert into payment_master values(106,761246,1235,6500,8855661234,"P004","MEUN0",13140,STR_TO_DATE('11/11/2020', '%m/%d/%Y'));
insert into payment_master values(107,487045,5011,8511,9106583230,"HDD1","SUUN0",16400,STR_TO_DATE('12/11/2020', '%m/%d/%Y'));
insert into payment_master values(108,283413,5055,4522,7990135677,"HDP2","SU500",13200,STR_TO_DATE('03/1/2020', '%m/%d/%Y'));
insert into payment_master values(109,852431,1378,6511,9409345987,"E003","SU500",11400,STR_TO_DATE('06/11/2020', '%m/%d/%Y'));
insert into payment_master values(110,297242,5068,5100,6543110100,"100HD","SU100",12520,STR_TO_DATE('01/11/2020', '%m/%d/%Y'));
insert into payment_master values(111,612400,5911,7990,02882670511,"HDP2","MEUN0",13200,STR_TO_DATE('07/1/2020', '%m/%d/%Y'));
insert into payment_master values(112,509276,1459,1010,8800107056,"G002","ME500",11200,STR_TO_DATE('04/21/2020', '%m/%d/%Y'));
insert into payment_master values(113,892109,6009,5099,9804852522,"G002","ME500",11200,STR_TO_DATE('04/11/2020', '%m/%d/%Y'));
insert into payment_master values(114,936512,1560,8517,7980171089,"E003","SU100",9400,STR_TO_DATE('8/11/2020', '%m/%d/%Y'));
insert into payment_master values(115,76218,6245,7918,7990817111,"HDD1","SUUN0",16400,STR_TO_DATE('06/21/2020', '%m/%d/%Y'));
insert into payment_master values(116,578321,6547,4320,9405237825,"HDP2","MEUN0",13200,STR_TO_DATE('05/9/2020', '%m/%d/%Y'));
insert into payment_master values(117,409467,1870,3011,9585667788,"P004","BAUN0",11140,STR_TO_DATE('03/25/2020', '%m/%d/%Y'));
insert into payment_master values(118,920742,6817,1033,7909425211,"P004","BA100",7140,STR_TO_DATE('11/11/2020', '%m/%d/%Y'));
insert into payment_master values(119,109756,7503,1801,6534172525,"HDD1","SUUN0",16400,STR_TO_DATE('11/1/2020', '%m/%d/%Y'));
insert into payment_master values(120,710967,7883,5959,9540810100,"HDP2","MEUN0",13200,STR_TO_DATE('10/11/2020', '%m/%d/%Y'));

select * from payment_master;

create table if not exists complaint_master(
customer_id numeric(5),
customer_name varchar(20),
complaint_id numeric(10),
description varchar(200),
mobile_no numeric(10),
complaint_status varchar(15),
primary key(complaint_id),
foreign key (customer_id) references customer_master(customer_id)
);
desc complaint_master;

insert into complaint_master values("104","Mukesh Dalal","11089","Net Not Connecting","8566013028","Yes");
insert into complaint_master values("108","Chetan Kumar","13057","Remote computer did not respond","7990135677","Yes");
insert into complaint_master values("109","Sagar Sharma","10591","Specified destination is not reachable","9409345987","Yes");
insert into complaint_master values("110","Asmita Shetty","20555","Access denied by server","6543110100","No");
insert into complaint_master values("115","Aayan Joshi","70819","The PPP link control protocol terminated","7990817111","No");
insert into complaint_master values("113","Dhruti Pandya","91576","Dialer Connected page Not Open","9804852522","Yes");
insert into complaint_master values("103","Dipesh Vora","82443","Slow Speed","9998950555","Yes");
insert into complaint_master values("119","Dhairya Oza","15078","SMPT port issue","6534172525","Yes");

select * from complaint_master;
SET FOREIGN_KEY_CHECKS = 1;
show tables;



1.)select * from customer_master where city='Ahmedabad';
+-------------+-------------+----------------+--------------+------------------+------------------------+-----------+------------+--------------------------+-----------+
| customer_id | account_no  | aadhar_card_no | smartcard_no | customer_name    | address                | city      | mobile_no  | email                    | tv_set_no |
+-------------+-------------+----------------+--------------+------------------+------------------------+-----------+------------+--------------------------+-----------+
|         103 | 11112222111 |   506336058916 |      1002003 | Dipesh Vora      | IA-5 Pushpa Appt       | Ahmedabad | 9998950555 | dipeshv@yahoo.co.in      |         2 |
|         108 | 11112100111 |   505555018900 |      1002008 | Chintan Kumar    | Maniyar,Satellite      | Ahmedabad | 7990135677 | chintan_k@gmail.com      |         2 |
|         109 | 11112100001 |   500110069815 |      1002009 | Sagar Sharma     | C-308,Aagam flat       | Ahmedabad | 9409345987 | sagarsharma@gmail.com    |         4 |
|         118 | 21112110444 |   555513473847 |      1002018 | Paresh Kanakhara | Ekta tower,Naranpura   | Ahmedabad | 7909425211 | pareshbhai34@yahoo.co.in |         1 |
|         119 | 21112110555 |   521228767388 |      1002019 | Dhairya Oza      | Oza palace,Godrej city | Ahmedabad | 6534172525 | d_oza550@gmail.com       |         1 |
+-------------+-------------+----------------+--------------+------------------+------------------------+-----------+------------+--------------------------+-----------+
5 rows in set (0.04 sec)

2.)select * from WiFi_master where plan_id="MEUN0" or plan_id="SUUN0";
+-------------+---------+-----------------+------------+------------+-----------+------------+----------+---------+
| customer_id | plan_id | plan_name       | data_limit | validity   | router_no | data_speed | price    | company |
+-------------+---------+-----------------+------------+------------+-----------+------------+----------+---------+
|         116 | MEUN0   | Mega unlimited  | unlimited  | 2020-12-31 |      4320 |      25.00 |  9000.00 | Jio     |
|         120 | MEUN0   | Mega unlimited  | unlimited  | 2020-12-31 |      5959 |      25.00 |  9000.00 | Airtel  |
|         106 | MEUN0   | Mega unlimited  | unlimited  | 2020-12-31 |      6500 |      25.00 |  9000.00 | Jio     |
|         105 | MEUN0   | Mega unlimited  | unlimited  | 2020-12-31 |      6511 |      25.00 |  9000.00 | Jio     |
|         111 | MEUN0   | Mega unlimited  | unlimited  | 2020-12-31 |      7990 |      25.00 |  9000.00 | BSNL    |
|         119 | SUUN0   | Super unlimited | unlimited  | 2020-12-31 |      1801 |      50.00 | 11000.00 | Jio     |
|         102 | SUUN0   | Super unlimited | unlimited  | 2021-01-31 |      5511 |      50.00 | 11000.00 | GTPL    |
|         115 | SUUN0   | Super unlimited | unlimited  | 2020-12-31 |      7918 |      50.00 | 11000.00 | Jio     |
|         107 | SUUN0   | Super unlimited | unlimited  | 2021-03-31 |      8511 |      10.00 | 11000.00 | GTPL    |
+-------------+---------+-----------------+------------+------------+-----------+------------+----------+---------+


3.) select customer_id,validity from WiFi_master where validity="2020-12-31";
+-------------+------------+
| customer_id | validity   |
+-------------+------------+
|         103 | 2020-12-31 |
|         104 | 2020-12-31 |
|         112 | 2020-12-31 |
|         113 | 2020-12-31 |
|         116 | 2020-12-31 |
|         120 | 2020-12-31 |
|         106 | 2020-12-31 |
|         105 | 2020-12-31 |
|         111 | 2020-12-31 |
|         110 | 2020-12-31 |
|         114 | 2020-12-31 |
|         109 | 2020-12-31 |
|         119 | 2020-12-31 |
|         115 | 2020-12-31 |
+-------------+------------+
14 rows in set (0.00 sec)
 select MAX(tv_set_no) from customer_master;
+----------------+
| MAX(tv_set_no) |
+----------------+
|              8 |
+----------------+
 select customer_name,total_rs from customer_master as  c,payment_master as p where c.customer_id = p.customer_id;
+------------------+----------+
| customer_name    | total_rs |
+------------------+----------+
| Dhairya Oza      | 16400.00 |
| Chintan Kumar    | 13200.00 |
| Asmita Shetty    | 12520.00 |
| Sanjiv Shah      | 12520.00 |
| Anand Doshi      | 13200.00 |
| Poonam Madam     | 11140.00 |
| Kenil Kundaliya  | 16400.00 |
| Kusum Zaveri     | 16400.00 |
| Sunil Shah       | 11200.00 |
| Faizal Khan      | 13200.00 |
| Gopal Verma      | 13200.00 |
| Monty Parekh     | 13200.00 |
| Parag Mehta      | 13140.00 |
| Dipesh Vora      |  6240.00 |
| Aayan Joshi      | 16400.00 |
| Sagar Sharma     | 11400.00 |
| Dhruti Pandya    | 11200.00 |
| Paresh Kanakhara |  7140.00 |
| Devangi Sheth    |  9400.00 |
| Mukesh Dalal     |  9200.00 |
+------------------+----------+
20 rows in set (0.02 sec)

 select * from complaint_master where complaint_status='No';
+-------------+---------------+--------------+------------------------------------------+------------+------------------+
| customer_id | customer_name | complaint_id | description                              | mobile_no  | complaint_status |
+-------------+---------------+--------------+------------------------------------------+------------+------------------+
|         110 | Asmita Shetty |        20555 | Access denied by server                  | 6543110100 | No               |
|         115 | Aayan Joshi   |        70819 | The PPP link control protocol terminated | 7990817111 | No               |
+-------------+---------------+--------------+------------------------------------------+------------+------------------+
2 rows in set (0.04 sec)

select customer_id, price, validity from Wifi_master group by price;
+-------------+----------+------------+
| customer_id | price    | validity   |
+-------------+----------+------------+
|         118 |  3000.00 | 2021-03-31 |
|         104 |  5000.00 | 2020-12-31 |
|         117 |  7000.00 | 2021-03-31 |
|         116 |  9000.00 | 2020-12-31 |
|         119 | 11000.00 | 2020-12-31 |
+-------------+----------+------------+
5 rows in set (0.20 sec)

 select customer_id,price*1.18 as new_price from WiFi_master;
+-------------+------------+
| customer_id | new_price  |
+-------------+------------+
|         118 |  3540.0000 |
|         103 |  3540.0000 |
|         104 |  5900.0000 |
|         117 |  8260.0000 |
|         112 |  8260.0000 |
|         113 |  8260.0000 |
|         116 | 10620.0000 |
|         120 | 10620.0000 |
|         106 | 10620.0000 |
|         105 | 10620.0000 |
|         111 | 10620.0000 |
|         101 |  8260.0000 |
|         110 |  8260.0000 |
|         114 |  8260.0000 |
|         108 | 10620.0000 |
|         109 |  8260.0000 |
|         119 | 12980.0000 |
|         102 | 12980.0000 |
|         115 | 12980.0000 |
|         107 | 12980.0000 |
+-------------+------------+
20 rows in set (0.02 sec)

 select c.customer_name, c.smartcard_no, p.transaction_id,p.package_id,p.plan_id from customer_master as c, payment_master as p where c.customer_id=p.customer_id and c.customer_name='Chintan Kumar';
+---------------+--------------+----------------+------------+---------+
| customer_name | smartcard_no | transaction_id | package_id | plan_id |
+---------------+--------------+----------------+------------+---------+
| Chintan Kumar |      1002008 | 283413         | HDP2       | SU500   |
+---------------+--------------+----------------+------------+---------+
1 row in set (0.00 sec)
 select customer_name,package_id,plan_id from payment_master as p,customer_master as c where c.customer_id = p.customer_id;
+------------------+------------+---------+
| customer_name    | package_id | plan_id |
+------------------+------------+---------+
| Dhairya Oza      | HDD1       | SUUN0   |
| Chintan Kumar    | HDP2       | SU500   |
| Asmita Shetty    | 100HD      | SU100   |
| Sanjiv Shah      | 100HD      | SU100   |
| Anand Doshi      | HDP2       | MEUN0   |
| Poonam Madam     | P004       | BAUN0   |
| Kenil Kundaliya  | HDD1       | SUUN0   |
| Kusum Zaveri     | HDD1       | SUUN0   |
| Sunil Shah       | G002       | ME500   |
| Faizal Khan      | HDP2       | MEUN0   |
| Gopal Verma      | HDP2       | MEUN0   |
| Monty Parekh     | HDP2       | MEUN0   |
| Parag Mehta      | P004       | MEUN0   |
| Dipesh Vora      | S001       | BA100   |
| Aayan Joshi      | HDD1       | SUUN0   |
| Sagar Sharma     | E003       | SU500   |
| Dhruti Pandya    | G002       | ME500   |
| Paresh Kanakhara | P004       | BA100   |
| Devangi Sheth    | E003       | SU100   |
| Mukesh Dalal     | G002       | BA500   |
+------------------+------------+---------+
20 rows in set (0.00 sec)
mysql> delete from complaint_master where complaint_status="Yes";
Query OK, 6 rows affected (0.37 sec)

mysql> commit work;
Query OK, 0 rows affected (0.02 sec)
 select * from complaint_master;
+-------------+---------------+--------------+------------------------------------------+------------+------------------+
| customer_id | customer_name | complaint_id | description                              | mobile_no  | complaint_status |
+-------------+---------------+--------------+------------------------------------------+------------+------------------+
|         110 | Asmita Shetty |        20555 | Access denied by server                  | 6543110100 | No               |
|         115 | Aayan Joshi   |        70819 | The PPP link control protocol terminated | 7990817111 | No               |
+-------------+---------------+--------------+------------------------------------------+------------+------------------+
2 rows in set (0.00 sec)
 select customer_id,MAX(price), plan_id, router_no, company from Wifi_master group by customer_id having customer_id between 101 and 115 and MAX(price)>5000;
+-------------+------------+---------+-----------+---------+
| customer_id | MAX(price) | plan_id | router_no | company |
+-------------+------------+---------+-----------+---------+
|         101 |    7000.00 | SU100   |      5001 | Jio     |
|         102 |   11000.00 | SUUN0   |      5511 | GTPL    |
|         105 |    9000.00 | MEUN0   |      6511 | Jio     |
|         106 |    9000.00 | MEUN0   |      6500 | Jio     |
|         107 |   11000.00 | SUUN0   |      8511 | GTPL    |
|         108 |    9000.00 | SU500   |      4522 | Airtel  |
|         109 |    7000.00 | SU500   |      6511 | GTPL    |
|         110 |    7000.00 | SU100   |      5100 | BSNL    |
|         111 |    9000.00 | MEUN0   |      7990 | BSNL    |
|         112 |    7000.00 | ME500   |      1010 | Jio     |
|         113 |    7000.00 | ME500   |      5099 | Jio     |
|         114 |    7000.00 | SU100   |      8517 | Jio     |
|         115 |   11000.00 | SUUN0   |      7918 | Jio     |
+-------------+------------+---------+-----------+---------+
13 rows in set (0.13 sec)
 select * from package_master where STB_type="HD";
+-------------+------------+------------------+--------+----------+--------+---------+
| customer_id | package_id | basepackage_name | STB_no | STB_type | price  | company |
+-------------+------------+------------------+--------+----------+--------+---------+
|         101 | 100HD      | all in one HD    |   4015 | HD       | 460.00 | Jio     |
|         110 | 100HD      | all in one HD    |   5068 | HD       | 460.00 | GTPL    |
|         104 | G002       | Gold             |   4059 | HD       | 350.00 | GTPL    |
|         113 | G002       | Gold             |   6009 | HD       | 350.00 | Jio     |
|         102 | HDD1       | HD diamond       |   4018 | HD       | 450.00 | GTPL    |
|         107 | HDD1       | HD diamond       |   5011 | HD       | 450.00 | GTPL    |
|         115 | HDD1       | HD diamond       |   6245 | HD       | 450.00 | Jio     |
|         119 | HDD1       | HD diamond       |   7503 | HD       | 450.00 | Jio     |
|         105 | HDP2       | HD platinium     |   4066 | HD       | 350.00 | Jio     |
|         108 | HDP2       | HD platinium     |   5055 | HD       | 350.00 | Airtel  |
|         111 | HDP2       | HD platinium     |   5911 | HD       | 350.00 | Jio     |
|         116 | HDP2       | HD platinium     |   6547 | HD       | 350.00 | GTPL    |
|         120 | HDP2       | HD platinium     |   7883 | HD       | 350.00 | Jio     |
|         118 | P004       | Premium          |   6817 | HD       | 345.00 | Jio     |
+-------------+------------+------------------+--------+----------+--------+---------+
14 rows in set (0.10 sec)

update customer_master set city ='Ahmedabad' where customer_name = 'Sanjiv Shah';
Query OK, 1 row affected (0.20 sec)
Rows matched: 1  Changed: 1  Warnings: 0
select * from customer_master where customer_name="Sanjiv Shah";
+-------------+-------------+----------------+--------------+---------------+----------------+-----------+-----------+----------------------+-----------+
| customer_id | account_no  | aadhar_card_no | smartcard_no | customer_name | address        | city      | mobile_no | email                | tv_set_no |
+-------------+-------------+----------------+--------------+---------------+----------------+-----------+-----------+----------------------+-----------+
|         101 | 11112222001 |   506171609861 |      1002001 | Sanjiv Shah   | 5-Patel Colony | Ahmedabad | 980051566 | sanjivshah@gmail.com |         1 |
+-------------+-------------+----------------+--------------+---------------+----------------+-----------+-----------+----------------------+-----------+
1 row in set (0.00 sec)
 select * from WiFi_master where company='Jio' UNION select * from WiFi_master where company='GTPL';
+-------------+---------+-----------------+------------+------------+-----------+------------+----------+---------+
| customer_id | plan_id | plan_name       | data_limit | validity   | router_no | data_speed | price    | company |
+-------------+---------+-----------------+------------+------------+-----------+------------+----------+---------+
|         112 | ME500   | Mega 500        | 500        | 2020-12-31 |      1010 |      25.00 |  7000.00 | Jio     |
|         113 | ME500   | Mega 500        | 500        | 2020-12-31 |      5099 |      25.00 |  7000.00 | Jio     |
|         116 | MEUN0   | Mega unlimited  | unlimited  | 2020-12-31 |      4320 |      25.00 |  9000.00 | Jio     |
|         106 | MEUN0   | Mega unlimited  | unlimited  | 2020-12-31 |      6500 |      25.00 |  9000.00 | Jio     |
|         105 | MEUN0   | Mega unlimited  | unlimited  | 2020-12-31 |      6511 |      25.00 |  9000.00 | Jio     |
|         101 | SU100   | Super 100       | 100        | 2021-03-31 |      5001 |      50.00 |  7000.00 | Jio     |
|         114 | SU100   | Super 100       | 100        | 2020-12-31 |      8517 |      50.00 |  7000.00 | Jio     |
|         119 | SUUN0   | Super unlimited | unlimited  | 2020-12-31 |      1801 |      50.00 | 11000.00 | Jio     |
|         115 | SUUN0   | Super unlimited | unlimited  | 2020-12-31 |      7918 |      50.00 | 11000.00 | Jio     |
|         118 | BA100   | Basic 100       | 100        | 2021-03-31 |      1033 |      10.00 |  3000.00 | GTPL    |
|         104 | BA500   | Basic 500       | 500        | 2020-12-31 |      5500 |      10.00 |  5000.00 | GTPL    |
|         117 | BAUN0   | Basic unlimited | unlimited  | 2021-03-31 |      3011 |      10.00 |  7000.00 | GTPL    |
|         109 | SU500   | Super 500       | 500        | 2020-12-31 |      6511 |      10.00 |  7000.00 | GTPL    |
|         102 | SUUN0   | Super unlimited | unlimited  | 2021-01-31 |      5511 |      50.00 | 11000.00 | GTPL    |
|         107 | SUUN0   | Super unlimited | unlimited  | 2021-03-31 |      8511 |      10.00 | 11000.00 | GTPL    |
+-------------+---------+-----------------+------------+------------+-----------+------------+----------+---------+
15 rows in set (0.13 sec)