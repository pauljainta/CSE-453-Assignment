select bank_name,trans_type,quantity into fact_table_trans_dim
from fact_table f,trans_dim t
where f.payment_key=t.payment_key;


select bank_name, sum(quantity)
from fact_table_trans_dim
group by bank_name;

select trans_type, sum(quantity)
from fact_table_trans_dim
group by trans_type;

select bank_name,trans_type, sum(quantity)
from fact_table_trans_dim
group by bank_name,trans_type;






select *  from fact_table_trans_dim;

select sum(quantity) from fact_table_trans_dim