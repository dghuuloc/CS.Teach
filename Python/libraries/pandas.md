# <p align="center"> Pandas </p>
---

## Pandas Getting Started

## Pandas Series

## Pandas DataFrames

## Differences Between Pandas Series and DataFrame
### Series:
* A Series is a one-dimensional labeled array capable of holding any data type (integers, strings, floating-point numbers, Python objects, etc.).
* It has a single index, which labels each element in the array
* Series are **homogenous**, meaning they can _only hold data of a single type_.
* It can be thought of as a single column of a DataFrame.
* Size-immutable – Once created, the size of a Series object cannot be changed.
### DataFrame:
* A DataFrame is a two-dimensional labeled data structure with columns of potentially different types
* It can be seen as a table with rows and columns, similar to a SQL table or a spreadsheet.
* DataFrames have both row and column indexes, which can be used to access and manipulate the data
* A DataFrame can be created from scratch, from other data structures like NumPy arrays, or from a dictionary of Series.
* Size-mutable – Elements can be dropped or added in an existing DataFrame.

In essence, a DataFrame can be thought of as a collection of Series, where each column is a Series. They are both essential for data analysis and manipulation using the pandas library. 

## Pandas Read Data
### Read CSV

### Read JSON
