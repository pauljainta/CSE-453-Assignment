CREATE TABLE Public."store_dim"(
	store_key varchar(1000) PRIMARY KEY,
	location varchar(1000),
	city varchar(1000),
	upazila varchar(1000),
	district varchar(1000) );
							
COPY Public."store_dim" FROM 'F:\dw-assgnment-datasets\store_dim.csv' DELIMITER ',' CSV HEADER;
SELECT * from Public."store_dim";