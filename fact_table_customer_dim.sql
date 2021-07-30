select name,district,quantity into fact_table_customer_dim
from fact_table f,customer_dim c
where f.coustomer_key=c.coustomer_key;


select name, sum(quantity)
from fact_table_customer_dim
group by name;

select district, sum(quantity)
from fact_table_customer_dim
group by district;

select name,district, sum(quantity)
from fact_table_customer_dim
where name="sumit"
group by name,district;






select *  from fact_table_customer_dim;




