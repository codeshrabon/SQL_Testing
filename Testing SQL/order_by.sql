
select * from customers
inner join transactions
where customers.customer_id = transactions.customer_id
order by transactions.transactions_amount desc
;

update transactions
set transactions_amount = 2.99
where transactions_id = 1004;

select * from transactions
order by transactions_amount, transactions_id;

select * from customers;
select * from transactions;