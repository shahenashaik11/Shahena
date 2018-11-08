CREATe DATABASE testD;

DROP DATABASE testD;
CREATE TABLE Personsyqwert (
    PersonID bigint,
    LastName nvarchar,
    FirstName nvarchar(255),
    Address varchar(255),
    City varchar(255) 
);
insert into Personsyqwert VALUES('1','Q','A','WW','E');
SELECT * FROM Personsyqwert
drop table Personsyqwert
--armstrong number
declare @num int,@r int,@c int,@sum int
set @sum=0
set @num=153
while @num>0
begin
 set @r=@num%10
 set @c=@r*@r*@r
 set @sum=@sum+@c
 set @num=@num/10
end
if @sum!=@num
print 'it is not arm'
else
print 'it is arm'

--prime number program
declare @count int=0,@i int =1, @a int = 1
while @i!=@a+1
begin
       if @a%@i=0
       begin
              set @count=@count+1;
       end
       set @i=@i+1   
end
if @count=2
begin
       print 'Given number is a prime number'   
end
else
print 'given number is not a prime'

declare @a int,@b int,@c int,@num int
set @a=0
set @b=1
set @num=5
while @num>0
begin
 set @c=@a+@b
 select @c as fibbonaci
 set @b=@c
set @a=@b
end




