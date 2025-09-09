-- we can set limit the data by using the function limit 
-- limit 10 will show first 10 data 
-- here is another catch offset (limit 10 offset 5) one way 
-- this mean my data will skip the first 5 data then show next 10  data 
-- we can use offset as like (limit 5, 10); another way 

-- showing limit 5 data 
select * from products
limit 5;

-- using offset 
select * from products
limit 3,5;

-- there is another way of using offset 
select * from products
limit 5 offset 3;

-- using order by then limit 
select * from products
order by product_name limit 3,5;

select * from products;