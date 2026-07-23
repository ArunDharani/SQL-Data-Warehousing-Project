-- let us drop table 'bronze.crm_cust_info' if it exists
DROP TABLE IF EXISTS bronze.crm_cust_info;

-- Creation of table 'bronze.crm_cust_info'
CREATE TABLE bronze.crm_cust_info (
    cst_id              INT,
    cst_key             VARCHAR(50),
    cst_firstname       VARCHAR(50),
    cst_lastname        VARCHAR(50),
    cst_marital_status  VARCHAR(50),
    cst_gndr            VARCHAR(50),
    cst_create_date     DATE
);

-- let us remove old data from the table 'bronze.crm_cust_info'
TRUNCATE TABLE bronze.crm_cust_info;

-- loaded data from local csv file into the table 'bronze.crm_cust_info'
LOAD DATA LOCAL INFILE 'C:\\Users\\Arun\\Downloads\\Data_Ware_House\\Project\\datasets\\source_crm\\cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from bronze.crm_cust_info limit 10;