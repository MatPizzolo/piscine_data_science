
DROP TABLE IF EXISTS combined_data;

CREATE TABLE IF NOT EXISTS combined_data AS
SELECT * FROM data_2022_nov
UNION ALL
SELECT * FROM data_2022_oct
UNION ALL
SELECT * FROM data_2022_dec
UNION ALL
SELECT * FROM data_2023_jan
ORDER BY event_type;



DROP TABLE IF EXISTS remove_duplicates;

CREATE TABLE IF NOT EXISTS remove_duplicates AS
SELECT * FROM data_2022_nov
UNION 
SELECT * FROM data_2022_oct
UNION 
SELECT * FROM data_2022_dec
UNION 
SELECT * FROM data_2023_jan
ORDER BY event_type;



DROP TABLE IF EXISTS fusion;

CREATE TABLE IF NOT EXISTS fusion AS
SELECT combined_data.product_id, combined_data.event_time, combined_data.event_type, combined_data.price, combined_data.user_id, combined_data.user_session, item.category_id, item.category_code, item.brand
FROM combined_data, item
WHERE combined_data.product_id = item.product_id;