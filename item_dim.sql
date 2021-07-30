CREATE TABLE Public."item_dim"(
	item_key varchar(1000) PRIMARY KEY,
	item_name varchar(1000),
	description varchar(1000),
	unit_price NUMERIC(30),
	man_country varchar(1000),
	supplier varchar(1000),
	stock_quantity varchar(1000),
	unit varchar(1000) );
							
COPY Public."item_dim" FROM 'F:\dw-assgnment-datasets\item_dim.csv' DELIMITER ',' CSV HEADER;
SELECT * from Public."item_dim";