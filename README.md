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
├── 0.4_staging_fact_script
├── README.md
└── retail_sales_data_modelling.jpg
```

---

## Current Progress

### Data Modelling

* Designed a retail sales star schema
* Identified fact and dimension tables
* Created a retail sales data model diagram

### Data Preparation & Staging

* Loaded retail sales CSV data into PostgreSQL
* Performed exploratory data analysis (EDA)
* Standardized source columns using snake_case naming convention
* Created and populated staging dimension tables
* Created and populated the staging fact table
* Validated staging row counts

### Staging Dimensions

* stg_dim_customer
* stg_dim_location
* stg_dim_product
* stg_dim_store
* stg_dim_promotion
* stg_dim_salesperson
* stg_dim_sales_method

### Staging Fact Table

* stg_fact_sales

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
| stg_fact_sales       |     10001 |

---

## Technologies

* PostgreSQL
* DBeaver
* SQL
* VS Code
* GitHub

---

## Next Steps

* Clean and validate staging data
* Create data warehouse dimension tables
* Load cleaned data into the data warehouse
* Populate the retail sales fact table
* Implement ETL processes
* Build reporting and analytics queries
* Automate the data pipeline

---

## Key Concepts Demonstrated

* Data Warehousing
* Dimensional Modelling
* Star Schema Design
* Staging Layer Development
* Data Preparation
* ETL Fundamentals
* SQL Development
* Version Control with Git and GitHub
