-- create_dim_date

CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL
);

-- create_dim_location

CREATE TABLE dim_location (
    location_id INT PRIMARY KEY,
    continent VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100)
);

-- create_dim_store

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_type VARCHAR(50)
);

-- create_dim_promotion

CREATE TABLE dim_promotion (
    promotion_id INT PRIMARY KEY,
    promotion_name VARCHAR(100)
);

-- create_dim_customer

CREATE TABLE dim_customer (
    customer_id INT PRIMARY KEY,
    customer_segment VARCHAR(50),
    loyalty_tier VARCHAR(50)
);

-- create_dim_salesperson

CREATE TABLE dim_salesperson (
    salesperson_id INT PRIMARY KEY,
    salesperson_department VARCHAR(100)
);

-- create_dim_product

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    sku VARCHAR(50),
    product_name VARCHAR(150),
    category VARCHAR(50),
    subcategory VARCHAR(50),
    brand VARCHAR(50)
);

-- create_dim_sales_method

CREATE TABLE dim_sales_method (
    sales_method_id INT PRIMARY KEY,
    channel VARCHAR(50),
    priority VARCHAR(50),
    payment_method VARCHAR(50)
);

-- create_retail_sales_fact_table

CREATE TABLE retail_sales_fact_table (
    order_id VARCHAR(30) PRIMARY KEY,

    purchase_date_id INT,
    ship_date_id INT,
    return_date_id INT,

    location_id INT,
    store_id INT,
    promotion_id INT,
    customer_id INT,
    salesperson_id INT,
    product_id INT,
    sales_method_id INT,

    returned VARCHAR(10),

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