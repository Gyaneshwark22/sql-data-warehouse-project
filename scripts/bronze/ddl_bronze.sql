/*
=========================================================================
DDL Script:Create Bronze Tables 
=========================================================================
Script Purpose:
    This creates tables in the 'bronze' schema,dropping existing tables
    if they already exist.
    Run this script to re-define the DDL stucture of 'bronze' Tables
=========================================================================
*/
IF OBJECT_ID('bronze.crm_cust_info','U') IS NOT NULL
      DROP TABLE bronze.crm_cust_info;
GO

create table bronze.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_material_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE
);

create table bronze.crm_sales_details(
sls_ord_num NVARCHAR(50),
sls_prd_key NVARCHAR(50),
sls_cust_id  INT,
sls_order_dt INT,
sls_ship_dt  INT,
sls_due_dt   INT,
sls_sales   INT,
sls_quantity INT,
sls_price   INT
);


create table bronze.crm_prd_info(
prd_id INT,
prd_key NVARCHAR(50),
prd_nm NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_start_dt DATE,
prd_end_dt DATE
);


create table bronze.erp_cust_az12(
CID NVARCHAR(50),
BDATE DATE,
GEN NVARCHAR(50)
);

create table bronze.erp_loc_a101(
CID VARCHAR(50),
CNTRY  NVARCHAR(40)

);

create table bronze.erp_px_cat_g1v2(
ID NVARCHAR(50),
CAT NVARCHAR(50),
SUBCAT NVARCHAR(50),
MAINTENANCE NVARCHAR(50)
);

/* to update the column dataytpe*/

ALTER TABLE bronze.crm_prd_info 
ALTER COLUMN prd_end_dt DATE;
