# Advance Excel
## Contents
[Case 1 - Canadian Super Store - Sales Data Analysis](#canadian-super-store---sales-data-analysis)</br>
[Case 2 - Bank Telemarketing Data Analysis](#bank-telemarketing-data-analysis)

***
## Canadian Super Store - Sales Data Analysis
**Please Download the Excel files and look at them for more clarity**

[Raw CSV file](canadian_superstore_sales.csv)</br>
[Final Edited file](Canadian_SuperStore_Final.xlsx)

### Report Making 

1. **Importing the Data** - The data was available in CSV format. Directly importing with built-in Excel functionality was leading to problems in identification of column data type. Hence the import was made using the **Get Data function in Data Tab**.
2. **Basic Formatting and Cleaning** - Adjusted column widths (by selecting the desired rows and using single double click). Secondly, changed the formating of the header row. Lastly, removed or hid unnessary columns.
3. **Filtering the Data** - Filtered the data by customer segment and created 4 new woorksheet one for each customer segment.
4. **Freezing the Header Row** - Using the **Freeze Panes function in View Tab**.
5. **Rounding off** - Sales and profit column to one decimal place
6. **Changing Data Types Units** - Converted Sales and profit column units to US Dollar. Order Date and Ship Date to Dates.
7. **Sorting** - Performed Custom Sort on three levels. First level of sort by Region (alphabetically), second level of sort by Province (alphabetically) and final level of sork by sales (decending order).
8. **Conditional Formatting** - Within every Region, highlighted the top 10% orders by sales in light green fill and dark green border. Secondly, higllited the profits by green and losses by red.

### Business Problem Solving
**QUERRY** - Identify the top 3 profitable product sub-category across all region.</br>

Methodology -
1. Copy the columns Product Category and Product Sub-Category
2. **Remove Duplicates using Data Tools in Data Tab**
3. Implement **Sumif formula** for each subcategory
4. Apply **Sorting** to Identify top 3

Top 3 sub-categories in terms of Profit were - Telephones and Communication, Office Machines and Binders and Binder Accessories 

**QUERRY** - Identify the top 3 profitable product sub-category in each region

Methodology -
1. We will solve this by using **Pivot Table**
2. Selected the complete dataset and made a new pivot table from the insert tab
3. In values add - Sum of Profits
4. In rows add - Product Category
5. In columns add - Region
6. Apply **Conditional Formatting (Color Scales)** and Identify the product sub-category for each region.
*View the Excel Sheet for the table*

**QUERRY** - Identify the Least profitable sub categories overall and by reagion.

Methodology - Using the same two tables as above we can Identify these.
***
## Bank Telemarketing Data Analysis
**Please Download the Excel files and look at them for more clarity**

[Raw CSV file]()</br>
[Final Edited file]()

Description of Data
In this case we have data from the telemarketing team of a bank which sells loans to the customers. The objective of the analysis is to find target segments that respond really well to the loan proposition and at the same time identify target segments that do not respond to the proposition at all. This will help the telemarketing team to improve their efficiency.

The Primary Methodology used in this analysis is **bucketing**. That is dividing the entries into buckets and analysing the response rate of each busket

Following steps were taken by me to identify the target segments
1. Identification of Relevent Features(columns)
2. Creation of New columns based on the data
   1. Age Group - Buckets of Age with width of 10 years using **ROUNDDOWN formula**
   2. Eligible - Using **IF formula** creating an elligibility criteria based on age
   3. Marital-Education - Creating a combine column of Marital and Education data to have **combined buckets**
   4. Response - Converting the character response to **binary response** in order to have easy %Response calculation
   5. Salary - Using **VLOOKUP** assigning average salary to the jobs.
3. Identifying three major buckets - Age Group, Marital Status and Marital-Education
4. Calculating the response rate using **AVERAGEIF Formula**.
5. Using **Conditional Formatting** to better express the contrast between the response rates
6. **Plotting a horizontal bar graph to visually see the response rate.**
