# <p align="center">Pandas</p>
---

## Setting up Pandas

If you have Python and pip installed, run pip install pandasfrom your terminal or cmd.

```
python -m pip install pandas
```

To start using Pandas, you need to import it:

``` python
import pandas as pd
```

``` python
import pandas as pd

pd.set_option('display.max_rows', None)
df = pd.read_csv('data.csv')
print(df)
```

If we want to display all rows from data frame. We need to set this value as `NONE` or `more than total rows` in the data frame as below.

## Pandas data structures

Pandas has two prime data structures, `Series` and `DataFrame`. These two data structures are built on NumPy arrays, making them fast for data analysis.

A `Series` is a one-dimensional labeled array structure that we can view as a column in an excel sheet in most cases.

A `DataFrame` is a two-dimensional array structure and is mostly represented as a table.


### How to create a dataframe.

A dataframe accepts list nested in a dictionary. You will need to create the nested dictionary before you could create a dataframe.

``` python
import pandas as pd
Dict = {"Names" : ["Scott", "Abey", "Boluwatife ", "Thomas ", "Mike",],
"Scores" : [67, 82, 98, 46, 89]
}
df =pd.DataFrame(Dict) 
```

You can print the df to see how it looks, exactly like a table.

N:B a list is nested in the dictionary. The keys in the dictionary will be the heads of the tables and each value which is a list will be the items in heads

