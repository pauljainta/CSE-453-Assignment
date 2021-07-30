CREATE TABLE Public."time_dim"(
	time_key varchar(1000) PRIMARY KEY,
	date varchar(1000),
	hour varchar(1000),
	day varchar(1000),
	week varchar(1000),
	month varchar(1000),
	quarter varchar(1000),
	year varchar(1000) );
							
COPY Public."time_dim" FROM 'F:\dw-assgnment-datasets\time_dim.csv' DELIMITER ',' CSV HEADER;
SELECT * from Public."time_dim";