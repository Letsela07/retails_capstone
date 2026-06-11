/*
    retail_sales_staging_dimensions
    purpose: create and load staging dimension tables from raw_retail_sales
    database: stg_retail_sales
*/

-- =====================================================
-- stg_dim_customer
-- =====================================================

DROP TABLE IF EXISTS stg_dim_customer;

CREATE TABLE stg_dim_customer (
    customer_id VARCHAR(250),
    customer_segment VARCHAR(250),
    loyalty_tier VARCHAR(250)
);

INSERT INTO stg_dim_customer (
    customer_id,
    customer_segment,
    loyalty_tier
)
SELECT DISTINCT
    customer_id,
    customer_segment,
    loyalty_tier
FROM raw_retail_sales;

SELECT * FROM stg_dim_customer;


-- =====================================================
-- stg_dim_location
-- =====================================================

DROP TABLE IF EXISTS stg_dim_location;

CREATE TABLE stg_dim_location (
    continent VARCHAR(250),
    country VARCHAR(250),
    city VARCHAR(250)
);

INSERT INTO stg_dim_location (
    continent,
    country,
    city
)
SELECT DISTINCT
    continent,
    country,
    city
FROM raw_retail_sales;

SELECT * FROM stg_dim_location;


-- =====================================================
-- stg_dim_product
-- =====================================================

DROP TABLE IF EXISTS stg_dim_product;

CREATE TABLE stg_dim_product (
    product_id VARCHAR(250),
    sku VARCHAR(250),
    product_name VARCHAR(250),
    category VARCHAR(250),
    subcategory VARCHAR(250),
    brand VARCHAR(250)
);

INSERT INTO stg_dim_product (
    product_id,
    sku,
    product_name,
    category,
    subcategory,
    brand
)
SELECT DISTINCT
    product_id,
    sku,
    product_name,
    category,
    subcategory,
    brand
FROM raw_retail_sales;

SELECT * FROM stg_dim_product;


-- =====================================================
-- stg_dim_store
-- =====================================================

DROP TABLE IF EXISTS stg_dim_store;

CREATE TABLE stg_dim_store (
    store_id VARCHAR(250),
    store_name VARCHAR(250),
    store_type VARCHAR(250)
);

INSERT INTO stg_dim_store (
    store_id,
    store_name,
    store_type
)
SELECT DISTINCT
    store_id,
    store_name,
    store_type
FROM raw_retail_sales;

SELECT * FROM stg_dim_store;


-- =====================================================
-- stg_dim_promotion
-- =====================================================

DROP TABLE IF EXISTS stg_dim_promotion;

CREATE TABLE stg_dim_promotion (
    promotion_id VARCHAR(250),
    promotion_name VARCHAR(250)
);

INSERT INTO stg_dim_promotion (
    promotion_id,
    promotion_name
)
SELECT DISTINCT
    promotion_id,
    promotion_name
FROM raw_retail_sales;

SELECT * FROM stg_dim_promotion;


-- =====================================================
-- stg_dim_salesperson
-- =====================================================

DROP TABLE IF EXISTS stg_dim_salesperson;

CREATE TABLE stg_dim_salesperson (
    salesperson_id VARCHAR(250),
    salesperson_department VARCHAR(250)
);

INSERT INTO stg_dim_salesperson (
    salesperson_id,
    salesperson_department
)
SELECT DISTINCT
    salesperson_id,
    salesperson_department
FROM raw_retail_sales;

SELECT * FROM stg_dim_salesperson;


-- =====================================================
-- stg_dim_sales_method
-- =====================================================

DROP TABLE IF EXISTS stg_dim_sales_method;

CREATE TABLE stg_dim_sales_method (
    channel VARCHAR(250),
    priority VARCHAR(250),
    payment_method VARCHAR(250)
);

INSERT INTO stg_dim_sales_method (
    channel,
    priority,
    payment_method
)
SELECT DISTINCT
    channel,
    priority,
    payment_method
FROM raw_retail_sales;

SELECT * FROM stg_dim_sales_method;


-- =====================================================
-- validation_row_counts
-- =====================================================

SELECT 'raw_retail_sales' AS table_name, COUNT(*) AS row_count FROM raw_retail_sales
UNION ALL
SELECT 'stg_dim_customer', COUNT(*) FROM stg_dim_customer
UNION ALL
SELECT 'stg_dim_location', COUNT(*) FROM stg_dim_location
UNION ALL
SELECT 'stg_dim_product', COUNT(*) FROM stg_dim_product
UNION ALL
SELECT 'stg_dim_store', COUNT(*) FROM stg_dim_store
UNION ALL
SELECT 'stg_dim_promotion', COUNT(*) FROM stg_dim_promotion
UNION ALL
SELECT 'stg_dim_salesperson', COUNT(*) FROM stg_dim_salesperson
UNION ALL
SELECT 'stg_dim_sales_method', COUNT(*) FROM stg_dim_sales_method;