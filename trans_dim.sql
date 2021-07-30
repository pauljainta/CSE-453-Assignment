CREATE TABLE Public."trans_dim"(
	payment_key varchar(1000) PRIMARY KEY,
	trans_type varchar(1000),
	bank_name varchar(1000) );
							
COPY Public."trans_dim" FROM 'F:\dw-assgnment-datasets\trans_dim.csv' DELIMITER ',' CSV HEADER;
SELECT * from Public."trans_dim";