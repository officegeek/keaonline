---
layout: default
title: DAX
parent: Microsoft Power BI
has_children: false
nav_order: 20
---

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

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

**Syntax**: *COUNT(<Column Name>)*
  
### COUNTBLANK
CountBlank function computes the number of cells in the corresponding column of the data which have blank values.

**Syntax**: *COUNTBLANK(<Column Name>)*

### COUNTROWS
CountRows function computes the number of rows in the corresponding table specified or the table returned as the output of some expression.

**Syntax**: *COUNTROWS([<Table Name>])*

### DISTINCTCOUNT
DistinctCount function computes the number of distinct values in the corresponding column specified. If any blank values are present in the column DISTINCTCOUNT function includes the blank value as one distinct value. This function will not exclude blanks. There is a different function for this.

**Syntax**: *DISTINCTCOUNT(<Column Name>)*

### AVERAGE
The average function in DAX takes in any column that has Numerical data and computes the average of values present in the column and returns it. If any blank value is present in the column, then the value is neither counted in the number of rows nor in the sum of values. If non-numerical data is present and the average can’t be computed it returns the blank value.

**Syntax**: *AVERAGE(<Column Name>)*

### SUM
The sum function in DAX takes in any column that has Numerical data and computes the sum of values present in the column and returns it.

**Syntax**: *SUM(<Column Name>)*

### SUMX
The Sumx function basic functionality is to compute the sum like sum function, but SUMX function takes in two arguments. The first argument specifies the table or expression that returns the table, and second argument is a column name that contains numerical data for calculating the sum. Blanks, logical values, and text are ignored.

**Syntax**: *SUMX(<Table>,<Expression>)*

### MAX
The Max function takes in either a column or two scalar expressions and computes the maximum and returns it. Here True/False values are not supported.

**Syntax**: *MAX(<Column Name>) or MAX(<Expression1>,<Expression2>)*

### MINA
MINA function takes in a column that has numerical data and computes the minimum values. If the column contains no values, MINA returns 0 (zero). Rows in the column that evaluates logical values, such as TRUE and FALSE are treated as 1 if TRUE and 0 (zero) if FALSE. Empty cells are ignored.

**Syntax**: *MINA(<Column Name>)*

### MIN
MIN function takes in a column that has not only numerical data but also text, and date data types and computes the minimum of values. TRUE/FALSE values are not supported.

**Syntax**: *MIN(<Column Name>) or MIN(<Expression1>,<Expression2>)*

## DAX Filter Functions
Filter functions in DAX are one of the most complex and powerful functions in DAX. They are extensively used in PowerBI. The filtering functions let you manipulate data context to create dynamic calculations and data masks.
  
### CALCULATE
This function evaluates the expression in the applied filter context. Suppose you want to calculate the Sum of the Values of the corresponding table where the data belongs to the country Canada, we use calculate function and calculate the sum of values of data filtered by the filter condition applied.

**Syntax**: *CALCULATE(<expression>[, <filter1> [, <filter2> [, …]]])*

### FILTER
This function takes in the table, and the filter condition or expression by which the specified table is filtered and returns a table filtered by the specified condition.

**Syntax**: *FILTER(<table>,<filter>)*


## DAX Time Intelligence Functions
Time Intelligence functions in DAX are different from Time and Date functions. 
  
Time Intelligence functions enable you to manipulate data based on the time or date periods, such as including days, excluding days, adding days, getting time periods etc. and then building calculations or comparisons on top of it. 
  
Let’s have a look at some of the most used Time intelligence functions along with some of the best use cases for those functions.

### DATEADD
This function takes in three arguments, first one being the column that has dates and second argument represents the number of intervals and the third argument specifies the type of interval (day, month, year, quarter). It returns a table of one column that contains dates which are either shifted forward or backward as specified by time interval.

**Syntax**: *DATEADD(<dates>,<number_of_intervals>,<interval>)*

### DATESBETWEEN
This function returns a table with one column that contains all the dates between the specified start date and end date range. If BLANK() is passed as the value for the start date, then the start date will be the earliest date in the dates column and if the last date is BLANK() then it will be the latest value.

**Syntax**: *DATESBETWEEN(<dates>,<start_date>,<end_date>)*

### NEXTDAY
This function takes in a dates column as input and returns a table that contains a column of all dates from the next day based on the first date specified in the dates column.

**Syntax**: *NEXTDAY(<dates>)*
  
### PREVIOUSDAY
This function takes in a dates column as input and returns a table that contains a column of all dates from the previous day based on the first date specified in dates column.

**Syntax**: *PREVIOUSDAY(<dates>)*
  
### DATESYTD
This function takes in a mandatory argument and an optional argument. The mandatory argument is the column that contains dates and the Optional column is a string literal that specifies the year-end date. Its default value is 31st December.

This function returns a table that contains a column of the dates for the year to date.

**Syntax**: *DATESYTD(<dates> [,<year_end_date>])*
  
### DATESMTD
This function takes in an argument is the column that contains dates and returns a table that contains a column of the dates for the month to date.

**Syntax**: *DATESMTD(<dates>)*
  
## DAX Date and Time Functions
Date and Time functions in DAX are different from Time Intelligence functions. 
  
We have seen that using the Time Intelligence functions we can manipulate data based on the Date columns using Time Intelligence functions manipulations. Whereas Date and time functions are used to manipulate the data present in the Date columns in Power BI. 
  
These functions use the Date Time data type, and the output is always returned in Date time format. However, we can explicitly change the data format of a column in Power BI.
  
### CALENDAR
This function takes in start date and end date values as arguments and returns a table with a single column that contains the contiguous set of dates specified by the start date and end date range.

**Syntax**: *CALENDAR(<start_date>, <end_date>)*

### MONTH
This function takes a date in date time or text format as an argument and returns month number 1(January) to 12 (December).

**Syntax**: *MONTH(<datetime>)*

### DATEDIFF
This function takes in three arguments: start date, end date and interval (day, month, quarter, year, week, second, minute, hour). The function computes the difference between the start date and the end date according to the specified interval.

**Syntax**: *DATEDIFF(<start_date>,<end_date>,<interval>)*

### WEEKDAY
This function takes in a mandatory argument and an optional argument. The mandatory argument is the date in date time format and the optional argument is the return type. WeekDay returns a number from 1 to 7 identifying the day of the week of a date. By default, the day ranges from 1 (Sunday) to 7 (Saturday).

**Syntax**: *WEEKDAY(<date>, <return_type>)*
  
### WEEKNUM
We all know that there are 52 weeks in a year. WEEKNUM function Returns the week number for the given date according to the return_type value. The week number indicates where the week falls numerically within a year. Return type indicates when the week begins.

**Syntax**: *WEEKNUM(<date>[, <return_type>])*
  
## DAX Logical Functions
Logical functions are used in order to test whether a situation is true or false. 

Depending on the result of that test, you can then elect to do one thing or another. These decisions can be used to display information, perform different calculations, or perform further tests. Logical functions act upon an expression to return information about the values or sets in the expression. 

For example, you can use the IF function to check the result of an expression and create conditional results.

### IF
This function is used to check for a condition and if the condition satisfies return something else and return some other thing. This function takes two mandatory arguments: A conditional expression and returns the value if true, and one optional argument returns the value if false.

**Syntax**: *IF(<logical_test>, <value_if_true>[, <value_if_false>])*
  

### AND
This function represents the same functionality of AND operator but as a function. Checks whether both arguments are true and return TRUE if both arguments are true. Otherwise returns false.

**Syntax**: *AND(<logical1>,<logical2>)*
  
### OR
This function represents the same functionality of the OR operator but as a function. Checks whether one of the arguments is true to return TRUE. The function returns FALSE if both arguments are false.

**Syntax**: *OR(<logical1>,<logical2>)*
  
### COALESCE
This function returns the first expression that does not evaluate to blank. If all expressions evaluate as blank, BLANK is returned.

**Syntax**: *COALESCE(<expression>, <expression>[, <expression>]…)*
  
### SWITCH
This function is like Switch case statements in a programming language. Switch Evaluates an expression against a list of values and returns one of the multiple possible result expressions.

**Syntax**: *SWITCH(<expression>, <value>, <result>[, <value>, <result>]…[, <else>])*
  
## Mathematical and Trigonometric Functions
Mathematical and Trigonometric functions are used to perform mathematical calculations on numeric data such as addition, division, getting sine of value etc. 

DAX provides almost many Mathematical and trigonometric functions that are available in Mathematics. Such as *Round, Floor, Ceil, Fact, Division, Product, Absolute, Sin, Cos, Tan, PI, Even, GCD, LCM, HCF* and many more.

### ABS
This function takes in a number or numerical data and returns its absolute value. The absolute value of 1 is 1 and -1 is also 1.

**Syntax**: *ABS(<number>)*
  
### CEILING
Generally, a ceil function rounds a number up to the nearest integer. For example, ceil value of 4.1 would be 5. DAX provides a Ceiling function such that the number can be rounded up, to the nearest integer or to the nearest multiple of significance.

**Syntax**: *CEILING(<number>, <significance>)*
  
### FLOOR
Generally, a floor function rounds a number down to the nearest integer. For example, a floor value of 4.8 would be 4. DAX provides a floor function such that the number can be rounded down, to the nearest integer or to the nearest multiple of significance

**Syntax**: *FLOOR(<number>, <significance>)*
  
### ROUND
A round function rounds a decimal number to a specified number of digits. For example, a value of 4.13 rounded to two one digit would be 4.1. DAX Provides a ROUND function to round the number to a specified number of digits.

**Syntax**: *ROUND(<number>, <num_digits>)*
  
### DIVIDE
Divide function takes column in the first argument as numerator and column in the second argument as the denominator and performs division and returns the alternate result or BLANK() on division by 0.

**Syntax**: *DIVIDE(<numerator>, <denominator> [,<alternateresult>])*

  
## DAX Text Functions
Text functions are those which are used to manipulate textual data such as trimming, searching or substituting strings, converting to upper case and lower case, concatenating strings etc. 

DAX includes a set of text functions based on the library of string functions in Excel, but which have been modified to work with tables and columns in tabular models.

### CONCATENATE
This function takes in two arguments which are textual data and concatenates data in it. It adds the contents of the second argument to the first and returns it.

**Syntax**: *CONCATENATE(<text1>, <text2>)*
  
### UPPER, LOWER:
The UPPER function takes in text or any textual column and converts the text into upper case.

The LOWER function takes in text or any textual column and converts the text into lowercase.

**Syntax**: *UPPER (<text>)* , *LOWER (<text>)*  
  
### LEN
This function takes in any text or text column and returns the number of characters in it.

**Syntax**: *LEN(<text>)*

### TRIM
The trim function basically removes the trailing white spaces. It doesn’t remove the white spaces present between the words, but if any white spaces are found at the starting of the string or end are removed.

**Syntax**: *TRIM(<text>)*
  
### SUBSTITUTE
This function replaces the specified new text with existing text in specified column. Instance_num talks about the occurrence of old_text you want to replace. If omitted, every instance of old_text is replaced.

**Syntax**: *SUBSTITUTE(<text>, <old_text>, <new_text>, <instance_num>) * 

## Links
- [docs.microsoft.com/en-us/dax/dax-overview](https://docs.microsoft.com/en-us/dax/dax-overview)
- [docs.microsoft.com/en-us/power-bi/transform-model/desktop-calculated-columns](https://docs.microsoft.com/en-us/power-bi/transform-model/desktop-calculated-columns)
- [docs.microsoft.com/en-us/dax/aggregation-functions-dax](https://docs.microsoft.com/en-us/dax/aggregation-functions-dax)
- [docs.microsoft.com/en-us/dax/date-and-time-functions-dax](https://docs.microsoft.com/en-us/dax/date-and-time-functions-dax)
- [docs.microsoft.com/en-us/dax/filter-functions-dax](https://docs.microsoft.com/en-us/dax/filter-functions-dax()
- [docs.microsoft.com/en-us/dax/math-and-trig-functions-dax](https://docs.microsoft.com/en-us/dax/math-and-trig-functions-dax)
- [docs.microsoft.com/en-us/dax/text-functions-dax](https://docs.microsoft.com/en-us/dax/text-functions-dax)
