# Solution
## Json Details
### Main Query Object

| Property Name   | Property Description    | Object Type | Nullable | Example |
| --------------- | ----------------------- | ----------- | -------- | ------- |
| mainTableName   | Name of the main table  | String | False | table1 |
| mainTableNameAs | Alias of the main table | String | False | t |
| columns | Columns to include on the select | Array of [Column Object](#column-object) | True | |
| joins | Object to make joins with other tables | Array of [Join Object](#column-object) | True | |
| filters | Object to make all the filters of the table | Array of [Column Object](#column-object) | True | |

### Column Object

| Property Name   | Property Description    | Object Type | Nullable | Example |
| --------------- | ----------------------- | ----------- | -------- | ------- |
| name   | Name of the column  | String | String | False | column1 |
| as | Alias of the column | String | String | False | C1 |

### Join Object

| Property Name   | Property Description    | Object Type | Nullable | Example |
| --------------- | ----------------------- | ----------- | -------- | ------- |
| joinType   | Type of join  | String - Joins Operators | True | INNER JOIN |
| joinOnOperator   | Join operator accepted | String - Compare Operators | False | EQUAL |
| joinOnMainTableColumn   | Type of join  | String | False | t.id |
| joinOnSecondTableColumn   | Type of join  | String | False | t2.id |
| joinWith | Tables to make the join, it can be another table | [Main Query Object](#main-query-object) | True | |

### Filters Object

| Property Name   | Property Description    | Object Type | Nullable | Example |
| --------------- | ----------------------- | ----------- | -------- | ------- |
| filterOperator   | Operator to join the operations | String - Filter Operators | True | OR |
| operations   | Operations to filter the query | Array of Operations Object | False | |

### Operations Object

| Property Name   | Property Description    | Object Type | Nullable | Example |
| --------------- | ----------------------- | ----------- | -------- | ------- |
| operator   | Operator to compare the values | String - Filter Operators | False | GREATER THAN |
| fieldName   | Name of the field | String | False | t.column1 |
| fieldValue   | Value to compare | String | False | value |
| fieldValueType   | Type of the field value | String | False | VARCHAR |

### Compare Operators

| Value  | Description    | Operator Representation |
| ------- | ------------- | ----------- |
| EQUAL | Equal to the other value | = |
| GREATER THAN | Greater than other value | > |
| LESS THAN | Less than other value | < |
| GREATER THAN OR EQUAL TO | Greater than or equal to other value | >= |
| LESS THAN OR EQUAL TO | Less than or equal to other value | <= |
| NOT EQUAL TO | Not equal to other value | <> |
| LIKE | Similar to other value | LIKE
| IN | On the given values list | IN |

### Joins Operators

| Accepted Joins |
| ------- |
| LEFT JOIN |
| INNER JOIN |
| RIGHT JOIN |
| FULL OUTER JOIN |

# Challenge Instructions

## SQLQuery - Coding Assignment

Please ensure that you have installed required IDE on your computer before embarking on this assignment.
You may take a maximum of 8-12 hour to complete this assignment.

* Create object-oriented, scalable, loosely coupled code, and try to look for opportunities to reuse code.
* Use Design patterns wherever appropriate
* Use the best industry practices for commenting, code layout, coding style and naming of objects, members, and methods.
* A simple console application/ a command line application will suffice.
 
 
* ### Problem 1: Create a SQL query supporting various operators ( IN, LIKE, =, <=, >= , <>, BETWEEN etc)

Assume the application you write can have a JSON in the below format to parse and create the expression
```
{"columns":[{"operator":"IN","fieldName":"column1","fieldValue":"value"},{"operator":"Equal","fieldName":"column2","fieldValue":"value"}}
```
As part of your assignment, please write code to implement the following functionalities: -
  * Read the JSON file.
  * Create an SQL QUERY as an output.
* ### Problem 2: 
Extend the program further to support querying from multiple tables i.e., add support for sub-query or joins in the query builder

The idea of this problem should be to provide a generic solution to build SQL Query supporting any number of tables.

## Programming Languages allowed :
* Java
* C#.Net
* Any other Object Oriented Programming Language


## Additional notes:
You are allowed to use whatever libraries/parsers you can find provided you can explain the functions you are implementing in detail. 


## How to complete this challenge:
Fork this repo in github . Include the test code and data in your solution. 
 Add instructions to run your code 

### _Pull request to this repo will be ignored_ 

 
