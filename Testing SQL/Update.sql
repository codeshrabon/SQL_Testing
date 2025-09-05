-- update row data can be single or multiple 
update employees
set hourly_pay = 10.20, hire_date = null
where employee_id = 6 ;

-- delete row from the table 
delete from employees
where employee_id = 6;

--  use of auto commit 
set autocommit = off;

-- commit to save the change manually 
commit;

-- after commiting if we delete the whole data from table 
-- it wont effect them 
delete from employees;

-- if we commit then using rollback will get us to the previous section 
rollback;

select * from employees;