# <p align="center"> NumPy </p>
---

## NumPy's Data Types
NumPy offers a wider range of numerical data types than what is available in Python. Here's the list of most commonly used numeric data types in NumPy:
* `int8`, `int16`, `int32`, `int64` - signed integer types with different bit sizes
* `uint8`, `uint16`, `uint32`, `uint64` - unsigned integer types with different bit sizes
* `float32`, `float64` - floating-point types with different precision levels
* `complex64`, `complex128` - complex number types with different precision levels
* `int_`, `float_`, `complex_`

### Create Arrays With a Defined Data Type
We can create an array with a defined data type by specifying `dtype` attribute in `numpy.array()` method while initializing an array.
```python
import numpy as np

arr1 = np.array([1, 3, 5, 6], dtype=np.float64)

# Creating a 3x3 int32 array of zeros
arr2 = np.zeros((3, 3), dtype=np.int32)  

# Creating a 2x2 complex128 array of ones
arr3 = np.ones((2, 2), dtype=np.complex128)  

# Creating a 1D bool array
arr4 = np.empty((4,), dtype=np.bool_)  
```
### Convert Dat Type of NumPy Arrays
We can convert data type of an arrays from one type to another using `astype()` function.
```python
import numpy as np

arr1 = np.array([1.2, 2.5, 3.7])
# Converting to int32
arr2 = arr1.astype(np.int32)
```

## Scalars
* A scalar is a single numerical value. It's a 0-dimensional entity.
* In Python, scalars are typically represented using basic numeric types like `int`, `float`, or NumpPy's scalar types(e.g., `np.int32`, `np.float64`)
* Scalars are used to represent individual data points or parameters.
```python
import numpy as np

scalar_int = 5
scalar_float = 3.14
scalar_np = np.int32(10)
```

## Vectors
* A vector is a 1-dimensional array of numbers. It has both magnitude and direction.
* In Python, vectors are commonly represented using lists or NumPy arrays.
* Vectors can represent features, data points, or weights in machine learning models.
```python
import numpy as np

vector_list = [1, 5, 7]
vector_np = np.array([4, 5, 6))
```
### Creating a Vertical Vector
* **Using `np.array` and `reshape`**
```python
import numpy as np

vctor_horizontal = np.array([1, 3, 5, 6, 8])
vector_vertical = vector_horizontal.reshape(-1, 1)
print(vector_vertical)
```
This code first creates a horizontal array and then reshapes it into a column vector. The `-1` in `reshape` automatically calculates the correct number of rows.
* **Using `np.newaxis**
```python
import numpy as np

vactor_horizontal = np.array([1, 3, 5, 6, 8])
vector_vertical = vector_horizontal[:, np.newaxis]
print(vector_vertical)
```
This approach adds a new axis to the array, effectively turning it into a column vector.
* Directly Creating a 2D Array.
```python
import numpy as np

vector_vertical = np.array([[1], [3], [5], [6], [8]]
print(vector_vertical)
```
#### Key Points
* **Numpy:** The `numpy` library is essential for numerical operations in Python, including vector and matrx manipulation.
* **Shape:** A horizontal vector has a shape lke `(n,)`, while a vertical vector has a shape like `(n, 1)`
* **`np.newaxis`:** This is an alternative way to add a new dimension to an array, useful for creating column or row vectors.
* **2D Array:** A column vector can be represented as a 2D array where each element is in its own row.

## Matrices
* A matrix is a 2-dimensional array of numbers, arranged in rows and columns.
* In Python, matrices are usually represented using nested lists or NumPy arrays.
* Matrices are used to represent datasets, transformations, and relationships between data.
```python
import numpy as np

matrix_list = [[1, 2], [3, 4]]
matrix_np = np.array([[5, 6], [8, 9]])
```
### Create Matrices using `np.mt()` method and `np.matrix()` method
```python
import numpy as np

# Creating a matrix using numpy.matrix() function
inputMatrix = np.matrix([[5, 3, 9, 11],
   [4, 5, 6, 23],
   [7, 8, 9, 84]])

# Creating a matrix using numpy.mat() function
inputMat = np.mat([[1, 2, 3],
   [4, 5, 6],
   [7, 8, 9]])
```


## Tensors
* A tensor is a generalization of scalars, vectors, and matrices to n-dimensions.
* Tensors are the fundamental data structure in machine learning frameworks like TensorFlow and PyTorch.
* In Python, tensors are typically represented using NumPy arrays or specialized tensor objects from these frameworks.
* Tensors with more than two dimensions are often used to represent image data, video data, or other complex data structures.
```python
import numpy as np

tensor_np = np.array([[[1, 2], [3, 4]], [[5, 6], [7, 8]]]) # 3D tensor

import tensorflow as tf
tensor_tf = tf.constant([1, 2, 3, 4]) # TensorFlow tensor

import torch
tensor_torch = torch.tensor([1, 2, 3, 4]) # PyTorch tensor
```
