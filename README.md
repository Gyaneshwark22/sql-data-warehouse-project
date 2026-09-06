# sql-data-warehouse-project
**Modern Data Warehouse with SQL Server**

A modern data warehouse project built with SQL Server, covering the complete data engineering lifecycle — from raw data ingestion and ETL to dimensional data modeling and analytical reporting.

The project demonstrates how to build a scalable data warehouse using SQL Server, T-SQL, ETL pipelines, and dimensional modeling following industry-standard practices.

##📌 Project Overview

The goal of this project is to design and implement a modern data warehouse that integrates data from multiple source systems, transforms and cleans the data through an ETL process, and prepares it for analytics and reporting.

The data warehouse follows a Medallion Architecture:

🥉 Bronze Layer – Raw data ingestion
🥈 Silver Layer – Data cleansing and transformation
🥇 Gold Layer – Business-ready dimensional model

The final Gold layer is optimized for analytical queries and reporting.

##🏗️ Architecture
                        SOURCE SYSTEMS
                              │
                              ▼
                    ┌──────────────────┐
                    │   BRONZE LAYER   │
                    │    Raw Data      │
                    └────────┬─────────┘
                             │
                             │ ETL
                             ▼
                    ┌──────────────────┐
                    │   SILVER LAYER   │
                    │ Cleaned &        │
                    │ Transformed Data │
                    └────────┬─────────┘
                             │
                             │ Transformation
                             ▼
                    ┌──────────────────┐
                    │    GOLD LAYER    │
                    │  Dimensional DW  │
                    └────────┬─────────┘
                             │
                             ▼
                       ANALYTICS / BI
                             │
                             ▼
                         Power BI

                         
##🔧 Technologies Used***
Technology	Purpose
SQL Server	Data warehouse and database engine
T-SQL	Data transformation, stored procedures and SQL development
SQL Server Integration Services (SSIS)	ETL and data integration
Git / GitHub	Version control and project management
Power BI	Data visualization and analytics
Draw.io	Data architecture and modeling diagrams


🔄 ETL Process

The ETL pipeline consists of three major stages:

1. Extract

Data is extracted from source systems such as:

CSV files
Relational databases
Operational systems

The extracted data is loaded into the Bronze Layer.

2. Transform

The Silver Layer performs data cleansing and transformation:

Remove duplicate records
Handle NULL values
Standardize data formats
Convert data types
Validate business rules
Clean inconsistent values
Transform source data
3. Load

The transformed data is loaded into the Gold Layer, which contains business-ready fact and dimension tables for analytics.

🥉 Bronze Layer

The Bronze Layer stores data in its raw form with minimal transformation.

Example tables:

bronze_customers
bronze_products
bronze_sales
bronze_orders
Purpose
Preserve raw source data
Maintain data lineage
Support data reprocessing
Provide a reliable source for transformations
🥈 Silver Layer

The Silver Layer contains cleaned and standardized data.

Typical transformations include:

Data cleansing
Deduplication
NULL handling
Data type conversion
Data validation
Standardization
Business rule implementation

Example:

WITH duplicate_records AS
(
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY customer_id
               ORDER BY load_date DESC
           ) AS rn
    FROM bronze_customers
)
SELECT *
FROM duplicate_records
WHERE rn = 1;
