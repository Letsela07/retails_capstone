/*
    column_standardization
    purpose: rename raw retail sales columns using snake_case naming convention
*/

ALTER TABLE raw_retail_sales RENAME COLUMN "Quantity" TO quantity;
ALTER TABLE raw_retail_sales RENAME COLUMN "Unit Cost" TO unit_cost;
ALTER TABLE raw_retail_sales RENAME COLUMN "Unit Price" TO unit_price;
ALTER TABLE raw_retail_sales RENAME COLUMN "Discount Amount" TO discount_amount;
ALTER TABLE raw_retail_sales RENAME COLUMN "Tax Amount" TO tax_amount;
ALTER TABLE raw_retail_sales RENAME COLUMN "Shipping Cost" TO shipping_cost;
ALTER TABLE raw_retail_sales RENAME COLUMN "Gross Sales" TO gross_sales;
ALTER TABLE raw_retail_sales RENAME COLUMN "Net Sales" TO net_sales;
ALTER TABLE raw_retail_sales RENAME COLUMN "COGS" TO cogs;
ALTER TABLE raw_retail_sales RENAME COLUMN "Gross Profit" TO gross_profit;

ALTER TABLE raw_retail_sales RENAME COLUMN "Store Type" TO store_type;
ALTER TABLE raw_retail_sales RENAME COLUMN "Channel" TO channel;
ALTER TABLE raw_retail_sales RENAME COLUMN "Priority" TO priority;
ALTER TABLE raw_retail_sales RENAME COLUMN "Payment Method" TO payment_method;

ALTER TABLE raw_retail_sales RENAME COLUMN "Promotion ID" TO promotion_id;
ALTER TABLE raw_retail_sales RENAME COLUMN "Promotion Name" TO promotion_name;

ALTER TABLE raw_retail_sales RENAME COLUMN "Customer ID" TO customer_id;
ALTER TABLE raw_retail_sales RENAME COLUMN "Customer Segment" TO customer_segment;

ALTER TABLE raw_retail_sales RENAME COLUMN "Order ID" TO order_id;

ALTER TABLE raw_retail_sales RENAME COLUMN "Salesperson ID" TO salesperson_id;
ALTER TABLE raw_retail_sales RENAME COLUMN "Salesperson Department" TO salesperson_department;

ALTER TABLE raw_retail_sales RENAME COLUMN "Product ID" TO product_id;
ALTER TABLE raw_retail_sales RENAME COLUMN "SKU" TO sku;
ALTER TABLE raw_retail_sales RENAME COLUMN "Product Name" TO product_name;
ALTER TABLE raw_retail_sales RENAME COLUMN "Category" TO category;
ALTER TABLE raw_retail_sales RENAME COLUMN "Subcategory" TO subcategory;
ALTER TABLE raw_retail_sales RENAME COLUMN "Brand" TO brand;

ALTER TABLE raw_retail_sales RENAME COLUMN "Loyalty Tier" TO loyalty_tier;

ALTER TABLE raw_retail_sales RENAME COLUMN "Purchase Date" TO purchase_date;
ALTER TABLE raw_retail_sales RENAME COLUMN "Ship Date" TO ship_date;
ALTER TABLE raw_retail_sales RENAME COLUMN "Returned" TO returned;
ALTER TABLE raw_retail_sales RENAME COLUMN "Return Date" TO return_date;

ALTER TABLE raw_retail_sales RENAME COLUMN "Continent" TO continent;
ALTER TABLE raw_retail_sales RENAME COLUMN "Country" TO country;
ALTER TABLE raw_retail_sales RENAME COLUMN "City" TO city;

ALTER TABLE raw_retail_sales RENAME COLUMN "Store ID" TO store_id;
ALTER TABLE raw_retail_sales RENAME COLUMN "Store Name" TO store_name;