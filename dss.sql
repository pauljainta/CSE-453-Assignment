//trans dim

select bank_name, sum(quantity) into trans_dim_dss
from fact_table_trans_dim
group by bank_name; 

COPY trans_dim_dss TO 'F:\dw-assgnment-datasets\trans_dim_dss.csv' DELIMITER ',' CSV HEADER;


//customer_dim


select district, sum(quantity) into customer_dim_dss
from fact_table_customer_dim
group by district;

COPY customer_dim_dss TO 'F:\dw-assgnment-datasets\customer_dim_dss.csv' DELIMITER ',' CSV HEADER;

//item_dim

select supplier, sum(quantity) into item_dim_dss
from fact_table_item_dim
group by supplier;

COPY item_dim_dss TO 'F:\dw-assgnment-datasets\item_dim_dss.csv' DELIMITER ',' CSV HEADER;

//store_dim


select district, quantity into fact_table_store_dim
from fact_table f,store_dim s
where f.store_key=s.store_key;

select district, count(quantity) into store_dim_dss
from fact_table_store_dim
group by district;


COPY store_dim_dss TO 'F:\dw-assgnment-datasets\store_dim_dss.csv' DELIMITER ',' CSV HEADER;


//time dim


select month, quantity into fact_table_time_dim
from fact_table f,time_dim t
where f.time_key=t.time_key;

select month, count(quantity) into time_dim_dss
from fact_table_time_dim
group by month;

COPY time_dim_dss TO 'F:\dw-assgnment-datasets\time_dim_dss.csv' DELIMITER ',' CSV HEADER;
