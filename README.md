# sql-data-warehouse-project
**Modern Data Warehouse with SQL Server**

A modern data warehouse project built with SQL Server, covering the complete data engineering lifecycle — from raw data ingestion and ETL to dimensional data modeling and analytical reporting.

The project demonstrates how to build a scalable data warehouse using SQL Server, T-SQL, ETL pipelines, and dimensional modeling following industry-standard practices.

***📌 Project Overview***

This project focuses on designing and implementing a modern data warehouse that integrates data from multiple source systems, transforms the data through an ETL process, and prepares it for analytics and reporting.

The warehouse follows a Medallion Architecture consisting of:

Bronze Layer – Raw data ingestion
Silver Layer – Data cleansing and transformation
Gold Layer – Business-ready dimensional model

The final Gold layer is optimized for analytical queries and reporting.

***🏗️ Architecture***
                 Source Systems
                      │
                      ▼
             ┌─────────────────┐
             │   Bronze Layer  │
             │   Raw Data      │
             └────────┬────────┘
                      │
                    ETL
                      │
                      ▼
             ┌─────────────────┐
             │   Silver Layer  │
             │ Cleaned Data    │
             └────────┬────────┘
                      │
               Transformation
                      │
                      ▼
             ┌─────────────────┐
             │    Gold Layer   │
             │ Dimensional DW  │
             └────────┬────────┘
                      │
                      ▼
              Analytics / BI
***🔧 Technologies Used***
Technology	Purpose
SQL Server	Data warehouse and database engine
T-SQL	Data transformation, stored procedures and SQL development
SQL Server Integration Services (SSIS)	ETL and data integration
Git / GitHub	Version control and project management
Power BI	Data visualization and analytics
Draw.io	Data architecture and modeling diagrams
