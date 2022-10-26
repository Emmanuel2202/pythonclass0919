use accesswayprimebank;
select * from employeedata;
select sum(monthlyincome) as 'TotalMonthlyIncome' from employeedata;
select JobRole,sum(MonthlyIncome) as result from employeedata group by JobRole;
select sum(MonthlyIncome) as result from employeedata where JobLevel = 2;

select max(monthlyincome) as 'MaxMonthlyIncome' from employeedata;
select JobRole,max(MonthlyIncome) as result from employeedata group by JobRole;
select max(MonthlyIncome) as result from employeedata where JobLevel = 2;

select min(monthlyincome) as 'MinMonthlyIncome' from employeedata;
select JobRole,min(MonthlyIncome) as result from employeedata group by JobRole;
select min(MonthlyIncome) as result from employeedata where JobLevel = 2;

select avg(monthlyincome) as 'AVERAGEMonthlyIncome' from employeedata;
select JobRole,avg(MonthlyIncome) as result from employeedata group by JobRole;
select avg(MonthlyIncome) as result from employeedata where JobLevel = 2;

select count(JobRole) as result from employeedata;
select count(distinct JobRole) from employeedata;
select JobRole, count(JobRole) from employeedata group by JobRole;


select * from employeedata limit 1;
select * from employeedata limit 5;

select * from employeedata  order by age  desc limit 1;
select * from employeedata  order by age  desc limit 10;

select Joblevel,count(distinct JobLevel) from employeedata group by JobLevel;

create table Level1 select * from employeedata where JobLevel =1;
create table Level2 select * from employeedata where JobLevel =2;
create table Level3 select * from employeedata where JobLevel =3;
create table Level4 select * from employeedata where JobLevel =4;
create table Level5 select * from employeedata where JobLevel =5;

alter table level1 add column level1ID int primary key not null auto_increment first;
alter table level2 add column level2ID int primary key not null auto_increment first;
alter table level3 add column level3ID int primary key not null auto_increment first;
alter table level4 add column level4ID int primary key not null auto_increment first;
alter table level5 add column level5ID int primary key not null auto_increment first;

select level1.Age,level1.Department,level2.JobRole,level2.MonthlyIncome 
from level1 inner join level2 on level1.level1ID = level2.level2ID;

select level1.Age,level1.Department,level2.JobRole,level2.MonthlyIncome 
from level1 right join level2 on level1.level1ID = level2.level2ID;

select level1.Age,level1.Department,level2.JobRole,level2.MonthlyIncome 
from level1 left join level2 on level1.level1ID = level2.level2ID;


#1 Write a query to list the number of jobs available in the employees table
#2 Write a query to get the total monthly income payable to employees
#3.Write a query to get the minimum monthly income from employees table
#4.Write a query to get the maximum monthly income of an employee working as a Research Scientist
#5.Write a query to get the average monthly income and number of employees working as a Laboratory Technician
#6 Write a query to get the number of employees with the same job
#7.Write a query to get the difference between the highest and lowest  monthly income
#8.Write a query to display the department and salary for all employees whose monthly income is not in the range 5000 through 7500
#9.Write a query to display the departmentand job of employees whose jobname have exactly 7 characters
#10 Write a query to display the job of employees having 's' as the third character. 

select distinct JobRole from employeedata;
select sum(MonthlyIncome) as result from employeedata;
select min(MonthlyIncome) as result from employeedata;
select max(MonthlyIncome) as result from employeedata where JobRole = 'Research Scientist';
select avg(Monthlyincome), count(JobRole) from employeedata where JobRole ='Laboratory Technician';
select JobRole, count(JobRole) from employeedata group by JobRole;
select max(MonthlyIncome) -  min(MonthlyIncome) from employeedata;
select Department,MonthlyIncome from employeedata where Monthlyincome not between 5000 and 7000;
select Department,JobRole from employeedata where JobRole like '_______';
select Department,JobRole from employeedata where JobRole like '__s%';
