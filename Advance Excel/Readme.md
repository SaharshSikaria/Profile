# Advance Excel
## Case 1 - Canadian Superstore - Sales Data Analysis
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

