# SQL
Please use this repository to get you up and running with SQL. The examples in this repository are very simple code, but can be used for reference. 

The best way to learn is by using real data and googling solutions to what you may want to solve 

# Download R & R Studio:
R Programming: https://cran.r-project.org/bin/windows/base/old/3.4.3/

R Studio (Down at bottom of page labeled "free download"): https://www.rstudio.com/products/rstudio/download/#download

You will be using R Studio because it is more user friendly. 

Download the "Sample Code for Getting Started.R" from the repository above to get started!

The good thing about starting with R is that you will eventually get familiar with some of the basic functions of R. These functions make coding easier. 

# Quick Training
For SQL the best way to learn is to do. I could have you watch hours upon hours of a SQL training/tutorial, but it really wouldn't be super helpful. So instead of videos, I will start you off with my own little tutorial. Below are a list of quick tips to get you started.

All Tables should start with a "Select" statement. To call a table use a "From" Statement. "*" Selects all metrics in the table, if you do not want to select all then type out the name of the column in the table. Example: Select firstname, lastname from users

Test a table: Select top 10 * from {table_name}

If statement: Use a "case when" statement https://community.modeanalytics.com/sql/tutorial/sql-case/ 

Filtering: Use a "Where" statement https://www.w3schools.com/sql/sql_and_or.asp (use after from and join statements)
 
Using functions in SQL: https://www.w3schools.com/sql/sql_ref_sqlserver.asp aggregate functions cannot be used in a where statement. (use before from statements)

Order the data descending or ascending by a particular metric: use the Order by statment (use after group by and where statements)

Get rid of dublicate values: use the Group By Statement (use after where statements, but before order by statements)

# Good References
Anything that you do not find above you can google or use this referece: https://stackoverflow.com but be careful as there are small differences in sql types. We will be using postresql.
