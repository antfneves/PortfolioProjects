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
  Design a data platform that uses MySQL as an OLTP database. You will be using MySQL to store the OLTP data.

