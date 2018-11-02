insert into states  values('telangana')
insert into states values('andhra')
insert into states values('MP')
select * from states
select * from contacts
insert into contacts values('deepika',4)
select * from contacts  cnt join states on cnt.stateid=states.id
insert into contactauthentication values(4,'d@gmail')
select * from contactauthentication cat join contacts  cnt on cnt.id=cat.id
insert into relations values(4,'bb')
select * from relations
insert into contactrelation values(4)
select * from contactrelation
select cnt.id, cnt.cname,rel.relname from contacts cnt join contactrelation cntrel on cnt.id=cntrel.id join relations rel on cntrel.crid=rel.


