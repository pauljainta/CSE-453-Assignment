select item_name,supplier,quantity into fact_table_item_dim
from fact_table f,item_dim i
where f.item_key=i.item_key;


select supplier, sum(quantity)
from fact_table_item_dim
group by supplier;

select item_name, sum(quantity)
from fact_table_item_dim
group by item_name;

select item_name,supplier, sum(quantity)
from fact_table_item_dim
group by item_name,supplier;






select *  from fact_table_item_dim;

select sum(quantity) from fact_table_item_dim