## REGULAR EXPRESSION SNIPPETS
---

- `.`       - Any single character Except New Line
- `\d`      - A digit (0-9)[0-9]
- `\D`      - Not a Digit (0-9)[0-9]
- `\w`      - Word Character (a-z, A-Z, 0-9, _)[a-zA-Z_0-9]
- `\W`      - Not a Word Character
- `\s`      - Whitespace (space, tab, newline)
- `\S`      - Not Whitespace (space, tab, newline)
- `\b`      - Word Boundary
- `\B`      - Not a Word Boundary
- `^`       - The beginning of a String
- `$`       - The end of a String
- `[]`      - Matches Characters in brackets
- `[^ ]`    - Matches Characters NOT in brackets
- `|`       - Either Or
- `( )`     - Group

Quantifiers:
- `[abc]`		- A single character of: a, b or c
- `[a-z]`		- A single character in a range: a to z
- `a|b`		- Matches either a or b
- `*`       	- Matches zero or more occurrences
- `+`       	- Matches one or more occurrences
- `?`       	- Matches zero or one occurrence
- `a{3}`    	- Exactly 3 or a: aaa
- `a{3,}`	  	- 3 or more of a
- `a{2,4}`  	- Between 2 or 4 of a: aa, aaa or aaaa

#### Sample Regexs ####
[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+
