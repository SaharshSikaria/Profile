# Toy Story Case Study
*Find the SQL file with all the commands used in this folder*</br>
*Find the [DDL Script](ToyStoryQueryFileDatabseCreation.sql) in this folder itself or click on the link*</br>
*Find the [DML Script](ToyStoryQueryFileRunningQuerry.sql) in this folder itself or click on the link*

*The data for this case has been procured online. The data has no copyright issues and it was freely available in the form of an Excel file.*

## Toy Store
#### Online Toy replica wholesale business
We operates globally in every major market. You can visit our website to place orders easily. We provide global shhipping. 

### Our Story
Our Journey began in the year 2000. In the 90s, the morket was completely dominated by the chinese exports. How ever we saw a gap in many product categories. Specifically in areas where kids needed miniatures of latest american and european cars and popular TV cartoon figure miniatures. We started the company with a vow to deliver quality products. Our USP would be to be promote **MADE IN USA** products.

Initially we focused on the small market of San Fancisco. Soon, we realised that this gap existed in many countries. Our most important factor for growth has been our Data Analytics team. We invested in our data team early, around 2010. At that time, not many businesses were making data driven decesions. They helped us make many great decesion. They helped us identify growth markets and high profitability product segments. It boosted our growth.

Today we have offices in 5 major countries. We have been in the business for 20 years now and have become a popular name for toy retailers. 

The following is an exerpt from our Analytics team on how the Data Warehouse was made and contained.

## Data Modeling

The Warehouse was is divided into 3 prominent section
1. Employee Section
2. Customer Section 
3. Product Section 

#### Employee Section
The Employee Section contains two tables. Both of these are **dimensional tables**. 
1. **Employees** Table - This table contains information about companies employees. Each entry in this table is identified uniquely by the ‘employeeNumber’, which is the primary key of this table. Ther is also a **self-refrential** column (ReportsTo). 
2. **Offices** Table - This contains information about the company’s offices that are located worldwide. Each office is uniquely identified by the ‘officeCode’, which is the primary key of this table. Each employee must have only one office against their ID, in which they have to work.

#### Customer Section
The Customet Section contains four tables. Three of them are **fact tables** while the other is a **dimensional table**. 
1. **Customers** Table - This table contains information about customers who buy the models from the company in bulk. They are retailers or shopkeepers who own firms or shops; they are not the final consumers. Each customer is uniquely identified by the ‘customerNumber’, which is the primary key of this table. A particular customer is either assigned an employee or not assigned any. The assigned employee is identified by the ‘salesRepEmployeeNumber’ column in this table. Multiple customers can be assigned to an employee.
2. **Orders** Table - This table contains information about the orders placed by the customers. Each order is uniquely identified by its ‘orderNumber’, which is the primary key of this table. Multiple orders can be placed by a particular customer, but each order should have a unique ‘orderNumber’.
3. **Orderdetails** Table - This table also contains details about the orders placed by the customers. However, both the 'orderNumber’ and ‘productCode’ are part of the composite primary key here.
4. **Payments** Table - This table contains information about the payments made by the customers after placing their orders. Here, you will notice a column named ‘checkNumber’, which refers to the unique number of the check through which the customer (‘customerNumber’) has made the payment. Under this table, ‘checkNumber’ is the primary key.

#### Product Section
The Product Section contains two tables. Both of these are **dimensional tables**.
1. **Products** Table - The ‘products’ table contains information about the different products that are sold by the company. Each product is uniquely identified by the 'productCode’, which is the primary key of this table.
2. **Productlines** Table - This table is a broad categorisation of the type of toy models that are sold by the company, including vintage cars, motorcycles, trains and ships. Each product in the ‘products’ table must have a single product line.

## ER Diagram
<img src = "https://github.com/SaharshSikaria/Test1/blob/main/ER%20Diagram.png"/>

The following were the steps taken to create this Data Warehouse.
1. Studying the requirements of the business
2. Finding out relationship among the data
3. Deciding the fact tables and dimensional tables
4. Creating an ER Diagram
5. Dumping the data into the created Database from an excel file.
