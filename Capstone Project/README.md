# Data Engineering Capstone Project
As part of the IBM Data Engineering Capstone Project from Coursera, I assumed the role of the Associate Data Warehouse Engineer who has recently joined an e-commerce organization named SoftCart.
Sofcart uses a hybrid architecture, with some of its databases on premises and some on cloud.

## Tools and Technologies Used:
-	OLTP database – MySQL
-	NoSQL database – MongoDB
-	Production Data warehouse – DB2 on Cloud
-	Staging Data warehouse – PostgreSQL
-	Big data platform – Hadoop
-	Big data analytics platform – Spark
-	Business Intelligence Dashboard – IBM Cognos Analytics
-	Data Pipelines – Apache Airflow

## Process
-	SoftCart’s online presence is primarily through its website, which customers access using a variety of devices like laptops, mobiles and tablets.
-	All the catalog data of the products is stored in the MongoDB NoSQL server.
-	All the transactional data like inventory and sales are stored in the MySQL database server.
-	SoftCart’s webserver is driven entirely by these two databases.
-	Data is periodically extracted from these two databases and put into the staging data warehouse warehouse running on PostgreSQL.
-	The production data warehouse is on the cloud instance of IBM DB2 server.
-	BI teams connect to the IBM DB2 for operational dashboard creation. IBM Cognos Analytics is used to create dashboards.
-	SoftCart uses Hadoop cluster as its big data platform where all the data is collected for analytics purposes.
-	Spark is used to analyze the data on the Hadoop cluster.
-	To move data between OLTP, NoSQL and the data warehouse, ETL pipelines are used and these run on Apache Airflow.

## OLTP Database
Designed a data platform that uses MySQL as an OLTP database. Used MySQL to store the OLTP data.
  
- Created a database named sales
   
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/1createtable.jpg?raw=true)
    
- Imported the data from a csv file using phpMyAdmin
    
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/2importdata.jpg?raw=true)
    
- Wrote a query to find out the count of records in the table sales_data
    
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/4salesrows.jpg?raw=true)
    
- Created an index named ts on the timestamp field. Listed all indexes on the table sales_data.
    
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/5listindexes.jpg?raw=true)


- Wrote a bash script that exports all the rows in the sales_daya table to a file named sales_data.sql
    
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/6exportdata.jpg?raw=true)

## MONGODB
The company needed me to design a data platform that uses MongoDB as a NoSQL database. Used MongoDB to store the e-commerce catalog data.

- Imported ‘catalagog.json’into MongoDB server into a database named ‘catalog’ and a collection named ‘electronics’

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/7mongoimport.jpg?raw=true)

- Created an index on the field ‘type’

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/10create-index.jpg?raw=true)

- Wrote a query to find the count of laptops

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/11mongo-query-laptops.jpg?raw=true)

- Wrote a query to find the number of smart phones with screen size of 6 inches

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/12mongo-query-mobiles1.jpg?raw=true)  

- Wrote a query to find out the average screen size of smart phones

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/13mongo-query-mobiles2.jpg?raw=true)   

- Exported the fields ‘-id’, ‘type’, ‘model’, from the ‘electronics’collection into a file named electronics.csv

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/14mongoexport.jpg?raw=true)

## DESIGN A DATA WAREHOUSE AND GENERATE REPORTS
The company retails download only items like E-Books, Movies, Songs etc. The company has international presence and customers from all over the world. The company would like to create a data warehouse so that it can create reports. 

- Designed the dimension tables softcartDimDate, softcartDimCategory, softcartDimItem and softcartDimCountry.
- Designed the fact table softcartFactSales.
- Designed the relationships.

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/softcartRelationships.jpg?raw=true)  

- Downloaded the schema sql from ERD tool and created the schema in a database named ‘staging’

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/createschema.jpg?raw=true)

- LOAD DATA INTO THE DATA WAREHOUSE
- Created a grouping sets query using the columns country, category, totalsales

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/19groupingsets.jpg?raw=true)

- Created a rollup query using the columns year, country, and totalsales

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/20rollup.jpg?raw=true)

- Created a cube query using the columns year, country, and average sales

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/21cube.jpg?raw=true)

- Created an MQT named total_sales_per_country that has the columns country and total_sales

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/22mqt.jpg?raw=true)

## IBM COGNOS ANALYTICS

- Imported data in the downloaded file ecommerce.csv into a table named sales_history

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/dataimport1.jpg?raw=true)

- Created a line chart of month wise total sales for the year 2020.

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/26linechart.jpg?raw=true)

- Created a pie chart of category wise total sales.

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/27piechart.jpg?raw=true)

- Create a bar chart of Quarterly sales of mobile phones

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/28barchart.jpg?raw=true)

## AUTOMATE LOADING OF INCREMENTAL DATA INTO THE DATA WAREHOUSE
You need to keep data synchronized between different databases/data warehouses as a part of your daily routine. One task that is routinely performed is the sync up of staging data warehouse and production data warehouse. You will be given a set of python scripts to start with. You will use/modify them to perform the incremental data load from MySQL server which acts as a staging warehouse to the IBM DB2 which is a production data warehouse. This script will be scheduled by the data engineers to sync up the data between the staging and production data warehouse.

Link: [AUTOMATE LOADING OF INCREMENTAL DATA](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/automation.py)

## APACHE AIRFLOW
Write a pipeline that analyzes the web server log file, extracts the required lines(ending with html) and fields(time stamp, size ) and transforms (bytes to mb) and load (append to an existing file.)

Link: [PIPELINE](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/process_web_log.py)

- Submit the DAG

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/39submit_dag.jpg?raw=true)

- Monitor the DAG

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/41dag_runs.jpg?raw=true)

## APACHE SPARK







    
 
    
    

