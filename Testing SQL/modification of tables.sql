

select * from employees;


-- add new column into table 
alter table employees
add phone_number varchar(15);


-- renaming column 
alter table employees
rename column phone_number to email;

-- modify column datatype
alter table employees
modify column email varchar(100);

-- change column postion 
alter table employees
modify column email varchar(100)
after hourly_pay;

-- drop a column 
alter table employees
drop column phone_number;