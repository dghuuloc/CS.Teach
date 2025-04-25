# <p align="center">Pseudocode: A Short Guide</p>

## What is Pseudocode?
* Pseudocode is a way to plan a program using plain, simple English to describe the logic without worrying about specific syntax of a programming language.
* Think of it as a rough draft that focuses on what the program should do, not how to write the exact code.
## Structure of Pseudocode
Pseudocode should:
* Be clear and easy to understand.
* Avoid specific programming language syntax (no need for semicolons, brackets, etc.).
* Use simple English phrases to describe the actions or processes.
## Key Elements of Pseudocode
* **Input/Output:** `INPUT`, `OUTPUT`, `PRINT`, `READ`, `GET`, `SET`, `INIT`
* **Mathematical operations**
  * **Assignment:** `←` or `:=`
  * **Comparison:** `=`, `≠`, `<`, `>`, `≤`, `≥`
  * **Arithmetic:** `+`, `−`, `×`, `/`, `mod`
  * **Floor/ceiling:** `⌊`, `⌋`, `⌈`, `⌉`
  * **Sums, products:** `Σ` `Π`
* **Conditional Statements:** `IF`, `THEN`, `ELSE IF`, `ELSE`, `END IF`, `FOR`, `WHILE`, `DO`, `END FOR`, `END WHILE`, `REPEAT`, `UNTIL`, `CASE`, `OF`, `END CASE`
* **Data Handling:** `SET`, `INCREMENT`, `DECREMENT`, `INITIALIZE`.
* **Functions and Procedures:** `FUNCTION`, `CALL`, `RETURN`, `PROCEDURE`, `END FUNCTION`, `END PROCEDURE`.
* **Logical Operators:** `AND`, `OR`, `NOT`

## Basic Structures
### 1. Input and Output
```
PRINT "Enter your name: "
INPUT userName
PRINT "Hello, " + userName
```
### 2. Variables and Assignment
```
SET age TO age
name := "Alice"
names ← ['Fortnite', 'Call of Duty', 'Battlefield']
DECLARE totalRainfall AS INTEGER
DECLARE myArr AS ARRAY OF INTEGER INITIALLY []
```
### 3. Conditional Statements (IF-ELSE)
**Example: Check if a Number is Positive, Negative, or Zero**
```
INTPUT number
IF age > 0 THEN
	PRINT "The number is positive"
ELSE IF number < 0 THEN
	PRINT "The number is negative"
ELSE
	PRINT "The number is zero"
END IF
```
### 4. Loops
#### a. While loop
```
SET counter TO 1
WHILE counter <= 5 DO
	PRINT "Counter is " + counter
	INCREMENT counter BY 1
END WHILE
```
#### b. Do-While loop
```
SET counter TO 1
DO
	OUTPUT "Counter is " + counter
	SET counter TO counter + 1
WHILE counter <= 5
```
#### c. For loop
```
FOR i FROM 1 TO 5 STEP 1 DO
	PRINT "Iteration " + 1
END FOR
```
#### d. Repeat-Until loop
```
REPEAT
	PRINT "Enter a positive number: "
	INPUT num
	PRINT "You entered a positive number: " + number
UNTIL num > 0
```
### 5. CASE/SWITCH Statement
```
INPUT dayNumber
CASE dayNumber OF
	WHEN 1: PRINT "Sunday"
	WHEN 2: PRINT "Monday"
	WHEN 3: PRINT "Tuesday"
	WHEN 4: PRINT "Wednesday"
	WHEN 5: PRINT "Thursday"
	WHEN 6: PRINT "Friday"
	WHEN 7: PRINT "Saturday"
	OTHERWISE: PRINT "Invalid day number"
END CASE
```
### 6. Functions and Procedures
#### a. Procedure (No Return Value)
```
PROCEDURE Greet()
	SET total TO 0
	FOR EACH number IN list DO
		IF number > 0 THEN
			INCREMENT total BY number
		ELSE
			PRINT "Ignoring negative number"
		END IF
	END FOR
	PRINT "Total sum is:" + total
END PROCEDURE
```
#### b. Function (Returns a Value)
```
FUNCTION addNumber(a, b)
	RETURN a + b
END FUNCTION
SET result TO addNumber(3, 5)
PRINT "Sum is " + result
```
### 7. Arrays
```
names ← ['Fortnite', 'Call of Duty', 'Battlefield']
FOR i ← 0 TO 2 STEP 1 DO
	WHILE names[i] != 'Battlefield' DO
		i ← i + 1
	END WHILE
END FOR
```
### 8. Reading from and Writing to a File
```
OPEN file "data.txt" FOR READING
READ line FROM file
PRINT line
CLOSE file
```
### Examples
***Pseudocode - Input Validation Example***
```
userGuess ← 0, secretNumber ← 5
PRINT "Enter a number between 1 and 10"
READ userGuess
WHILE userGuess , 1 OR userGuess > 10 DO
	PRINT "That is not between 1 and 10. Try again."
	READ userGuess
END WHILE

IF userGuess == secretNumber THEN
	PRINT "That's right! " + userGuess + " is the secret!"
ELSE
	PRINT userGess + " is not the secret!"
END IF
```
***Pseudocode - Do-While Loop Example***
```
CREATE number ← 0, lastDigital ← 0, reverse ← 0
PRINT "Enter a positive number."
READ number
DO
	lastDigital ← number % 10
	reverse ← (reverse * 10) + lastDigital
	number ← number / 2
WHILE number > 0
```
***Pseudocode - Data Types `INTEGER` `REAL` `BOOLEAN` `STRING`***
```
DECLARE isRainy AS BOOLEAN
SET isRainy TO TRUE
DECLARE numberOfApples AS INTEGER
SET numberOfApples TO 5
```
***Pseudocode - ENUM***
```
ENUM colors
	RED
	GREEN
	BLUE
END ENUM
DECLARE favoriteColor AS Color
SET favoriteColor TO GREEN

IF favoriteColor = GREEN THEN
    PRINT "Your favorite color is green!"
ELSE
    PRINT "Your favorite color is not green."
END IF
```
```
FINAL ALGORITHM

START
OUTPUT "Enter the number of parcels"
INPUT NUMBEROFPARCELS
INTEGER PRICE = 0
INTEGER PARCELWEIGHT [1:NUMBEROFPARCELS]
INTEGER TOTALPRICE = 0

FOR PARCELLOOP = 1 TO NUMBEROFPARCELS
    INTEGER REJECT = 0
    INTEGER ACCEPT = 0
    INTEGER ACCEPTWEIGHT = 0
    INTEGER REJECTEDPARCELS = 0

    OUTPUT "Enter the weight of the parcel in kg"
    INPUT WEIGHT
    IF (WEIGHT < 1) THEN
        REJECT = REJECT + 1
        OUTPUT "The weight of the parcel should be atleast 1kg"
    ELSE
        IF (WEIGHT > 10) THEN
            REJECT = REJECT + 1
            OUTPUT "The weight of the parcel should be less than 10kg"
    ENDIF
    IF (WEIGHT > 1) THEN
        IF (WEIGHT < 10) THEN
            PARCELWEIGHT[PARCELLOOP] = WEIGHT
        ENDIF
    ENDIF


    OUTPUT "Enter the first dimension of the parcel in cm"
    INPUT DIMENSION1
    IF (DIMENSION1 > 80 ) THEN
        REJECT = REJECT + 1
        OUTPUT "Each dimension of the parcel should be less than 80"
    ENDIF

    OUTPUT "Enter the second dimension of the parcel in cm"
    INPUT DIMENSION2
    IF (DIMENSION2 > 80 ) THEN
        REJECT = REJECT + 1
        OUTPUT "Each dimension of the parcel should be less than 80"
    ENDIF

    OUTPUT "Enter the third dimension of the parcel in cm"
    INPUT DIMENSION3
    IF (DIMENSION3 > 80 ) THEN
        REJECT = REJECT + 1
        OUTPUT "Each dimension of the parcel should be less than 80"
    ENDIF

    TOTALDIMENSION = DIMENSION1 + DIMENSION2 + DIMENSION3
    IF (TOTALDIMENSION > 200 ) THEN
        REJECT = REJECT + 1
        OUTPUT "The size of the parcel should be less than 200cm"
    ENDIF

    IF (REJECT > 0 ) THEN
        OUTPUT "Your parcel has been rejected for the reasons above"
        REJECTEDPARCELS = REJECTEDPARCELS + 1
    ENDIF

    IF (REJECT = 0)THEN
        OUTPUT "Your parcel has been accepted"
        ACCEPT = ACCEPT + 1 
        ACCEPTWEIGHT = ACCEPTWEIGHT + WEIGHT
    END IF

    INTEGER PARCELSACCEPTED = ACCEPT
    INTEGER TOTALWEIGHT = ACCEPTWEIGHT
    INTEGER PARCELSREJECTED = REJECTEDPARCELS

    OUTPUT "The number of parcels accepted is " PARCELSACCEPTED " and the total weight of the parcels is " TOTALWEIGHT
    OUTPUT "The number of parcels rejected is " PARCELSREJECTED
NEXT PARCELLOOP

FOR PRICELOOP = 1 TO NUMBEROFPARCELS
    IF (PARCELWEIGHT[PARCELLOOP] < 5) THEN
        PRICE = PRICE + 10
        TOTALPRICE = TOTALPRICE +PRICE
    END IF

    IF (PARCELWEIGHT[PARCELLOOP] > 5) THEN
        PRICE = ((PARCELWEIGHT[PARCELLOOP] - 5)*0.10)/100
        TOTALPRICE = TOTALPRICE +PRICE
    END IF

    OUTPUT "The price of the parcel is " PRICE
NEXT PRICELOOP

OUTPUT "The total price of all the parcels is " TOTALPRICE
END
```
## Reference
* [Pseudocode](https://gillencomputing.wordpress.com/2016/05/20/pseudocode/)
