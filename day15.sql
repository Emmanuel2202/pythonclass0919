use accesswayprimebank;
select * from employeedata where JobLevel = 4 and JobRole ='Manager';
select * from employeedata where JobLevel =1 or JobRole ='Manager';
select * from employeedata where (JobLevel = 4 and JobRole ='Manager') or (Department = 'Sales');
select * from employeedata where Department like 'Re%';
select * from employeedata where Department like '%Re';
select * from employeedata where Department like '__s%';
select * from employeedata where JobRole like '_______';
select * from employeedata where JobRole  not like '_______';
select * from employeedata where JobSatisfaction in(1,3,5);
select * from employeedata where JobLevel <> 5;
select * from employeedata where JobLevel != 5;
select * from Employeedata where Department is null;
select * from Employeedata where Department is not null;


select concat(Department,' ',JobLevel),avg(MonthlyIncome + JobSatisfaction) from employeedata;