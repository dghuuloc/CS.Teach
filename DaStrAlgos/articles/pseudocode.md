# <p align="center">PSEUDOCODE</p>
---

## What is Pseudocode?
Pseudocode is a way to describe the logic and steps of an algorithm in a human-readable format. It's not a specific programming language but uses keywords and structures similar to common programming languages, making it easier to understand the program's flow without getting bogged down in complex syntax.

## Benefits of Using Pseudocode
- __Improved Readability__: Pseudocode is easier for people without a programming background to understand compared to actual code.
- __Enhanced Planning__: Writing pseudocode helps you plan and design the logic of your program before diving into coding.
- __Language Independence__: Pseudocode is not tied to a specific programming language, so it can be used to represent algorithms that can be implemented in various languages.
- __Error Detection__: Developing the logic in pseudocode can help identify potential errors or inefficiencies before writing actual code.

## Basic Structure of Pseudocode
- __Start and End__: Pseudocode typically starts with a "START" keyword and ends with an "END" keyword, although some variations might omit them.
- __Variables__: Variables are declared and used to store data during the program's execution. You can choose meaningful names for variables to enhance readability.
- __Input and Output__: Pseudocode uses keywords like "READ" or "PRINT" to specify how data is received from the user (input) and how results are displayed (output).
- __Control Flow Statements__: These statements control the flow of execution in your program. Common control flow statements include:
  - __IF/ELSE__: Used for making decisions based on conditions.
  - __FOR__: Used for iterating a specific number of times.
  - __DO WHILE__: Used for looping as long as a condition remains true.
  - __SWITCH/CASE OF__: Used for handling multiple conditions based on a single value.
- __Comments__: Comments are used to explain specific sections of the code or provide additional information for better understanding. They are ignored by the computer during execution but are valuable for human readers.

### Exmaple: Calculating the Area of a Rectangle
Here's an example of pseudocode for calculating the area of a rectangle:
```
START

DECLARE length AS INTEGER
DECLARE width AS INTEGER

PRINT "Enter the length of the rectangle:"
READ length

PRINT "Enter the width of the rectangle:"
READ width

area = length * width  ; Calculate area

PRINT "The area of the rectangle is:", area

END
```
#### Explanation:
- This pseudocode defines variables length and width to store the rectangle's dimensions.
- It prompts the user to enter the length and width using PRINT and READ keywords.
- The area is calculated by multiplying length and width.
- Finally, the calculated area is displayed using PRINT.

#### Tips for Writing Good Pseudocode:
- Use clear and concise language.
- Use meaningful variable names.
- Indent code blocks to improve readability and show hierarchy.
- Add comments to explain complex logic or non-obvious parts of the code.
- Maintain consistency in your formatting and style.

---
## KEYWORDS OF PSEUDOCODE
While pseudocode doesn't have a universally standardized set of keywords, there's a core group commonly used across different styles. Here's a breakdown of the full keywords you'll likely encounter:

### Basic Structure:
- __START/BEGIN__: Marks the beginning of the program. (Sometimes omitted)
- __END__: Marks the end of the program. (Sometimes omitted)

### Data Types and Variables:
- __DECLARE__: Used to declare variables and specify their data types. (Some pseudocode might not explicitly use DECLARE)
-__INTEGER/INT__: Represents integer (whole number) data type.
- __REAL/FLOAT__: Represents real number (decimal) data type.
- __STRING/CHAR__: Represents string (text) data type.
- __BOOLEAN/BOOL__: Represents Boolean data type (TRUE or FALSE).

### Input and Output:
- __READ/INPUT__: Used to get data from the user.
- __PRINT/OUTPUT/WRITE/DISPLAY__: Used to show information as program output.

### Control Flow Statements:
- __IF/ELSE__: Used for conditional branching based on a condition.
- __THEN__: Used in conjunction with IF to specify the code block to execute if the condition is TRUE.
- __ELSE IF__: Used for additional conditional checks within an IF statement.
- __ELSE__: Used to specify the code block to execute if none of the IF or ELSE IF conditions are met.
- __FOR__: Used for loop iterations a specific number of times.
- __TO__: Used with FOR to define the loop's ending point. (Some variations might use keywords like "FROM" or "UNTIL")
- __BY__ (Optional): Used with FOR to specify the increment value for the loop counter.
- __DO WHILE__: Used for loop iterations as long as a condition remains TRUE.
- __WHILE__: Used with DO WHILE to specify the condition that controls the loop's continuation.
- __SWITCH/CASE OF__: Used for multi-way branching based on the value of an expression.
- __CASE__: Used with SWITCH to define a specific case to be checked.
- __WHEN__ (Optional): Used with CASE OF to explicitly state the condition for a case. (May not be used in all variations)
- __DEFAULT/OTHERWISE__ (Optional): Used with SWITCH/CASE OF to handle situations where the expression's value doesn't match any defined case.

### Other:
- __FUNCTION/PROCEDURE__: Used to define reusable blocks of code. (Less common in basic pseudocode)
- __RETURN__: Used within functions/procedures to return a value. (Less common in basic pseudocode)
- __COMMENT__: Used to add explanatory notes within the code (ignored by the computer). You might see variations like "//" or "#" depending on the style.

Remember, the specific keywords and their syntax might vary slightly depending on the pseudocode style being used. However, this list covers the core set you'll encounter most frequently.

---
## CONTROL FLOW STATEMENTS
### `IF` statement written in pseudocode
```
IF (condition) THEN
  code block to execute if the condition is TRUE
ELSE
  code block to execute if the condition is FALSE
END IF
```

#### Explanation:
- __IF (condition)__: This line initiates the if statement. The condition is a boolean expression that evaluates to either TRUE or FALSE.
- __code block to execute if the condition is TRUE__: This indented section of code will only be executed if the condition evaluates to TRUE.
- __ELSE__: This optional clause specifies the code block to be executed if the condition is FALSE. You can omit the ELSE clause if there's no need for alternative code when the condition is false.
- __END IF__: This line marks the end of the if statement.

#### Examples
```
age = 25

IF (age >= 18) THEN
  PRINT("You are eligible to vote.")
ELSE
  PRINT("You are not eligible to vote yet.")
END IF
```
This code checks if the value of the variable age is greater than or equal to 18. If it is, the first code block (PRINT("You are eligible to vote.")) is executed. Otherwise, the code block in the ELSE clause (PRINT("You are not eligible to vote yet.")) is executed.

#### Key Points:
- If statements are fundamental for making decisions based on conditions in your pseudocode.
- The condition can be any valid boolean expression that evaluates to TRUE or FALSE.
- The ELSE clause is optional and provides a way to handle scenarios where the condition is not met.
- Proper indentation is essential for readability when using if statements with optional ELSE clauses.

### `FOR` ... `ENDFOR` written in pseudocode
```
FOR loop_counter = start_value TO end_value [BY increment]
  code block to be executed repeatedly
ENDFOR
```
#### Explanation:
- `FOR loop_counter = start_value TO end_value [BY increment]`: This line initializes the loop.
  - `loop_counter`: This is a variable that will iterate over a range of values. You can choose any meaningful name for this variable.
  - `start_value`: This is the starting value for the loop counter.
  - `end_value`: This is the ending value for the loop counter. The loop will continue iterating as long as the loop counter is less than or equal to the end value (depending on the pseudocode implementation).
  - `BY increment` (optional): This specifies the increment value by which the loop counter will be incremented after each iteration. By default, the increment is assumed to be 1. You can omit this part if you want the increment to be 1.
- `code block to be executed repeatedly`: This is the indented section of code that will be executed repeatedly for each iteration of the loop. The loop counter variable (loop_counter) will have the current iteration value within this code block.
- `ENDFOR`: This line marks the end of the loop's body.

#### Key Points:
- For loops are ideal for iterating a specific number of times when you know the starting and ending points beforehand.
- You can modify the increment value to control how the loop counter changes between iterations.
- For loops provide a concise way to execute a block of code repeatedly.
- 
#### FOR ENDFOR Examples
This code achieves the same functionality as:
```
FOR i = 1 TO 5  ; Loop 5 times
  PRINT i
ENDFOR
```

#### Example 2: Calculating the Sum of Even Numbers from 1 to 10
This example calculates the sum of all even numbers between 1 and 10:
```
DECLARE sum AS INTEGER
sum = 0

FOR i = 2 TO 10 BY 2  //Loop by 2s to get even numbers
  sum = sum + i
NEXT i

PRINT "Sum of even numbers:", sum
```

#### Example 3: Finding the Factorial of a Number
This example calculates the factorial of a number (e.g., 5! = 5 * 4 * 3 * 2 * 1):
```
DECLARE number AS INTEGER
DECLARE factorial AS INTEGER
factorial = 1

PRINT "Enter a non-negative number:"
READ number

IF (number < 0) THEN
  PRINT "Error: Factorial is not defined for negative numbers."
ELSE
  FOR i = 1 TO number
    factorial = factorial * i
  ENDFOR
  PRINT "Factorial of", number, ":", factorial
END IF
```

### `DO WHILE` Loop written in pseudocode
This loop continues executing a code block as long as a certain condition remains true. It's useful when you don't know the exact number of iterations beforehand but have a condition to determine when to stop.

```
DO
  code block to be executed repeatedly
WHILE (condition)
```
#### Explanation
- __Fixed Number of Iterations__: If you know the exact number of times you want to loop, use a FOR loop. Specify the starting and ending values for the counter variable to control the number of iterations.
- __Looping Until a Condition is Met__: If you don't know the exact number of loops but have a condition that determines when to stop, use a DO WHILE loop. The code block will keep executing as long as the condition evaluates to TRUE.

---
### `SWITCH/CASE OF` written in pseudocode
```
SWITCH (expression)
  CASE value1:
    code block to execute if expression equals value1
  CASE value2:
    code block to execute if expression equals value2
  ...
  DEFAULT:
    code block to execute if expression doesn't match any case
END SWITCH
```
#### Explanation
- `SWITCH (expression)`: This line starts the switch statement. The expression is evaluated, and its value is used to determine which case to execute.
- `CASE value1:, CASE value2:...`: These lines define the different cases. Each case has a specific value that the expression must equal for the code block to be executed.
- `code block`: This is the set of instructions to be executed if the expression matches the value of the case. It can be a single line or multiple lines of code, indented for readability.
- `DEFAULT:`: This is an optional case that gets executed if the expression's value doesn't match any of the defined cases. It's a good practice to include a default case to handle unexpected situations.
- `END SWITCH`: This line marks the end of the switch statement.

#### `SWITCH-CASE` Examples
__Example 1: Grading System__
This example uses a switch case to assign a letter grade based on a numerical score:
```
DECLARE score AS INTEGER

PRINT "Enter student's score (0-100):"
READ score

SWITCH (score)
  CASE (score >= 90):
    PRINT "Grade: A"
  CASE (score >= 80):
    PRINT "Grade: B"
  CASE (score >= 70):
    PRINT "Grade: C"
  CASE (score >= 60):
    PRINT "Grade: D"
  DEFAULT:
    PRINT "Grade: F"
END SWITCH
```
Here, the score variable is evaluated by the switch statement. Depending on the value of score, a corresponding letter grade is printed. The DEFAULT case handles any score below 60.

__Example  2: Day of the Week__
This example uses a switch case to determine the day of the week based on a numerical value (1-7):
```
DECLARE day AS INTEGER

PRINT "Enter a number (1-7):"
READ day

SWITCH (day)
  CASE (day == 1):
    PRINT "Monday"
  CASE (day == 2):
    PRINT "Tuesday"
  CASE (day == 3):
    PRINT "Wednesday"
  CASE (day == 4):
    PRINT "Thursday"
  CASE (day == 5):
    PRINT "Friday"
  CASE (day == 6):
    PRINT "Saturday"
  CASE (day == 7):
    PRINT "Sunday"
  DEFAULT:
    PRINT "Invalid day number!"
END SWITCH
```
This example uses comparison operators (==) to check if day matches the specific case values. It also includes an informative message in the DEFAULT case for an invalid input.

These are just a couple of examples, and switch cases can be used in various situations where you need to perform different actions based on a single variable's value.

### `CASE-OF` written in pseudocode
`CASE OF` is another way to express a switch statement in pseudocode. It functions very similarly to the SWITCH construct we discussed earlier. Here's a breakdown

```
CASE OF expression
  WHEN value1:
    code block to execute if expression equals value1
  WHEN value2:
    code block to execute if expression equals value2
  ...
  OTHERWISE:
    code block to execute if expression doesn't match any case
END CASE
```
#### Explanation
- `CASE OF expression`: This line initiates the case statement. The expression is evaluated, and its value is used to determine which case to execute.
- `WHEN value1:, WHEN value2:...`: These lines define the different cases to be checked. Each case has a specific value that the expression must equal for the code block to be executed.
- `code block`: This is the set of instructions to be executed if the expression matches the value of the case. It can be a single line or multiple lines of code, indented for readability.
- `OTHERWISE:`: This is an optional case that gets executed if the expression's value doesn't match any of the defined cases. Similar to DEFAULT in SWITCH.
- `END CASE`: This line marks the end of the case statement.

#### Key Points
- `CASE OF` and `SWITCH` achieve the same functionality. The choice between them depends on the specific pseudocode style being used.
- Both offer a clear and concise way to handle multiple conditions based on a single value.
- Including an `OTHERWISE` or `DEFAULT` case helps ensure the program handles unexpected inputs gracefully.
In essence, `CASE OF` provides an alternative way to write switch statements in pseudocode, offering the same benefits for handling multiple conditions based on a single value.

### `CASE-OF` and `SWITCH` written in pseudocode
`CASE OF` and `SWITCH` are essentially two different ways to represent the same concept in pseudocode: multi-way branching based on the value of an expression. Here's a breakdown of their similarities and differences:

#### Similarities:
- __Functionality__: Both SWITCH and CASE OF statements evaluate an expression and execute a specific code block based on the expression's value matching a defined case.
- __Structure__: They share a similar structure with conditions (cases) and corresponding code blocks to be executed.
- __Default Handling__: Both allow for an optional default case (DEFAULT or OTHERWISE) to handle situations where the expression's value doesn't match any defined case.

#### Differences:
- __Keywords__: SWITCH uses the keywords SWITCH, CASE, and DEFAULT, while CASE OF uses CASE OF, WHEN, and OTHERWISE.
- __Readability__: Some might find CASE OF slightly more readable due to the use of "WHEN" which explicitly states the condition being checked.

In essence, the choice between SWITCH and CASE OF often comes down to personal preference or the specific pseudocode style used. Both achieve the same outcome: providing a structured way to handle different scenarios based on the value of an expression.

---
## `OUTPUT` written in pseudocode
In pseudocode, you'll typically see "PRINT" or "OUTPUT" (and sometimes "WRITE" or "DISPLAY") used to represent how data is displayed to the user. They all essentially mean the same thing: providing information as the program's output.

### A breakdown of their usage:
- __PRINT__: This is the most common keyword used in pseudocode to indicate displaying information. It's generally followed by the data you want to output, which can be:
  - Values of variables (e.g., PRINT "The answer is:", result)
  - Literal strings (e.g., PRINT "Hello, world!")
  - Combinations of both (e.g., PRINT "Your name is:", name)
- __OUTPUT__: This keyword is also widely used and functions similarly to PRINT. It conveys that the program should display some data on the output channel.
- __WRITE__ or __DISPLAY__: While less common, these terms can also be used to represent outputting information. Their meaning aligns with PRINT and OUTPUT.

### Additional points to consider:
- __Formatting__: You might see variations like "PRINT result" or "PRINT The answer is:", result". The specific formatting (spaces, colons) is less important in pseudocode as long as the intent of displaying data is clear.
- __Multiple Values__: You can use commas (",") to separate multiple data items you want to print on the same line (e.g., PRINT name, age).
- __Newline__: If you want to print on a new line, some pseudocode styles might allow adding a special character or keyword (e.g., PRINT "Line 1" + newline + "Line 2"). However, it's generally assumed that each PRINT statement starts on a new line by default.

Overall, the choice between PRINT, OUTPUT, WRITE, or DISPLAY depends on the specific pseudocode style you're using. They all convey the same core concept: instructing the program to present data to the user.


---
## MORE EXAMPLES
### Example 1: Grading System
This example calculates a letter grade based on a numerical score:
```
DECLARE score AS INTEGER

PRINT "Enter student's score (0-100):"
READ score

IF (score >= 90) THEN
  PRINT "Grade: A"
ELSE IF (score >= 80) THEN
  PRINT "Grade: B"
ELSE IF (score >= 70) THEN
  PRINT "Grade: C"
ELSE IF (score >= 60) THEN
  PRINT "Grade: D"
ELSE
  PRINT "Grade: F"
END IF
```
#### Explanation:
- This code declares an integer variable score to store the student's score.
- It prompts the user to enter the score and reads the input using READ.
- The IF/ELSE IF statements implement a series of checks based on the score value.
- Each ELSE IF provides a different grade for a specific score range.
- The final ELSE block handles scores below 60 and assigns an "F".

### Example 2: GCF (Greatest Common Factor)
This example finds the greatest common factor of two numbers:
```
DECLARE num1 AS INTEGER
DECLARE num2 AS INTEGER

PRINT "Enter the first number:"
READ num1

PRINT "Enter the second number:"
READ num2

WHILE (num1 != 0)
  temp = num2 % num1  ; Calculate remainder
  num2 = num1
  num1 = temp
END WHILE

PRINT "Greatest Common Factor:", num2
```

#### Explanation:
- This code declares two integer variables num1 and num2 to store the numbers.
- It prompts the user to enter the numbers and reads the input.
- A DO WHILE loop iterates as long as num1 is not zero (the GCF condition).
- Inside the loop, the modulo operator (%) calculates the remainder when num2 is divided by num1.
- The values of num1 and num2 are swapped using a temporary variable temp.
- After the loop terminates, num2 will hold the GCF of the original num1 and num2.
- Finally, the GCF value stored in num2 is printed.

### Example 3: Password Check
This example checks if a password meets certain criteria:
```
DECLARE password AS STRING
DECLARE minLength AS INTEGER
DECLARE hasUppercase AS BOOLEAN

minLength = 8  ; Minimum password length requirement
hasUppercase = FALSE  ; Flag to track uppercase character

PRINT "Enter your password:"
READ password

FOR i = 1 TO LENGTH(password)
  IF (password[i] >= 'A' AND password[i] <= 'Z') THEN
    hasUppercase = TRUE
    EXIT FOR  ; Exit loop if uppercase character is found
  END IF
NEXT i

IF (LENGTH(password) >= minLength AND hasUppercase) THEN
  PRINT "Password is valid."
ELSE
  PRINT "Password does not meet requirements."
END IF
```

#### Explanation:
- This code declares variables for the password (password), minimum length (minLength), and a flag for uppercase characters (hasUppercase).
- It prompts the user to enter the password and reads the input using READ.
- A FOR loop iterates through each character in the password string (password[i]).
- Inside the loop, an IF statement checks if the current character is uppercase.
- If an uppercase character is found, hasUppercase is set to TRUE, and the loop exits using EXIT FOR.
- After the loop, an IF statement checks if both the password length and uppercase character criteria are met.
- The code displays a message based on whether the password meets the requirements.

---
## References
- [Linked List Data Structure](https://www.tutorialspoint.com/data_structures_algorithms/linked_list_algorithms.htm)
- [Pseudocode](https://en.wikipedia.org/wiki/Pseudocode)
- [How to write a Pseudo Code?](https://www.geeksforgeeks.org/how-to-write-a-pseudo-code/)
