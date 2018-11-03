select * from contacts
insert into contacts values(1,'a',1)
insert into contacts values(2,'b',8)
insert into contacts(id,name) values(4,'d')
select * from states
insert into states values(1,'s')
insert into states values(2,'h')
insert into states values(3,'o')
--left outer join
select * from contacts left outer join  states on contacts.sid=states.id
select * from contacts left join  states on contacts.sid=states.id
select contacts.name,states.id from contacts left join  states on contacts.sid=states.id
select contacts.name,states.id from contacts left join  states on contacts.sid=states.id and contacts.name=states.name
select contacts.name,states.id from contacts left join  states on contacts.sid=states.id or contacts.name!=states.name
select contacts.name,states.id from contacts left join  states on contacts.sid=states.id or contacts.name!=states.name
select contacts.name,states.id,states.name from contacts left join  states on contacts.sid=states.id or contacts.name!=states.name
--right join
select * from contacts right join  states on contacts.sid=states.id
select contacts.name,states.id from contacts right join  states on contacts.sid=states.id or contacts.name!=states.name
--full outer join
select * from contacts full outer join  states on contacts.sid=states.id
--self join
select * from contacts,states where contacts.id > states.id
select * from contacts,states where contacts.id < states.id
--crossjoin
select * from contacts cross join states
select contacts.name from contacts cross join states
--using primary key and check
create table test(id bigint primary key ,name nvarchar(10) unique not null,age bigint,check(age>18))
insert into test values(1,'a',11)
insert into test values(3,'shonu',22)
--using default
create table example2(id bigint primary key ,name nvarchar(10) ,age bigint default'18')
insert into example2(id,name) values(1,'ss')
--is not null
select * from example2 where example2.name is not null
--update
update example2 set id=100,name='for' where example2.id=1
select * from example2
--string functions
--finding the ascii value
select ascii(name) from contacts
select ascii('a') 
--converting into lower case
select lower('AS')
--extracting substring
select SUBSTRING('helloworld',1,5)
select SUBSTRING(contacts.name,1,3) from contacts
select SUBSTRING('helloworld',2,5)
--combining 2 strings 
SELECT CONCAT('hi', 'everyone')
--replace characters in the string
SELECT REPLACE('wow', 'w', 'M');
--numeric functions
--finding the avg of column
SELECT AVG(id) AS Average FROM contacts
--finding the count of ids
SELECT COUNT(id) AS Number FROM states
--finding the maximum number in column
SELECT MAX(id)  FROM test
--finding the minimum number in column
SELECT MIN(id)  FROM test
--finding the sign of the number whether it is negative or postive
SELECT SIGN(872.3)
SELECT SIGN(-4)
SELECT SIGN(0)
--finding the squareroot of the number
SELECT SQRT(64)
--date functions
--to display the current date and time
select CURRENT_TIMESTAMP as dateandtime
--increasing the date by adding number of years
SELECT DATEADD(year, 2, '2018/10/11') AS DateAdd
--returns difference between 2 dates
SELECT DATEDIFF(year, '2018/10/11', '2010/11/10') AS DateDiff
--returns a speciefied part of the date as string
SELECT DATENAME(DAYOFYEAR, '2019/11/11') AS DatePartString
--returns specified date of the system
select GETDATE()
--returns current UTC date and time
select GETUTCDATE()
--returns month of the given date
SELECT Month('2017/08/10') AS Month
declare @i int
SET @i =731
SELECT 
[YEARS]  = @i / 365,
[MONTHS] = (@i % 365) / 30,
[DAYS]   = (@i % 365) % 30
