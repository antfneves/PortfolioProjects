# Data Engineering Capstone Project
![]([https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/data.jpg?raw=true)

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
Designed the OLTP database for the e-commerce website, populated the OLTP Database with the data provided, and 
automated the export of the daily incremental data into the data warehouse. 

Link: [OLTP DATABASE](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/OLTP/OLTP.md)

## MONGODB
The company needed me to design a data platform that uses MongoDB as a NoSQL database. Used MongoDB to store and query the e-commerce catalog data.

Link: [MONGODB](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/MongoDB/MONGODB.md)

## DESIGN A DATA WAREHOUSE AND GENERATE REPORTS
Designed the schema for a data warehouse based on the schema of the OLTP and NoSQL databases. 
Created the schema and loaded the data into the fact and dimension tables, automated the daily incremental data insertion into the data warehouse, and 
created Cubes and Rollups to make the reporting easier.

Link: [DESIGN A DATA WAREHOUSE AND GENERATE REPORTS](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/DesignandReports/DESIGNREPORTS.md)

## IBM COGNOS ANALYTICS
Created a Business Intelligence dashboard. First I created a Cognos data source that points to a data warehouse table, then I created a bar chart of quarterly sales of cell phones, created a pie chart of sales of electronic goods by category, and created a line chart of total sales per month for a given year.

Link: [COGNOSANALYTICS](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/CognosAnalytics/COGNOS.md)

## AUTOMATE LOADING OF INCREMENTAL DATA INTO THE DATA WAREHOUSE
Created an ETL pipeline using Python to get new data for the day from the OLTP database and load the Data Warehouse.

Link: [AUTOMATE LOADING OF INCREMENTAL DATA](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Automation/AUTOMATION.md)

## APACHE AIRFLOW
Built a data pipeline using Apache Airflow to feed the Big Data cluster.

Link: [AIRFLOW](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Airflow/AIRFLOW.md)

## APACHE SPARK
Used my skills in Big Data Analytics to create a Spark connection to the data warehouse and deployed a machine learning model on SparkML for making sales projections

Link: [SPARK](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Spark/SPARK.md)








    
 
    
    

