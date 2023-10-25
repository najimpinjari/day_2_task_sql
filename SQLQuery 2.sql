create database newpractice
go

-- Creating the first table named 'Departments'
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Inserting values into the 'Departments' table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'Human Resources'),
       (2, 'Finance'),
       (3, 'Marketing'),
       (4, 'Operations');

-- Creating the second table named 'Employees' with a foreign key relationship to the 'Departments' table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Inserting values into the 'Employees' table
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES (1, 'John', 'Doe', 1, 50000),
       (2, 'Jane', 'Smith', 2, 60000),
       (3, 'Michael', 'Johnson', 3, 55000),
       (4, 'Sarah', 'Williams', 1, 52000);


	   select * from Employees
	   select * from Departments

	--Retrieve the names of all employees along with their corresponding department names.

select Employee.name, Departments.DepartmentName 
from Employee
join Departments
on Employee.Did = Departments.DepartmentID
group by Employee.name, Departments.DepartmentName


--Retrieve the department names and the number of employees in each department,
--along with the average salary for each department
	
	select d.DepartmentName , count(e.EmployeeID) as employee_count,
			avg (e.Salary) as avrege_salary 
		from Employees e
		left join Departments d
		on e.DepartmentID = d.DepartmentID
		group by d.DepartmentName 

