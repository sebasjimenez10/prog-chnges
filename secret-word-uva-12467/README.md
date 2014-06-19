Secret Word
---

###Context

Problem G. Secret word

Alicia and Roberto like to play games. Today, Roberto is trying to guess a secret word that Alicia chose. Alicia wrote a long string S in a piece of paper and gave Roberto the following clues:

- The secret word is a non-empty substring1 of S (possibly equal to S).
- S starts with the secret word reversed.

Roberto knows Alicia very well, and he’s sure that if there are several possible secret words that satisfy the clues above, Alicia must have chosen the longest one.

Can you help him guess the secret word?

###Input

The first line of the input file contains a single integer number T ≤ 150, the number of test cases.

T lines follow, each with a single string S. S will only contain lowercase English letters. The length of S will not exceed one million characters.

###Output
For each test case, output the secret word in one line.

###Sample input and output

| Input              | Output         |
|:-------------------|:---------------|
| 5                  |   --           |
| colombia           | c              |
| abcdba             | ba             |
| neversayeven       | even           |
| neveroddoreven     | neveroddoreven |
| listentothesilence | sil            |

###Explanation of the sample cases

- colombia: if you take c and reverse it you get c.   colombia starts with c, so this satisfies the two clues above. Furthermore, c is the longest word that satisfies the two clues so it must be the secret word.
- abcdba: if you take ba and reverse it you get ab.   abcdba starts with ab and there’s no longer substring that satisfies the two clues.
- neversayeven: if you take even and reverse it you get neve. neversayeven starts with neve and there’s no longer substring that satisfies the two clues.
- neveroddoreven: this case is a palindrome so if we reverse it we get the same string. neveroddoreven starts with neveroddoreven (since they are the same) and obviously there’s no longer substring that satisfies that, so this is the secret word.
- listentothesilence: Notice the secret word might be somewhere in the middle of the big word.

####Footnotes
1A substring of S is defined as any consecutive sequence of characters belonging to S. For example, if S = abcd then a, abcd, ab, bc and bcd are some of the substrings of S but ac, aa, aabbccdd and dcba are not substrings of S.

Andrés Mejía-Posada, May 2012