CREATE TABLE Public."customer_dim"(
	coustomer_key varchar(1000) PRIMARY KEY,
	name varchar(1000),
	contact_no varchar(1000),
	nid varchar(1000),
	address varchar(1000),
	street varchar(1000),
	upazila varchar(1000),
	district varchar(1000) ,
	division varchar(1000) );
							
COPY Public."customer_dim" FROM 'F:\dw-assgnment-datasets\customer_dim.csv' DELIMITER ',' CSV HEADER;
SELECT * from Public."customer_dim";