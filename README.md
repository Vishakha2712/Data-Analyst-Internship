# Data-Analyst-Internship
Data Analytics internship projects including Power BI dashboards, Python analysis, and business insights.

# Internship @ AtliQ Technologies

As a Data Analyst Intern at AtliQ Technologies, I worked on real-world business
datasets to perform data cleaning, analysis, visualization, and reporting.
The internship was conducted remotely and focused on hands-on learning using
industry-relevant tools.

---

## WEEK 1: HR Report
## Email: 1
Sending you these tasks following up on our call.

The HR dataset can be found in the file "attendance_data.csv". Your tasks are divided into two parts: data cleaning and data analysis.

Task 1: Data Cleaning

Check for duplicates in the dataset and remove them.
Standardize the date values to the format YYYY-MM-DD and extract the month name and day type from them.
Remove any extra characters, such as special characters, from the employee ID values. Some IDs may contain a '@' character at the end, which can be cleaned and brought to a common format.
Standardize the capitalization of names. Convert all names to title case, which means capitalizing the first letter of each word.
Map the corresponding values in the status column with the given abbreviations:
- Work From Office --> WFO
- Work From Home --> WFH
- Birthday Leave --> BL
- Menstrual Leave --> ML
- Paid Leave --> PL
- Sick Leave --> SL
- Weekly Off --> WO
- 
Task 2: Ad Hoc aka Analysis

1. What is the total count of distinct employee names within the dataset?
2. Calculate the work-from-home (WFH %) percentage in the month of May.
3. Determine which day of the week had the highest attendance percentage in the month of June.
4. Find out the number of employees who had a WFH percentage greater than 10% in the month of April.
5. You are free to use any tool of your preference, such as Pandas, Excel, PowerBI, etc., to complete this task.

If you have any follow-up questions on the task, you can ask your seniors here: [discord link]
But they are busy, try to solve it on your own as much as possible.
Good luck with your task!
Best regards,
Hem
Head of Data Analytics | AtliQ Technologies Pvt. Ltd.

### Solution: 
File Name: [attendance_data_soln.pbix](attendance_data_soln.pbix)
Tool: Power BI


### Data Normalization Task
### Email: 2
Well done with the previous task. I have a new one for you.
One of our client projects requires minor support. The dataset is currently in a de-normalized form, and we need your help to transform it into a normalized form.
Your task will involve creating proper fact and dimension tables based on the dataset, which can be found in the "fact_order_lines.csv" file.
Here are a few screenshots of the dataset to give you a better idea of what it looks like and how the final output should be presented:

Input Data :

<img width="1042" height="433" alt="image" src="https://github.com/user-attachments/assets/24481124-a20c-44dd-a4c2-f9b02d2b001c" />

Output Data:
<img width="919" height="580" alt="Screenshot 2026-02-01 224001" src="https://github.com/user-attachments/assets/cf6104cf-5501-4214-a269-fa8a967a949b" />

<img width="918" height="675" alt="Screenshot 2026-02-01 224038" src="https://github.com/user-attachments/assets/bbb0d6ea-fd1c-441c-b385-5161a3b389f6" />

### Solution: [fact_order_lines_soln](fact_order_lines_soln)
Tool: MS-Excel

### Email: 3
Scrum Training
I’m forwarding the email from HR, in case it didn’t reach you.

As part of your internship, we will be covering the SCRUM methodology in software development. SCRUM is a widely-used agile methodology that helps teams collaborate effectively to deliver high-quality software products.

To help you gain a thorough understanding of SCRUM, I am pleased to introduce you to the SCRUM Training Series, available at https://scrumtrainingseries.com/. This is a comprehensive online training program that covers all aspects of SCRUM, from its basics to advanced concepts.

It is mandatory for you to complete the SCRUM Training Series as having a good understanding of it will make you a more valuable employee in the industry.

Good luck with your training!

Best regards,
Head of Data Analytics | AtliQ Technologies Pvt. Ltd.

## WEEK 2: 
### Email: 1
Variance Analysis Task
Here is the detailed explanation of the task.

You need to conduct variance analysis to compare benchmark data (benchmarks.csv) with their current data (fact_orders.csv). The goal of this analysis is to identify and quantify the differences or variations between the two datasets. Specifically, you will be comparing the order quantity and delivery quantity from the fact_orders.csv file with the benchmark data provided in the benchmarks.csv file.

Datasets:
You will be provided with three datasets for this analysis:

fact_orders.csv: Contains columns like order_id, order_placement_date, mmm_yy, customer_id, product_name, order_qty, and delivery_qty.
dim_customers.csv: Contains columns like customer_id, customer_name, and city.
benchmarks.csv: Contains columns like mmm_yy, customer_id, customer_name, city, total_order_quantity, and total_delivery_quantity.
Workflow:
Here is a brief overview of the workflow for the task:

Review the benchmark data and the current data (fact_orders.csv).
Metrics to compare between two files: Order quantity and Delivery quantity.
Calculate the variance (absolute value) between the benchmark data and the current data for the identified metrics.
Calculate the variance (in percentage) between the benchmark data and the current data for the identified metrics.
Provide a complete report of the difference in numbers between the benchmark data and the main data.
Please ensure that you thoroughly analyze the datasets and provide a comprehensive report of the differences in the order quantity and delivered quantity between the benchmark data and the main data.

Attaching screenshots from a dummy report I created, which will give you a better idea of what it looks like and how the final output should be presented:

Output Data

Output Data 1
<img width="989" height="546" alt="image" src="https://github.com/user-attachments/assets/f3252119-0bc8-412d-a1b3-00d24c4b504c" />

Output Data 2
<img width="1002" height="460" alt="image" src="https://github.com/user-attachments/assets/c4f16b1b-880c-46e5-a3af-c9edec80a92a" />


Feel free to ask your seniors for any questions!
Good luck with this task!
Best regards,
Hem
Head of Data Analytics | AtliQ Technologies Pvt. Ltd.

### Solution: [benchmark_data_soln.pbix](benchmark_data_soln.pbix)
Tool: Power BI

### Email: 2
SQL Query Debugging
I’m struggling with something and need your help. We have some SQL queries created by our previous interns, and it seems they were not debugged. Can you debug them?

I've provided you with the necessary files to get started. Please download the 'gdb080.sql' file and load it into your MySQL Workbench. You can then open the 'sql_queries.docx' file to view the list of queries that you need to debug. Each query has some errors that need to be identified and fixed. Please ensure that you test each query thoroughly after fixing the errors.

This task is urgent – please complete it as soon as possible.

If you have any follow-up questions about the task, feel free to ask your seniors here: Discord Link.

Best regards,
Hem
Head of Data Analytics | AtliQ Technologies Pvt. Ltd.

### Solution: gdb080. solution - SQL Query Debugging.sql
Tool: MySQL

### Email: 3
Report Automation
I have a quick ad-hoc task for you.

One of our clients in the Network services domain is currently creating a weekly report manually. This process can be automated, and we can help them save time.

I've provided you with two Excel sheets - "network_data.csv" and "activity_data.csv", containing data related to our client's network operations. Your task is to use Power Query to manipulate and transform the data from these files and create a new table that meets the specified format.

To achieve the desired format, you'll need to use a variety of Power Query techniques, such as pivoting, transforming, merging, and manipulating headers.

Input Data
<img width="1042" height="693" alt="image" src="https://github.com/user-attachments/assets/0c944074-3cd6-4c25-88be-77cc80e367bb" />
Output Data
<img width="1039" height="476" alt="image" src="https://github.com/user-attachments/assets/d9b6501b-720f-45f5-bce9-fbc1b58b0b98" />

Please complete this task as soon as possible. If you need any assistance, feel free to reach out to your seniors.

Best regards,
Head of Data Analytics | AtliQ Technologies Pvt. Ltd.

### Solution: [Network_Data_Solution](Network_Data_Solution)
Tool: MS-Excel

### Email: 4
Vishakha Vishwas Kokate,

I’m sending the details to you as discussed in the call.

You need to create a presentation from the dashboard for our telecom client 'wavecon'.

Preview of the dashboard:
<img width="993" height="682" alt="image" src="https://github.com/user-attachments/assets/2f5e4e28-77e0-4dc6-95b9-d0b81d3d4670" />
Dashboard Preview

Your task is to analyze the dashboard and provide insights on a ppt that addresses the following questions:

What is the impact of the 5G launch on our revenue?
Which KPI is underperforming after the 5G launch?
After the 5G launch, which plans are performing well in terms of revenue? Which plans are not performing well?
Is there any plan affected largely by the 5G launch? Should we continue or discontinue that plan?
Is there any plan that is discontinued after the 5G launch? What is the reason for it?
These are just initial questions to help you get started, and you are free to come up with new insights based on your analysis. You can also play around with the dashboard to get better insights.

Of course, you can check with your seniors as usual.

Looking forward to your best!

Best regards,
Hem
Head of Data Analytics | AtliQ Technologies Pvt. Ltd.




## WEEK 4: Business Dashboard & Insights

### 📩 Task Overview
Built an interactive dashboard to analyze telecom performance after 5G launch.

### 🔧 Tasks Performed
- Created Power BI dashboard
- Analyzed revenue and plan performance
- Identified post-5G trends
- Prepared final presentation

### 🛠 Tools Used
- Power BI
- Excel

### 📁 Solution Files
- `Wavecon_5G.pbix`
- `Final_Presentation.pdf`

---

## 📌 Note
This internship project was completed for learning purposes
as part of a structured data analytics internship.
