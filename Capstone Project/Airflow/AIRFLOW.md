- Create a DAG with the arguments "owner", "start_date" and "email".
- Create a DAG named process_web_log that runs daily.
- Create a task named extract_data. This task should extract the ipaddress field from the web server log file and save it into a file named extracted_data.txt.
- Create a task named transform_data. This task should filter out all the occurrences of ipaddress “198.46.149.143” from extracted_data.txt and save the output to a file named transformed_data.txt.
- Create a task named load_data. This task should archive the file transformed_data.txt into a tar file named weblog.tar.
- Define the task pipeline.


Link: [PIPELINE](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Airflow/process_web_log.py)


- Submit the DAG
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Airflow/39submit_dag.jpg?raw=true)

- Monitor the DAG
  

![](https://github.com/antfneves/PortfolioProjects/blob/main/Capstone%20Project/Airflow/41dag_runs.jpg?raw=true)
