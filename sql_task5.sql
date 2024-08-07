create table project(
    Project_id int primary key,
	Project_Name varchar(250),
	Task_Name varchar,
	Assigned_to varchar,
	Start_Date varchar,
	Days_Required varchar,
	End_Date varchar,
	Progress int
)
select * from project
insert into project values(1,'Marketing','Market Research','Alice','01-01-2024',13,'14-01-2024',78)
select * from project

select * from project
copy project from 'C:\Users\NUTAN\Downloads\check.csv'delimiter ','  csv header
copy project from 'C:\Users\NUTAN\Downloads\project_task5.csv'delimiter ','  csv header
select * from project

--Query1 to Sort avg progress  by project where progress is greater than 20 
select * from project
	
select project_id, avg(progress) as avg_progress
from project
where progress > 20
group by project_id
having progress > 30;


--Query2 For maximum progress by project where progress is greater than 2 
select * from project
	
select project_id, max(progress) as max_progress
from project
where progress > 2
group by project_id
having max(progress) > 1;

--Query3 for number of project by project_name where the number of project is more than 5
select * from project
	
select project_name, count(project_id) as project_count
from project
group by project_name
having count(project_id) > 5;


--Query4 For Number of project by start_date where number of project_id is greater than 10
select * from project
	
select start_date, count(project_id) as project_count
from project
group by start_date
having count(project_id) > 10

--Query5 For progress id greater than 15 group by task_name and progress
select * from project
	
select task_name, progress
from project
where progress > 15
group by task_name,progress
having progress > 20


--Query6 For Number of project by end_date where number of project_id is greater than 5
select * from project
	
select end_date, count(project_id) as project_count
from project
group by end_date
having count(project_id) > 5

--Query7 to Sort sum progress  by project where progress is greater than 10
select * from project
	
select project_id, sum(progress) as avg_progress
from project
where progress > 10
group by project_id
having progress > 20;

--Query8 For minimum progress by project where progress is greater than 7 
select * from project
	
select project_id, min(progress) as min_progress
from project
where progress > 7
group by project_id
having min(progress) > 1;





