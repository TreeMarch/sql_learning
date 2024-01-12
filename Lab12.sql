CREATE DATABASE MSSQL_Lab12
GO
CREATE TABLE Employee(
	EmployeeID INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) ,
	Tel CHAR(11),
	Email VARCHAR(30)
);
CREATE TABLE Project(
	ProjectID INT PRIMARY KEY,
	ProjectName VARCHAR(30) ,
	StartDate DATETIME,
	EndDate DATETIME,
	Period INT,
	Cost MONEY 
);

CREATE TABLE Groups(
	GroupID INT PRIMARY KEY ,
	GroupName VARCHAR(30),
	LeaderID INT ,
	ProjectID INT FOREIGN KEY REFERENCES Project(ProjectID)
);
CREATE TABLE GroupDetail(
	GroupID INT FOREIGN KEY REFERENCES Groups(GroupID),
	EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID),
	Status CHAR(20)

);
-------------------------
--1
--2 : Them Du Lieu
INSERT INTO Employee(Name,Tel,Email) VALUES('D.H.Thang','9607846570','taylorfan@gmail.com');
INSERT INTO Employee(Name,Tel,Email) VALUES('N.V.Toan','869746523','remindfan@gmail.com');
INSERT INTO Employee(Name,Tel,Email) VALUES('Tr.T.Ling','343558931','psyduckfan@gmail.com');
INSERT INTO Employee(Name,Tel,Email) VALUES('N.L.Tu','001956789','rickandroll@gmail.com');
INSERT INTO Employee(Name,Tel,Email) VALUES('Tr.Q.Viet','576889943','jvevermind@gmail.com');
INSERT INTO Employee(Name,Tel,Email) VALUES('M.N.Hai','970890065','nguoimin@gmail.com');

INSERT INTO Project(ProjectID,ProjectName,StartDate,EndDate,Period,Cost) 
VALUES (1,'Chinh Phu Dien Tu','2024-1-10','2024-8-10',7,5000000);
INSERT INTO Project(ProjectID,ProjectName,StartDate,EndDate,Period,Cost) 
VALUES (2,'Chinh Phu Thong Tin','2024-2-10','2024-9-10',7,6000000);

INSERT INTO Groups(GroupID,GroupName,LeaderID,ProjectID) VALUES(01,'Owl-White',1,1);
INSERT INTO Groups(GroupID,GroupName,LeaderID,ProjectID) VALUES(02,'Owl-Black',6,2);

INSERT INTO GroupDetail(GroupID,EmployeeID,Status) VALUES(01,1,'hoan thanh');
INSERT INTO GroupDetail(GroupID,EmployeeID,Status) VALUES(01,2,'hoan thanh');
INSERT INTO GroupDetail(GroupID,EmployeeID,Status) VALUES(01,3,'hoan thanh');
------
INSERT INTO GroupDetail(GroupID,EmployeeID,Status) VALUES(02,4,'dang lam');
INSERT INTO GroupDetail(GroupID,EmployeeID,Status) VALUES(02,5,'dang lam');
INSERT INTO GroupDetail(GroupID,EmployeeID,Status) VALUES(02,6,'dang lam');

-------------------------
--3: Truy Van Du Lieu
--A
SELECT * FROM Employee;
--B
SELECT EmployeeID FROM GroupDetail 
WHERE GroupDetail.GroupID = 01;

--C
SELECT COUNT(EmployeeID),SUM(GroupDetail.EmployeeID) AS 'so nhan vien dang lam du an'
FROM [GroupDetail]
WHERE Status = 'dang lam'
GROUP BY EmployeeID;
--D 
SELECT Employee.EmployeeID, Employee.Name, Employee.Email, Employee.Tel,Groups.LeaderID
FROM Employee
INNER JOIN Groups ON Groups.LeaderID = Employee.EmployeeID ;




