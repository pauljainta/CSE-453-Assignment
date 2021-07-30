CREATE TABLE Public."fact_table"(
	payment_key varchar(1000),
	coustomer_key varchar(1000) ,
	time_key varchar(1000) ,
	item_key varchar(1000),
	store_key varchar(1000),
	quantity int,
	unit varchar(1000),
	unit_price NUMERIC(30) ,
	total_price NUMERIC(30),
	PRIMARY KEY (payment_key,coustomer_key,time_key,item_key,store_key));
							
COPY Public."fact_table" FROM 'F:\dw-assgnment-datasets\fact_table.csv' DELIMITER ',' CSV HEADER;
SELECT * from Public."fact_table";