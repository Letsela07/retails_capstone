# Retail Sales Data Engineering Capstone

## Project Overview

This project demonstrates the implementation of a retail sales data engineering pipeline using dimensional modelling and ETL concepts.

The objective is to transform raw retail sales data into a structured format that supports analytics and reporting.

---

## Project Structure

```text
retails_capstone
│
├── 0.1_raw_data
├── 0.2_eda_script
├── 0.3_staging_script
└── retail_sales_data_modelling.jpg
```

---

## Current Progress

### Data Modelling

* Designed a retail sales star schema
* Identified fact and dimension tables
* Created data model diagram

### Staging Layer

Created and populated the following staging dimensions:

* stg_dim_customer
* stg_dim_location
* stg_dim_product
* stg_dim_store
* stg_dim_promotion
* stg_dim_salesperson
* stg_dim_sales_method

---

## Validation Results

| Table                | Row Count |
| -------------------- | --------: |
| raw_retail_sales     |     10001 |
| stg_dim_customer     |      1176 |
| stg_dim_location     |        16 |
| stg_dim_product      |       181 |
| stg_dim_store        |        22 |
| stg_dim_promotion    |         6 |
| stg_dim_salesperson  |        71 |
| stg_dim_sales_method |        46 |

---

## Technologies

* PostgreSQL
* DBeaver
* SQL
* VS Code
* GitHub

---

## Next Steps

* Create data warehouse dimensions
* Create fact table
* Implement ETL process
* Build reporting queries
* Automate data pipeline

```
```
