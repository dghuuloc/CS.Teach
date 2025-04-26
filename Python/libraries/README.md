```
pandas (data analysis)
NumPy (multi-dimensional arrays)
SciPy (algorithms to use with numpy)
HDF5 (store & manipulate data)
Matplotlib (data visualization)
Jupyter (research collaboration)
PyTables (managing HDF5 datasets)
HDFS (C/C++ wrapper for Hadoop)
pymongo (MongoDB driver)
SQLAlchemy (Python SQL Toolkit)
```

## Setting Up a Virtual Environment
Creating a virtual environment is a best practice when working with Python, especially for machine learning projects. It helps to manage dependencies and avoid conflicts between packages. We can create a virtual environment using Python's built-in `venv` module.


## Instaling Python Libraries for Machine Learning
With Python installed and your virtual environment activated, you can now install the necessary libraries for machine learning. Common libraries include:
* **Numpy:** For numerical computations.
* **Pandas:** Fro data manipulation and analysis.
* **Matplotlib:** For data visualization.
* **Scikit-learn:** For machine learning algorithms.
* **TensorFlow/PyTorch:** For deep learning.
```shell
$ python -m pip install numpy pandas matplotlib scikit-learn tensorflow
```

## Installing the OpenAI Python Library
With Python and the virtual environment set up, you can now install the OpenAI Python library. Make sure your virtual environment is activated, then run:
```
pip install openai
```


---
## 1. NumPy
* **Purpose:** _NumPy is the fundamental package for numerical computation in Python. It provides support for multi-dimensional arrays and matrices, along with a large collection of mathematical functions to operate on these arrays._

* Array Creation
You can create Numpy arrays from Python lists using `np.array()`:
  * `np.array([1, 2, 3])`  --> creates a 1D array
  * `np.array([[1, 2], [3, 4]])`  --> generates a 2D arrays (a matrix)
  * `np.array([[[1, 2], [3, 4]], [[5, 6], [7, 8]], [[9, 10], [11, 12]]])` --> creates a 3D array
* Other useful functions include `np.zeros()`, `np.ones()`, and `np.arange()`, that create arrays filled with zeros, ones, or a sequence of numbers, respectively.

* Array Manipulation
You can change the shape of an array with `reshape`, transpose arrays with `.T`, and join or split arrays with functions such as `concatenate`, `vstack`, `hstack`, `split`.
```py
import numpy as np

a = np.array([1, 2, 3]) # Creating an array

# Elementary operations
b = a * 2  # Multiply each element by 2
c = a + b  # Sum of two arrays

# Reshape
d = np.arange(9).reshape(3, 3)  # Creates a 3x3 matrix

# Indexing
e = d[1, 2]  # Accesses the element in the second row, third column
```
---
## 2. Pandas
* **Purpose:** _Pandas is built on top of NumPy and is designed for data manipulation and analysis. It provides easy-to-use data structures like DataFrames and Series for handling structured data._
* **Essential keys for working with Pandas:**
  * **Reading Data:**
    * Pandas can read data from various file formats, including CSV, Excel, Json, SQL database, and more
    * Use the `read_csv()`, `read_excel()`, `read_json()`, `read_sql_table()` function to read data:
      ```py
       df = pd.read_csv('data_file_path.csv')
      ```
  * **Data Structure:**
    * **Series:** A one-dimensional data structure, similar to a column or a list. It has both indexes and values.
      ```py
       series = pd.Series([1, 3, 5, ,7 ,9])
      ```
    * **DataFrame:** A multi-dimensional data structure consisting of rows and columns. It can be thought of as a combination of multiple Series.
      ```py
       data_frame = {'col1': [1, 3, 5], 'col2': [2, 4, 6]}
       df = pd.DataFrame(data_frame)
      ```
  * **Data Exploration:** `head()`, `tail()`, `info()`, `describe()`, `index`, `values`
    * `describe()` --> Returns summary: `count`, `mean`, `std`, `min`, `25%`, `50%`, `75%`, `max`
  * **Data Selection:**
    * Select coumns by name `df['col1']`
    * Select rows using slicing `df[1:3]`
    * Select rows based on conditions `df[df['col1'] > 1]`
  * **Data Manipulation:**
    * Add new columns
      ```py
       df['new_col'] = df[col1'] + df['col2']
      ```
    * `rename(index)` → Renames column or index names. For example, `rename(columns={'old_col1': 'new_col1'})`
    * `drop(labels)` → Drops specified value. For example, `df.drop('col2', axis=1)`
    * `pop(item)` → Removes and returns the specified value. For example, `s.pop(2)`
    * `replace(to_replace)` → Replaces specified values. For example, `replace(40, 99)`
  * **Working with missing data**
    * `isna()` --> detects missing values
    * `notna()` --> detects non-missing values
    * `fillna()` --> fills missing values
    * `dropna()` --> drops missing values
  * **Transformation and Mapping**
    * `map(func)` --> applies a function to each element. For example, `series.map(lambda x: x * 2)`
    * `apply(func)` --> applies a function to each element. For example, `series.apply(str))`
    * `astype(dtype)` --> changes the data type. For example, `series.astype(float)`
  * **Data Aggregation (Statistics and Analysis):**
    * `mean()` --> Calculates the mean
    * `median()` --> returns the median value
    * `sum()` --> returns the sum
    * `min()` --> returns the smallest value
    * `max()` --> returns the largest value
    * `std()` --> returns the standard deviation
    * `unique()` --> returns the number of unique values
    * `value_counts()` --> returns the frequency of values
  * **Time Series data:**
    * Convert strings to datetime objects using `to_datetime()`:
      ```py
        df['date'] = pd.to_datetime(df['date'])
      ```
    * Extract date components (e.g., year, month, day):
      ```py
        df['year'] = df['date'].dt.year
      ```
  * Data Output: `to_csv()`, `to_excel()`, `to_json()`

## Reference
* [NumPy: The Fundamental Tool for Data Science in Python](https://medium.com/@m.franfuentes/numpy-the-fundamental-tool-for-data-science-in-python-fa2b605a3bf9)
* [What Is pandas?](https://www.nvidia.com/en-us/glossary/pandas-python/)
