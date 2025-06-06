```
SciPy (algorithms to use with numpy)
HDF5 (store & manipulate data)
PyTables (managing HDF5 datasets)
HDFS (C/C++ wrapper for Hadoop)
pymongo (MongoDB driver)
SQLAlchemy (Python SQL Toolkit)
```

## Setting Up a Virtual Environment
Creating a virtual environment is a best practice when working with Python, especially for machine learning projects. It helps to manage dependencies and avoid conflicts between packages. We can create a virtual environment using Python's built-in `venv` module.

## Instaling Python Libraries for Machine Learning
With Python installed and your virtual environment activated, you can now install the necessary libraries for machine learning. Common libraries include:

* **Numpy:** NumPy is a popular Python library for multi-dimensional array and matrix processing because it can be used to perform a great variety of mathematical operations. Its capability to handle linear algebra, Fourier transform, and more, makes NumPy ideal for [machine learning and artificial intelligence (AI) projects](https://www.coursera.org/articles/machine-learning-projects), allowing users to manipulate the matrix to easily improve machine learning performance. 

* **Pandas:** Pandas is another Python library that is built on top of NumPy, responsible for preparing high-level data sets for machine learning and training. It relies on two types of [data structures](https://www.coursera.org/articles/what-are-data-structures), one-dimensional (series) and two-dimensional (DataFrame). This allows Pandas to be applicable in a variety of industries, including finance, engineering, and statistics.

* **Matplotlib:** Matplotlib is a Python library focused on data visualization and primarily used for creating beautiful graphs, plots, histograms, and bar charts. It is compatible with plotting data from SciPy, NumPy, and Pandas. If you have experience using other types of graphing tools, Matplotlib might be the most intuitive choice for you.

* **Scikit-learn:** Scikit-learn is a very popular machine learning library that is built on NumPy and SciPy. It supports most of the classic supervised and unsupervised [learning algorithms](https://www.coursera.org/articles/machine-learning-algorithms), and it can also be used for data mining, modeling, and analysis.

* **TensorFlow/PyTorch:** TensorFlow’s open-source Python library specializes in what’s called differentiable programming, meaning it can automatically compute a function’s derivatives within high-level language. Both machine learning and deep learning models are easily developed and evaluated with TensorFlow’s flexible architecture and framework. TensorFlow can be used to visualize machine learning models on both desktop and mobile.

* **Seaborn:** Seaborn is another open-source Python library based on Matplotlib (which focuses on plotting and data visualization) but featuring Pandas’ data structures. It is often used in ML projects because it can generate plots of learning data. Of all the Python libraries, it produces the most aesthetically pleasing graphs and plots, making it an effective choice if you also use it for marketing and [data analysis](https://www.coursera.org/articles/what-is-data-analysis-with-examples).

* **Theano:** Theano is a Python library that focuses on numerical computation and is specifically made for machine learning. It is able to optimize and evaluate mathematical models and matrix calculations that use multi-dimensional arrays to create ML models. Theano is almost exclusively used by machine learning and deep learning developers or programmers.

* **Keras:** Keras is a Python library that is designed specifically for developing neural networks for ML models. It can run on top of Theano and TensorFlow to train [neural networks](https://www.coursera.org/articles/how-do-neural-networks-work). Keras is flexible, portable, user-friendly, and easily integrated with multiple functions. 

* **PyTorch:** PyTorch is an open-source machine learning Python library based on the C programming language framework, Torch. It is mainly used in ML applications that involve natural language processing or computer vision. PyTorch is known for being exceptionally fast at executing large, dense data sets and graphs. 


```shell
$ python -m pip install numpy pandas matplotlib scikit-learn tensorflow
```

## Installing the OpenAI Python Library
With Python and the virtual environment set up, you can now install the OpenAI Python library. Make sure your virtual environment is activated, then run:
```
pip install openai
```
This command will download and install the OpenAI library along with its dependencies, allowing you to start building deep learning applications.

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
