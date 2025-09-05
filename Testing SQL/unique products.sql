create table products(
product_id int,
product_name varchar(25) unique,
product_price decimal(4,2)
);

-- if you forget to give the unique keyword 
alter table products
add constraint 
unique(product_price);

-- add data to the table 
insert into products
values(100, "hamburger", 3.99),
		(101, "fires", 3.00),
        (102, "soda", 1.99),
        (103, "ice_cream", 2.99);

-- insert same data it will show error cause product name should be unique we required 
insert into products
values(100, "hamburger", 3.99);


-- use of not null constraint 
create table products(
product_id int,
product_name varchar(25),
product_price decimal(4,2) NOT NULL
);

-- after creating a table if we want to add not null constraint to column 
alter table products
modify product_price decimal (4,2) not null;

-- inserting data into table 
insert into products
values(105, "bird fry", null);

-- use check constraint 
create table check_products(
fist_name varchar(50),
last_name varchar(50),
hourly_pay decimal (4,2),
hire_date date,
constraint check(hourly_pay >= 10.00)
);

-- change table name 
rename table check_products to check_employees;

-- add column into table 
alter table check_employees
add employee_id int ; 

-- column positioning 
alter table check_employees
modify column employee_id int
first;

-- if the table is created but did not added constraint 
alter table check_employees
add constraint chk_hourly_pay check(hourly_pay >= 10.00);

-- insert data into check_employees
insert into check_employees
values (1, "sheldon", "Ahmed", 21.50, "2025-04-02"),
		(2, "Shrabon", "Ahmed", 21.50, "2025-04-02"),
		(3, "Russell", "Molla", 19.40, "2025-01-03"),
        (4, "Spongebob", "Squarepants", 10.00, "2025-08-04"),
        (5, "Patric", "Star", 22.50, "2025-07-10");
        
-- check the condition of constraint we give 
insert into check_employees
values (6, "plangton", "Ahmed", 10.00, "2025-04-02");

-- if we want to drop the check constraint 
alter table check_employees
drop check chk_hourly_pay;

select * from check_employees;
select * from products;