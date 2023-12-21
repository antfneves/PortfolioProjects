Designed a data platform that uses MySQL as an OLTP database. Used MySQL to store the OLTP data.
  
- Create a database named sales
  
   
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/OLTP/1createtable.jpg)
    
- Import the data from a csv file using phpMyAdmin
  
    
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/OLTP/2importdata.jpg)
    
- Write a query to find out the count of records in the table sales_data
  
    
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/OLTP/4salesrows.jpg)
    
- Create an index named ts on the timestamp field. List all indexes on the table sales_data.
  
    
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/OLTP/5listindexes.jpg)


- Write a bash script that exports all the rows in the sales_daya table to a file named sales_data.sql
  
    
![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/OLTP/6exportdata.jpg)
