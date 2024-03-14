\i /docker-entrypoint-initdb.d/create_first_tables.sql

\COPY data_2022_dec FROM '/docker-entrypoint-initdb.d/subject/customer/data_2022_dec.csv' DELIMITER ',' CSV HEADER;
\COPY data_2022_nov FROM '/docker-entrypoint-initdb.d/subject/customer/data_2022_nov.csv' DELIMITER ',' CSV HEADER;
\COPY data_2022_oct FROM '/docker-entrypoint-initdb.d/subject/customer/data_2022_oct.csv' DELIMITER ',' CSV HEADER;
\COPY data_2023_jan FROM '/docker-entrypoint-initdb.d/subject/customer/data_2023_jan.csv' DELIMITER ',' CSV HEADER;


\COPY item FROM '/docker-entrypoint-initdb.d/subject/item/item.csv' DELIMITER ',' CSV HEADER;

\i /docker-entrypoint-initdb.d/create_tables.sql
