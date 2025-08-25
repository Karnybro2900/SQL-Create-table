create table if not exists customer
(
cid char(5)not null primary key,
cname varchar(20),
age int(2),
gen char(1),
bamt int(5),
loc varchar(15),
Ino char(3),
sid char(3)
);
insert into customer VALUES
('c0001','Anu',28,'F',32000,'Australia','I02','S02'),
('c0002','Mandeep',31,'M',34000,'India','I01','S03'),
('c0003','Gaurav',37,'M',43000,'India','I04','S05'),
('c0004','Mary',26,'F',35000,'Canada','I02','S05'),
('c0005','Bill',32,'M',38000,'Australia','I01','S04'),
('c0006','Hardik',34,'M',48000,'India','I03','S06'),
('c0007','Evan',30,'M',31000,'United States','I05','S06'),
('c0008','Joshua',25,'M',39000,'United States','I02','S04'),
('c0009','Julia',39,'F',44000,'Australia','I03','S07'),
('c0010','Vikram',36,'M',31000,'India','I04','S05'),
('c0011','Henry',38,'M',45000,'United Kingdom','I06','S08'),
('c0012','Luke',37,'M',47000,'United States','I03','S05'),
('c0013','Avinash',34,'M',42000,'India','I06','S08'),
('c0014','Isabella',24,'F',33000,'United Kingdom','I07','S07'),
('c0015','Ashwin',26,'M',37000,'India','I03','S07'),
('c0016','Abhimanyu',24,'M',39000,'India','I08','S09');

--1.to display all records of table customer
select * from customer;

--2.display name and age of customers
select cname,age from customer;

--3.display name of female customers
Select *
from customer
where gen='F';


create table if not EXISTS item
(
Ino char(3) not null primary key,
Iname varchar(15),
cost int(3),
company varchar(10)
);
insert into item VALUES
('I01','Refridgerator',30000,'ABC'),
('I02','Television',45000,'DEF'),
('I03','Scooter',42000,'ABC'),
('I04','Car',125000,'ABC'),
('I05','AC',20000,'DEF');


create table if not EXISTS salesman
(
SId char(3) not null primary key,
Sname varchar(20),
Sage int(2),
Sgen char(1),
sal int(5),
Sloc varchar(10),
Exp int(2)
);
insert into salesman VALUES
('S01','Vikram',30,'M',12000,'India',3),
('S02','Avinash',28,'M',10000,'Nepal',2),
('S03','Sophia',31,'M',11000,'United Kingdom',5),
('S04','Julian',34,'M',18000,'Poland',NULL),
('S05','Zoey',29,'F',13000,'United States',2),
('S06','Mary',32,'F',14000,'Morocco',4);
select * from customer;
select * from salesman;
select * from Item;

--4. Display the name of customers whose age is less than 30
Select cname from customer
where age<30;

--5. display names of customers from Australia or Canada
Select cname,age from customer
where loc='Australia' or loc='Canada';

Select cname,age from customer
where loc in('Australia','Canada');

--6. display names of female customers whose bill amount is less than 40000
select cname from customer
where gen='F' and bamt<40000;

--7. display names of customers hose age is between  30 and 40 and bamt is not less than 40000
select cname from customer
where age between 30 and 40
and not bamt<40000;
select * from customer;

--8. display names of customers whose names start with c
select cname from customer
where cname like 'c%';

--9. display names of customers whose names end with u
select cname from customer
where cname like '%u';

--10. display names of customers whose names are 4 characters long
select cname from customer
where cname like '____';

--11. display non repeated values
select DISTINCT(loc) from customer;
select DISTINCT(company) from item;

--12. display all values
select loc from customer;
select company from item;
select ALL(loc) from customer;
select ALL(company) from item;

--13. display total bill amount of all customers
select sum(bamt) from customer;

--14. display average bill amount of all customers
select avg(bamt) from customer;

--15. display minimum cost of item
select min(cost),Iname from item;

--16. display maximum cost of item
select max(cost),Iname from item;

--17. display total number of items
select count(*) from item;

--18. display the total number of items whose cost is more than 40000
select count(*) from item
where cost>40000;
--19. display the minimum and maximum age of the female customers
select max(age),min(age) from customer
where gen='F';

--20. display the average bill amount of the customers from Canada or Australia
select avg(bamt) from customer
where loc in('Australia','Canada');
