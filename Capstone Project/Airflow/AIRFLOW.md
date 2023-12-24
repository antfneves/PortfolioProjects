In this assignment, I performed a number of tasks such as:
- Created a DAG with the arguments "owner", "start_date" and "email".
- Created a DAG named process_web_log that runs daily.
- Created a task named extract_data. This task extracted the ipaddress field from the web server log file and saved it into a file named extracted_data.txt.
- Created a task named transform_data. This task filtered out all the occurrences of ipaddress “198.46.149.143” from extracted_data.txt and saved the output to a file named transformed_data.txt.
- Created a task named load_data. This task archived the file transformed_data.txt into a tar file named weblog.tar.
- Defined the task pipeline.


Link: [PIPELINE](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Airflow/process_web_log.py)


- Submit the DAG
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Airflow/39submit_dag.jpg?raw=true)

- Monitor the DAG
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Airflow/41dag_runs.jpg?raw=true)
