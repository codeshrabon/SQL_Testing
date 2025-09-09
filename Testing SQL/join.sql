-- join two tables with foreign key 

-- inserting data into transactions table, that have foreign key of customers 
insert into transactions (transactions_amount, customer_id)
values (1.00, null);

-- adding data to transactions table with initializing  forerign key 
update transactions
set customer_id = 1
where transactions_id = 1004;


delete from transactions
where transactions_id = 1005;

delete from customers 
where customer_id = 5;

-- remove foreign key 
alter table transactions
drop foreign key fk_customer_id;

-- add foreign key 
alter table transactions 
add constraint fk_customer_id
foreign key (customer_id) references customers(customer_id);


-- insert data into cusotmer table 
insert into customers(first_name, last_name)
values ("poppy","puff");

-- using inner join to see relations between transactions and customers table 
select * 
from transactions inner join customers
on transactions.customer_id = customers.customer_id;

-- using left join that will show everything have from the left join
select * 
from transactions left join customers
on transactions.customer_id = customers.customer_id;

-- using right join that will show everything have from the right join
select * 
from transactions right join customers
on transactions.customer_id = customers.customer_id;


select * from transactions;
select * from customers;