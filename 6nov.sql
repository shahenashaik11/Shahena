CREATE PROCEDURE Crater
AS 
BEGIN
CREATE TABLE LECTURER (ID INT PRIMARY KEY, NAME VARCHAR(50),SALARY INT )
END
GO

EXEC Crater
SELECT * FROM LECTURER

CREATE PROCEDURE Inslec (@ID INT,@NAME VARCHAR(50),@SALARY INT)
AS
BEGIN 
INSERT INTO LECTURER VALUES(@ID,@NAME,@SALARY)
END 
GO

EXEC Inslec 1,'aa',1000
EXEC Inslec 2,'bb',2000
EXEC Inslec 3,'cc',3000
EXEC Inslec 4,'dd',4000

CREATE PROCEDURE PEN
AS 
BEGIN
SELECT * FROM LECTURER
END 
GO
EXEC PEN


ALTER PROCEDURE PEN
AS
SELECT ID,NAME FROM LECTURER

EXEC PEN

declare @i int,@j int
set @i=10
set @j=20
if @i<@j
print 'i is less than j'
else if @i>@j
print 'i is greater than j'
else
print 'i is equal to j'

declare @i int =20

if @i<15
print 'small number'
else
print 'large number'

DECLARE @i INT
SET @i = 1
WHILE (@i <=5)
BEGIN
PRINT @i
SET @i = @i + 1
END
GO
ALTER TABLE LECTURER ADD SUB VARCHAR(10)
SELECT * FROM LECTURER
UPDATE LECTURER  SET SUB='drawing' WHERE ID = 2
create table faculty(Id int Primary key identity(1, 2), Name nvarchar(50))

create procedure infaculty @name nvarchar(50) as 
begin
	insert into faculty values (@name)
	select SCOPE_IDENTITY()
end
GO
select * from faculty
exec infaculty 'shonu'
exec infaculty 'neha'
exec infaculty 'heena'
exec infaculty 'shanthi'


