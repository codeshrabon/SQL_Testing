-- primary key are unique and not null
create table transactions(
	transactions_id int primary key,
    transactions_amount decimal(4,2)
);

-- if you have existing table not the primary key 
alter table transactions
add constraint 
primary key (transactions_id);

-- insert data into transactions table 
insert into transactions
values (102, 2.00);


-- using auto_increment for primary key 
create table transactions(
	transactions_id int primary key auto_increment,
    transactions_amount decimal(4,2)
);
-- inserting data 
insert into transactions(transactions_amount)
values (3.09), (2.99), (4.90);

-- use default constraint to set primary key auto_increment start from different values 
alter table transactions
auto_increment = 1000;


-- add auto_increment attribute in existing table 
alter table transactions
modify transactions_id int not null auto_increment;


-- finding specific id 
select transactions_amount
from transactions
where transactions_id > 100;

delete from transactions;
drop table transactions;
select * from transactions;