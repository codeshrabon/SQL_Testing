-- foreign keys are like a primary key which will be found in another table 

-- creating a table of customer 
create table customers(
	customer_id int primary key auto_increment,
    first_name varchar (50),
    last_name varchar (50)
);

-- insert data into table 
insert into customers(first_name, last_name)
values ("faysal", "ahmed"),
		("shrabon", "ahmed"),
        ("russell", "molla");

insert into customers(first_name, last_name)
values ("kader", "khan");


-- creating a table with foreign key 
create table transactions(
	transactions_id int primary key auto_increment,
    transactions_amount decimal(4,2),
    customer_id int,
    foreign key (customer_id) references customers(customer_id)    
);

-- insert data into transactions
insert into transactions (transactions_amount,customer_id)
values (3.99, 1),
		(2.99, 3),
        (1.99, 2),
        (4.99, 4);

-- drop a foreign key 
alter table transactions
drop foreign key transactions_ibfk_1;

-- rename the foreign key 
alter table transactions
add constraint fk_customer_id
foreign key (customer_id) references customers(customer_id);

-- set auto_increment 
alter table transactions
auto_increment = 1000;

select * from transactions;
select * from customers;
