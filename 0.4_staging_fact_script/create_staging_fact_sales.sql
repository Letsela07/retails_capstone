/*
    staging: fact_sales
    purpose: build a staging fact table from raw retail sales transaction data
*/

-- 1) quick_source_preview
SELECT
    order_id,
    purchase_date,
    ship_date,
    returned,
    return_date,
    store_id,
    channel,
    priority,
    payment_method,
    promotion_id,
    customer_id,
    salesperson_id,
    product_id,
    quantity,
    unit_cost,
    unit_price,
    discount_amount,
    tax_amount,
    shipping_cost,
    gross_sales,
    net_sales,
    cogs,
    gross_profit
FROM raw_retail_sales;

-- 2) create_staging_fact_sales_table
DROP TABLE IF EXISTS stg_fact_sales;

CREATE TABLE stg_fact_sales (
    order_id VARCHAR(250),
    purchase_date VARCHAR(250),
    ship_date VARCHAR(250),
    returned VARCHAR(250),
    return_date VARCHAR(250),

    store_id VARCHAR(250),
    channel VARCHAR(250),
    priority VARCHAR(250),
    payment_method VARCHAR(250),
    promotion_id VARCHAR(250),
    customer_id VARCHAR(250),
    salesperson_id VARCHAR(250),
    product_id VARCHAR(250),

    quantity INT,
    unit_cost NUMERIC(10,2),
    unit_price NUMERIC(10,2),
    discount_amount NUMERIC(10,2),
    tax_amount NUMERIC(10,2),
    shipping_cost NUMERIC(10,2),
    gross_sales NUMERIC(12,2),
    net_sales NUMERIC(12,2),
    cogs NUMERIC(12,2),
    gross_profit NUMERIC(12,2)
);

-- 3) load_staging_fact_sales
INSERT INTO stg_fact_sales (
    order_id,
    purchase_date,
    ship_date,
    returned,
    return_date,
    store_id,
    channel,
    priority,
    payment_method,
    promotion_id,
    customer_id,
    salesperson_id,
    product_id,
    quantity,
    unit_cost,
    unit_price,
    discount_amount,
    tax_amount,
    shipping_cost,
    gross_sales,
    net_sales,
    cogs,
    gross_profit
)
SELECT
    order_id,
    purchase_date,
    ship_date,
    returned,
    return_date,
    store_id,
    channel,
    priority,
    payment_method,
    promotion_id,
    customer_id,
    salesperson_id,
    product_id,
    quantity,
    unit_cost,
    unit_price,
    discount_amount,
    tax_amount,
    shipping_cost,
    gross_sales,
    net_sales,
    cogs,
    gross_profit
FROM raw_retail_sales;

-- 4) validate_loaded_staging_fact
SELECT
    COUNT(*) AS stg_fact_sales_row_count
FROM stg_fact_sales;

SELECT
    *
FROM stg_fact_sales
LIMIT 10;