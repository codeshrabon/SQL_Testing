-- join two tables with foreign key 

-- inserting data into transactions table, that have foreign key of customers 
insert into transactions (transactions_amount, customer_id)
values (1.00, null);

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