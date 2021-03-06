/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (5) [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[Phone]
      ,[Fax]
  FROM [Northwind].[dbo].[Customers]

  SELECT * FROM CUSTOMERS
  SELECT * FROM CUSTOMERS WHERE ContactTitle='Owner'
  SELECT ContactName, Address, City FROM CUSTOMERS WHERE City='London' OR City='Madrid'
  SELECT ContactName, Address, City FROM CUSTOMERS WHERE ContactTitle='Owner' AND City='Madrid'
  SELECT ContactName, Address, City FROM CUSTOMERS WHERE City IN('London','Madrid','Berlin')

  SELECT ContactName, Address, City FROM CUSTOMERS WHERE City NOT IN('London','Madrid','Berlin') ORDER BY City
  SELECT ContactName, Address, City FROM CUSTOMERS WHERE City IN('London','Madrid','Berlin') ORDER BY City DESC, ContactName
    SELECT count(*), City from Customers GROUP BY City
	SELECT count(*) CountOfCity, City from Customers GROUP BY City
	SELECT max(PostalCode) , City from Customers GROUP BY City
	SELECT count(*) ContactTitle, City from Customers GROUP BY City having count(*)>=2
	SELECT CompanyName,ContactTitle FROM CUSTOMERS where ContactTitle like '%Marketing%'
