# <p align="center"> Pandas </p>
---

## Pandas Getting Started

## Data Input
Both DataFrame and Series accept a variety of data inputs including:
* **ndarray**  — a NumPy array, which can be heterogeneous (different data types allowed) or homogeneous (all elements have the same data type).
* **ndarray**  — a NumPy array, which can be heterogeneous (different data types allowed) or homogeneous (all elements have the same data type).
* **dict**   — a Python dictionary. Just like in a dictionary where you look up words to find their meanings, in a Python dictionary, you look up 'keys' to find their 'values'.The values in the dictionary can be Series, arrays, constants, dataclass instances, or list-like objects.

## Pandas Series (list)
```python
import pandas as pd
series = pd.Series(data=None, index=None, dtype=None, name=None)
```

## Pandas DataFrames (object of list)
```python
import pandas as pd
df = pd.DataFrame(data=None, index=None, columns=None, dtype=None)
```

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

## Data loading
### Load the CSV file into a DataFrame
#### to_string() method
A simple way to strore big data sets us to use CSV files (comma separated files).
```python
import pandas as pd
df = pd.read_csv
print(df.to_string())
```
> [!TIP]
> use `to_string()` to print the entire DataFrame

* If you have a large DataFrame with many rows, Pandas will only return the first 5 rows, and the last 5 rows:
#### max_rows
Check system's maximum rows with the `pd.options.display.max_rows` statement.
```python
import pandas as pd
# check the number of maximum returned rows
print(pd.options.display.max_rows)

# Change the maximum rows number
pd.options.display.max_rows = 9999 
```
In my system the number is 60, which means that if the DataFrame contains more than 60 rows, the print(df) statement will return only the headers and the first and last 5 rows.
### Load the JSON file into a DataFrame

