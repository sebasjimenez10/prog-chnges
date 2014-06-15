Roman Numerals
---

###Context

This year is the XXV Anniversary of the Faculty of Computer Science in Murcia. But, what XXV means? Maybe you should ask an ancient Roman to get the answer.

###The Problem

A Roman numeral consists of a set of letters of the alphabet. Each letter has a particular value, as shown in the following table:

| Letter | I | V | X  | L  | C   | D   | M    |
| ------ |:--|:--|:---|:---|:----|:----|:-----|
| Value  | 1 | 5 | 10 | 50 | 100 | 500 | 1000 |

Generally, Roman numerals are written in descending order from left to right, and are added sequentially. However, certain combinations employ a subtractive principle. If a symbol of smaller value precedes a symbol of larger value, the smaller value is subtracted from the larger value, and the result is added to the total. This subtractive principle follows the next rules:

* "I" may only precede "V" and "X" (e.g., IV=4).
* "X" may only precede "L" and "C" (e.g., XC=900).
* "C" may only precede "D" and "M".
* "V", "L" and "D" are always followed by a symbol of smaller value, so they are always added to the total.

Symbols "I", "X", "C" and "M" cannot appear more than three consecutive times. Symbols "V", "L" and "D" cannot appear more than once consecutively.

Roman numerals do not include the number zero, and for values greater or equal than 4000 they used bars placed above the letters to indicate multiplication by 1000.

You have write a program that converts from Roman to Arabic numerals and vice versa. Although lower case letters were used in the Middle Ages, the Romans only used upper case letters. Therefore, for the Roman numerals we only consider upper case letters.

##The Input

The input consists of several lines, each one containing either an Arabic or a Roman number n, where 0 < n < 4000.

##The Output

For each input line, you must print a line with the converted number. If the number is Arabic, you must give it in Roman format. If the number is Roman, you must give it in Arabic format.

##Sample Input

XXV  
4  
942  
MCMLXXXIII  

##Sample Output

25  
IV  
CMXLII  
1983  


####This problem was extracted from [UVa Online Judge - 11616 - Roman Numerals](http://uva.onlinejudge.org/index.php?option=com_onlinejudge&Itemid=8&page=show_problem&problem=2663)