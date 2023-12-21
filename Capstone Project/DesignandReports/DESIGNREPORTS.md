The company retails download only items like E-Books, Movies, Songs etc. The company has international presence and customers from all over the world. The company would like to create a data warehouse so that it can create reports. 


- Design the dimension tables softcartDimDate, softcartDimCategory, softcartDimItem and softcartDimCountry.
- Design the fact table softcartFactSales.
- Design the relationships.
  
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/softcartRelationships.jpg?raw=true) 


- Download the schema sql from ERD tool and created the schema in a database named ‘staging’
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/createschema.jpg?raw=true)



## LOAD DATA INTO THE DATA WAREHOUSE


- Create a grouping sets query using the columns country, category, totalsales
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/19groupingsets.jpg?raw=true)

- Create a rollup query using the columns year, country, and totalsales
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/20rollup.jpg?raw=true)

- Create a cube query using the columns year, country, and average sales
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/21cube.jpg?raw=true)

- Create an MQT named total_sales_per_country that has the columns country and total_sales
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Images/22mqt.jpg?raw=true)

