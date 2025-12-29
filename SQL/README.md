# <p align="center"> MySQL </p>

#### **FULL OUTER JOIN**
MySQL doest not support `FULL JOIN`. To get an equivalent result, use a combination of `LEFT JOIN`, `UNION ALL`, and `RIGHT JOIN`, which outputs a union of `table 1` and `table 2`, returning all records from both tables. The columns existing only in one table will be displayed as NULL in the opposite table.

```mysql
SELECT * FROM table1
LEFT JOIN table2 ON table1.matching_column = table2.matching_column
UNION ALL
SELECT * FROM table1
RIGHT JOIN table2 ON table1.matching_column = table2.matching_column
```
