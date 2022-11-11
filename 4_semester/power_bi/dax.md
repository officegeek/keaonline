---
layout: default
title: DAX
nav_order: 2
---

# What is DAX?
DAX stands for **Data Analysis Expressions**, i.e. such expressions or formulas that are used for data analysis and calculations.

DAX formulas are very useful in Power BI, as they help data analysts to use the data sets they have to the fullest potential. DAX is used in Power BI, Excel, Power Pivot and also in Analysis Services.

DAX is a data functional language which has several prebuilt functions, operators and methods which allow us to do calculations on data as well as transformations on it.

## Measures
Measures are useful when you **do not want to compute values for each row**, but, rather you want to aggregate values from many rows in a table. These calculations are measures.

We can create a measure in two ways:

- Click **New Measure** in the Calculations group in Power BI Desktop Home Page
- Click on the **3 dots beside the table name** in the Fields section and selecting New Measure

Syntax to write any measure is: **Measure_name = DAX query**

## Calculated Columns
A calculated column is a column that you add to an existing table (in the model designer) and then create a DAX formula that defines the column’s values. 

Unlike Measures, calculated columns don’t compute the results of the logic dynamically. The calculated column executes the logic as soon as it is created and stores the result data in a separate column. 

Calculated columns you create appear in the Fields list just like any other field, but they’ll have a special icon showing their values are the result of a formula.

Same as Measure, Calculated columns can be created in two ways:

- Click on the table name in which we want to create a calculated column from the Fields and then select New Column from the Table Tools tab
- Click on 3 dots beside the table name in the Fields section and select New Column from it

## DAX Aggregation Functions

### COUNT
The COUNT function counts the number of cells in a column that contain non-blank values.

Syntax: COUNT(<Column Name>)
  
### COUNTBLANK
CountBlank function computes the number of cells in the corresponding column of the data which have blank values.

Syntax: COUNTBLANK(<Column Name>)
  
### COUNTROWS
CountRows function computes the number of rows in the corresponding table specified or the table returned as the output of some expression.

Syntax: COUNTROWS([<Table Name>])
  
### DISTINCTCOUNT
DistinctCount function computes the number of distinct values in the corresponding column specified. If any blank values are present in the column DISTINCTCOUNT function includes the blank value as one distinct value. This function will not exclude blanks. There is a different function for this.

Syntax: DISTINCTCOUNT(<Column Name>)

### AVERAGE
The average function in DAX takes in any column that has Numerical data and computes the average of values present in the column and returns it. If any blank value is present in the column, then the value is neither counted in the number of rows nor in the sum of values. If non-numerical data is present and the average can’t be computed it returns the blank value.

Syntax: AVERAGE(<Column Name>)

### SUM
The sum function in DAX takes in any column that has Numerical data and computes the sum of values present in the column and returns it.

Syntax: SUM(<Column Name>)

### SUMX
The Sumx function basic functionality is to compute the sum like sum function, but SUMX function takes in two arguments. The first argument specifies the table or expression that returns the table, and second argument is a column name that contains numerical data for calculating the sum. Blanks, logical values, and text are ignored.

Syntax: SUMX(<Table>,<Expression>)

### MAX
The Max function takes in either a column or two scalar expressions and computes the maximum and returns it. Here True/False values are not supported.

Syntax: MAX(<Column Name>) or MAX(<Expression1>,<Expression2>)
  
### MINA
MINA function takes in a column that has numerical data and computes the minimum values. If the column contains no values, MINA returns 0 (zero). Rows in the column that evaluates logical values, such as TRUE and FALSE are treated as 1 if TRUE and 0 (zero) if FALSE. Empty cells are ignored.

Syntax: MINA(<Column Name>)
 
### MIN
MIN function takes in a column that has not only numerical data but also text, and date data types and computes the minimum of values. TRUE/FALSE values are not supported.

Syntax: MIN(<Column Name>) or MIN(<Expression1>,<Expression2>).

  
## DAX Filter Functions
Filter functions in DAX are one of the most complex and powerful functions in DAX. They are extensively used in PowerBI. The filtering functions let you manipulate data context to create dynamic calculations and data masks.
  
### CALCULATE
This function evaluates the expression in the applied filter context. Suppose you want to calculate the Sum of the Values of the corresponding table where the data belongs to the country Canada, we use calculate function and calculate the sum of values of data filtered by the filter condition applied.

Syntax: CALCULATE(<expression>[, <filter1> [, <filter2> [, …]]])
  
### FILTER
This function takes in the table, and the filter condition or expression by which the specified table is filtered and returns a table filtered by the specified condition.

Syntax: FILTER(<table>,<filter>)
  
  
  
  
  
  
### ISNUMBER
Checks whether a value is a number, and returns TRUE or FALSE.

### CROSSJOIN
Returns a table that is a cross join of the specified tables.

### MEDIAN
Median is nothing but the middle value, so here we can say that the Median function will return the 50th percentile of values in a column.

### CONCATENATE
Concatenate, means linking (things) together while in DAX function Concatenate Joins two text strings into one text string.

### CALENDAR
Returns a table with one column of all dates between Start Date and End Date.
