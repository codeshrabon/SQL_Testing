-- insert data into table 
insert into employees
values (2, "Shrabon", "Ahmed", 21.50, "2025-04-02"),
		(3, "Russell", "Molla", 19.40, "2025-01-03"),
        (4, "Spongebob", "Squarepants", 10.00, "2025-08-04"),
        (5, "Patric", "Star", 22.50, "2025-07-10");
        
-- insert data into table with specific column 
-- by mentioning their name into table_name parameter 
insert into employees(employee_id, first_name, last_name)
values (6, "Sheldon", "cupper");


select * from employees;

