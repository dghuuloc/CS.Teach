# <p align="center"> NumPy </p>
---

## Creating a Vertical Vector
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
### Key Points
* **Numpy:** The `numpy` library is essential for numerical operations in Python, including vector and matrx manipulation.
* **Shape:** A horizontal vector has a shape lke `(n,)`, while a vertical vector has a shape like `(n, 1)`
* **`np.newaxis`:** This is an alternative way to add a new dimension to an array, useful for creating column or row vectors.
* **2D Array:** A column vector can be represented as a 2D array where each element is in its own row.


