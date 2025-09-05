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

select * from products;