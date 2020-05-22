CREATE TABLE tbsessions(
    id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name text NOT NULL CHECK (name <> ''),
    cardset text NOT NULL,
    isprivate boolean,
    password text,
    lastaction timestamp NOT NULL
);

CREATE TABLE tbmembers(
    id text PRIMARY KEY,
    idsession integer REFERENCES tbsessions(id),
    name text NOT NULL
);

CREATE TABLE tbpolls(
    id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    idsession integer REFERENCES tbsessions(id),
    topic text,
    starttime timestamp NOT NULL,
    endtime timestamp,
    result float8,
    consensus boolean
);

CREATE TABLE tbvotes(
    id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    idmember text REFERENCES tbmembers(id),
    value integer NOT NULL
);

CREATE TABLE tbcardsets(
    id integer PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name text NOT NULL,
    ordercard integer NOT NULL,
    value text NOT NULL
);

--Standard fibonaci like series of values
insert into tbcardsets (name, ordercard, value) values ('StandardFibonaci',1,'1');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonaci',2,'2');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonaci',3,'3');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonaci',4,'5');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonaci',5,'8');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonaci',6,'13');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonaci',7,'20');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonaci',8,'40');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonaci',9,'100');
--Special card set with '?' for unclear stories
insert into tbcardsets (name, ordercard, value) values ('SpecialCard',1,'1');
insert into tbcardsets (name, ordercard, value) values ('SpecialCard',2,'2');
insert into tbcardsets (name, ordercard, value) values ('SpecialCard',3,'3');
insert into tbcardsets (name, ordercard, value) values ('SpecialCard',4,'5');
insert into tbcardsets (name, ordercard, value) values ('SpecialCard',5,'8');
insert into tbcardsets (name, ordercard, value) values ('SpecialCard',6,'13');
insert into tbcardsets (name, ordercard, value) values ('SpecialCard',7,'20');
insert into tbcardsets (name, ordercard, value) values ('SpecialCard',8,'40');
insert into tbcardsets (name, ordercard, value) values ('SpecialCard',9,'?');
--Powers of two used by other teams
insert into tbcardsets (name, ordercard, value) values ('PowersOftwo',1,'0');
insert into tbcardsets (name, ordercard, value) values ('PowersOftwo',2,'1');
insert into tbcardsets (name, ordercard, value) values ('PowersOftwo',3,'2');
insert into tbcardsets (name, ordercard, value) values ('PowersOftwo',4,'4');
insert into tbcardsets (name, ordercard, value) values ('PowersOftwo',5,'8');
insert into tbcardsets (name, ordercard, value) values ('PowersOftwo',6,'16');
insert into tbcardsets (name, ordercard, value) values ('PowersOftwo',7,'32');
insert into tbcardsets (name, ordercard, value) values ('PowersOftwo',8,'64');
--Card set used to estimate hours as different fractions and multiples of a working day
insert into tbcardsets (name, ordercard, value) values ('CardEstimateHours',1,'1');
insert into tbcardsets (name, ordercard, value) values ('CardEstimateHours',2,'2');
insert into tbcardsets (name, ordercard, value) values ('CardEstimateHours',3,'4');
insert into tbcardsets (name, ordercard, value) values ('CardEstimateHours',4,'8');
insert into tbcardsets (name, ordercard, value) values ('CardEstimateHours',5,'12');
insert into tbcardsets (name, ordercard, value) values ('CardEstimateHours',6,'16');
insert into tbcardsets (name, ordercard, value) values ('CardEstimateHours',7,'24');
insert into tbcardsets (name, ordercard, value) values ('CardEstimateHours',8,'32');
insert into tbcardsets (name, ordercard, value) values ('CardEstimateHours',9,'40');
--Demonstration of the coffee cup card
insert into tbcardsets (name, ordercard, value) values ('CardCoffee',1,'&#9749;');
insert into tbcardsets (name, ordercard, value) values ('CardCoffee',2,'1');
insert into tbcardsets (name, ordercard, value) values ('CardCoffee',3,'2');
insert into tbcardsets (name, ordercard, value) values ('CardCoffee',4,'3');
insert into tbcardsets (name, ordercard, value) values ('CardCoffee',5,'5');
insert into tbcardsets (name, ordercard, value) values ('CardCoffee',6,'8');
insert into tbcardsets (name, ordercard, value) values ('CardCoffee',7,'13');
insert into tbcardsets (name, ordercard, value) values ('CardCoffee',8,'20');
insert into tbcardsets (name, ordercard, value) values ('CardCoffee',9,'?');
--T-shirt Size
insert into tbcardsets (name, ordercard, value) values ('T-shirtSize',1,'XXS');
insert into tbcardsets (name, ordercard, value) values ('T-shirtSize',2,'XS');
insert into tbcardsets (name, ordercard, value) values ('T-shirtSize',3,'S');
insert into tbcardsets (name, ordercard, value) values ('T-shirtSize',4,'M');
insert into tbcardsets (name, ordercard, value) values ('T-shirtSize',5,'L');
insert into tbcardsets (name, ordercard, value) values ('T-shirtSize',6,'XL');
insert into tbcardsets (name, ordercard, value) values ('T-shirtSize',7,'XXL');
insert into tbcardsets (name, ordercard, value) values ('T-shirtSize',8,'?');
--Fibonacci number
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',1,'1');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',2,'2');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',3,'3');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',4,'5');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',5,'8');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',6,'13');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',7,'21');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',8,'34');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',9,'55');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',10,'89');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',11,'144');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',12,'&#9749;');
insert into tbcardsets (name, ordercard, value) values ('FibonacciNumber',13,'?');
--Fibonaci series including 0.5
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',1,'0.5');
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',2,'1');
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',3,'2');
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',4,'3');
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',5,'5');
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',6,'8');
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',7,'13');
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',8,'20');
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',9,'40');
insert into tbcardsets (name, ordercard, value) values ('FibonaciSeries',10,'100');
--Canadian Cash format
insert into tbcardsets (name, ordercard, value) values ('CanadianCash',1,'1');
insert into tbcardsets (name, ordercard, value) values ('CanadianCash',2,'2');
insert into tbcardsets (name, ordercard, value) values ('CanadianCash',3,'5');
insert into tbcardsets (name, ordercard, value) values ('CanadianCash',4,'10');
insert into tbcardsets (name, ordercard, value) values ('CanadianCash',5,'20');
insert into tbcardsets (name, ordercard, value) values ('CanadianCash',6,'50');
insert into tbcardsets (name, ordercard, value) values ('CanadianCash',7,'100');
--Standard fibonacci with shrug
insert into tbcardsets (name, ordercard, value) values ('StandardFibonacciShrug',1,'1');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonacciShrug',2,'2');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonacciShrug',3,'3');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonacciShrug',4,'5');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonacciShrug',5,'8');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonacciShrug',6,'13');
insert into tbcardsets (name, ordercard, value) values ('StandardFibonacciShrug',7,'&#F937;');

