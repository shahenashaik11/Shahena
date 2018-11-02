--(INSERTING VALUES IN TABLE STATE:-)

insert into State VALUES(1,'JAIPUR')
insert into State VALUES(2,'KARNATAKA')
insert into State VALUES(3,'GUJARAT')
insert into State VALUES(4,'DELHI')




insert into Contact values(1,'shahena',2)
insert into Contact values(2,'sonam',3)
insert into Contact values(3,'deepa',4)
insert into Contact values(4,'Shonu',5)



SELECT * FROM State St
JOIN Contact Cnt ON
Cnt.StateId=St.Id
--(Performing JOIN operation on both the table)


SELECT St.State,Cnt.Name FROM State St
JOIN Contact Cnt ON
Cnt.StateId=St.Id
(--ONE is to MANY relationship)

SELECT * FROM Relation

INSERT INTO Relation VALUES(1,'zz')
INSERT INTO Relation VALUES(2,'yy')
INSERT INTO Relation VALUES(3,'qq')
INSERT INTO Relation VALUES(4,'ee')

SELECT * FROM ContactRelation


SELECT Cnt.Name, Relation.Name
FROM Contact Cnt JOIN ContactRelation CntRel
ON Cnt.Id=CntRel.ContactId 
JOIN Relation 
ON CntRel.RelationId=Relation.ReId
(--MANY TO MANY RELATION)



SELECT * FROM ContactAuthenticatDetail
INSERT INTO ContactAuthenticatDetail VALUES(1,'A@GMAIL.COM',10)
INSERT INTO ContactAuthenticatDetail VALUES(2,'B@GMAIL.COM',20)
INSERT INTO ContactAuthenticatDetail VALUES(3,'C@GMAIL.COM',30)
INSERT INTO ContactAuthenticatDetail VALUES(4,'D@GMAIL.COM',40)


SELECT Email, Name FROM Contact CNT JOIN ContactAuthenticatDetail CAD
ON CNT.Id=CAD.Id
(--ONE IS TO ONE RELATION)







