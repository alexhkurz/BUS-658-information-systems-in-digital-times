Prediction and Entropy of Printed English
By C. E. SHANNON
(MaNuscript Received Sept. I5, I950)

A new method of estimating the entropy and redundancy of a language is
described. This method exploits the knowledge of the language statistics possessed by those who speak the language, and depends on experimental results
in prediction of the next letter when the preceding text is known, Results of
experiments in prediction are given, and some properties of an ideal predictor are
developed.

1. hTRODUCTIOX
paper' the entropy and redundancy of a language have
I NbeenA previous
defined. The entropy is a statistical parameter which measures,

in a certain sense, how much information is produced on the average for
each letter of a text in the language. If the language is translated into binary
digits (0 or 1) in the most efficient way, the entropy [{ is the average number
of binary digits required per letter of the original language. The redundancy,
on the other hand, measures the amount of constraint imposed on a text in
the language due to its statistical structure, e.g., in English the high frequency of the letter E, the strong tendency of H to follow T or of L' to follow
Q. It was estimated that when statistical effects extending over not more
than eight letters are considered the entropy is roughly 2.3 bits per letter,
the redundancy about 50 per cent.
Since then a new method has been found for estimating these quantities,
which is more sensitive and takes account of long range statistics, intluences
extending over phrases, sentences, etc. This method is based on a study of
the predictability of English; how well can the next letter of a text be predicted when the preceding ?{ letters are known. The results of some experiments in prediction will be given, and a theoretical analysis of some of the
properties of ideal prediction. By combining the experimental and theoretical results it is possible to estimate upper and lower bounds for the entropy
and redundancy. From this analysis it appears that, in ordinary literary
English, the long range statistical effects (up to 100 letters) reduce the
entropy to something of the order of one bit per letter, with a corresponding
redundancy of roughly 75%. The redundancy may be still higher when
structure extending over paragraphs, chapters, etc. is included. However, as
the lengths involved are increased, the parameters in question become more

Ie. E. Shannon, "A Mathematical Theory of Communication," Bell System Technical
Journal, v. Ti , PI'. 3i9-423, 623-656, July, October, 1948.
50

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

PRJo:DICTIOl\; AXD EXTROP,," OF PRIl\;TED ENGLISH

51

erratic and uncertain, and they depend more critically on the type of text
involved.

2. ENTROPY C.-\.LCUL\TIO~ FROM nm STATISTICS OF EX(;USII
One method of calculating the entropy II is by a series of approximations
F«, F I , F~, ... , which successively take more and more of the statistics
of the language into account and approach 1I as a limit. F.\· may be called
the Y-gram entropy; it measures the amount of information or entropy due
to statistics extending over ~Y adjacent letters of text. F:; is given by'
F N = -L:p(b;,j) log2Pb,(j)

- L p(b i , j) log, p(b;, j) + L p(b i ) log pCb;)
i,j

(1)

.

in which: b , is a block of .Y-1 letters [(Y-1)-gram]
j is an arbitrary letter following b i
p(b;, j) is the probability of the ;V-gram hi, j

hJj) is the conditional probability of letter j after the block b i,
and is given by p(b, , j)/ p(b;).
The equation (1) can he interpreted as measuring the average uncertainty
(conditional entropy) of the next letter j when the preceding X-1 letters are
known. As X is increased, F x includes longer and longer range statistics
and the entropy, H, is given by the limiting value of F.v as ;V -+ or.; :

H = Lim F«,

(2)

N-+«J

The X-gram entropies F.v for small values of N can be calculated from
standard tables of letter, digram and trigram Irequencies.' If spaces and
punctuation are ignored we have a twenty-six letter alphabet and Fro may
be taken (by definition) to be log, 26, or .t/ bits per letter. F t involves letter
frequencies and is given by

}.\ = - L p(i) log2 p(i) = 4.14 bits per letter.
~6

i=l

(3)

The digram approximation 1"2 gives the result
F2 =

-

Li.i p(i, j) log, Pi(j)

- Li,i p(i, j) log2 p(i, j) + Li p(i) log, p(i)

(4)

= 7.70 - 4.14 = .1.56 bits per letter.
2

Fletcher Prall, "Secret and L'rgent," Blue Ribbon Books, 1942.

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

S2

THE BF.LL SYSTEM TECII:\J:CAL JOUR:\AL, JAXUARY

1951

The trigram entropy is given by

F3 =

L p(i, i. k) log2 Pij(k)

i,j,k

L p(i, j, k) log- p(i, i. k) + L p(i, j) log, p(i, j)

i.i,k

-

11.0 -

;,j

(5)

7.7 = 3.3

In this calculation the trigram table" used did not take into account trigrams bridging two words, such as WOW and OWO in TWO WORDS. To
compensate partially for this omission, corrected trigram probabilities pU,
j, k) were obtained from the probabilities p'(i,j, k) of the table by the following rough formula:
p(i, j, k) = ~:~ p'(i, j, k) + 4~5 r(i)p(j, k) + 4~5 p(i, j)s(k)
where rei) is the probability of letter i as the terminal letter of a word and
s(k) is the probability of k as an initial letter. Thus the trigrams within
words (an average of 2.5 per word) are counted according to the table; the
bridging trigrams (one of each type per word) are counted approximately
by assuming independence of the terminal letter of one word and the initial
digram in the next or vice versa. Because of the approximations involved
here, and also because of the fact that the sampling error in identifying
probability with sample frequency is more serious, the value of Fa is less
reliable than the previous numbers.
Since tables of :Y-gram frequencies were not available for N > 3, F., F 5 ,
etc. could not be calculated in the same way. However, word frequencies
have been tabulated! and can be used to obtain a further approximation.
Figure 1 is a plot on log-log paper of the probabilities of words against
frequency rank. The most frequent English word "the" has a probability
.071 and this is plotted against 1. The next most frequent word "of" has a
probability of .034 and is plotted against 2, etc. Using logarithmic scales
both for probability and rank, the curve is approximately a straight line
with slope -1; thus, if pn is the probability of the nth most frequent word,
we have, roughly

pn =

.1
n

(6)

Zipf' has pointed out that this type of formula, p" = k/ n, gives a rather good
approximation to the word probabilities in many different languages. The
3 G. Dewey, "Relative Frequency of English Speech Sounds," Harvard University
Press, 1923.
, G. K. Zipf, "Human Behavior and the Principle of Least Effort," Addison-Wesley
Press, 1949.

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

53

PREDICTION Al\'D ENTROPY OF PRINTED ENGLISH

formula (6) clearly cannot hold indefinitely since the total probability ~pn

L'" .1/n is infinite. If we assume (in the absence of any

-nust be unity, while

1

better estimate) that the formula Pn = .1/n holds out to the n at which the
0.1

F~
, THE

"

I

,/,OF

I

~

AND
, [+-TO
~

'~ ~~I

o.ot

~.:\.
.~

'~OR
','I

'~

~

z

w

~

:>

o

~ o.oot

~_SAY
,~

II.

'q

o

a:
o

I\.

~

"-REALLY

\ , >-QUALITY
,
,

O.OOOt

,

,,
,
,,
o.OOOOt

1

2

4

6 B 10

20

40 60

100

200

WORD ORDER

400

1000

2000 4000

10,000

Fig. 1-Relative frequency against rank for English words.

total probability is unity, and that pn = 0 for larger 11, we find that the
critical II is the word of rank 8,727. The entropy is then:
8727

- L pn log2 pn = 11.82 bits per word,
1

(7)

or 11.82/4.5 = 2.62 bits per letter since the average word length in English
is 4.5 letters. One might be tempted to identify this value with F u , but
actually the ordinate of the F.v curve at JY = 4.5 will be above this value.
The reason is that F 4 or F 6 involves groups of four or five letters regardless
of word division. A word is a cohesive group of letters with strong internal

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

54

THE BELL SYSTEM TECHNICAL JOURNAL, JANUARY 1951

statistical influences, and consequently the N-grams within words are more
restricted than those which bridge words. The effect of this is that we have
obtained, in 2.62 bits per letter, an estimate which corresponds more nearly
to, say, F 5 or Fa.
A similar set of calculations was carried out including the space as an
additional letter, giving a 27 letter alphabet. The results of both 26- and
27-letter calculations are summarized below:
26 letter .. _
, .. ..
27 letter .. _. _. . . . . . . . . . . ..

F.

4.70
4.76

Fl

4.14
4.03

F.

3.56
3.32

F.

3.3

3.1

Fword

2.62 •
2.14

The estimate of 2.3 for Fa, alluded to above, was found by several methods,
one of which is the extrapolation of the 26-letter series above out to that
point. Since the space symbol is almost completely redundant when sequences of one or more words are involved, the values of F N in the 27-letter
case will be ::~ or .818 of F N for the 26-letter alphabet when N is reasonably
large.
3. PREDICTION OF ENGLISH

The new method of estimating entropy exploits the fact that anyone
speaking a language possesses, implicitly, an enormous knowledge of the
statistics of the language. Familiarity with the words, idioms, cliches and
grammar enables him to fill in missing or incorrect letters in proof-reading,
or to complete an unfinished phrase in conversation. An experimental demonstration of the extent to which English is predictable can be given as follows:
Select a short passage unfamiliar to the person who is to do the predicting.
He is then asked to guess the first letter in the passage. If the guess is correct
he is so informed, and proceeds to guess the second letter. If not, he is told
the correct first letter and proceeds to his next guess. This is .continued
through the text. As the experiment progresses, the subject writes down the
correct text up to the current point for use in predicting future letters. The
result of a typical experiment of this type is given below. Spaces were included as an additional letter, making a 27 letter alphabet. The first line is
the original text; the second line contains a dash for each letter correctly
guessed. In the case of incorrect guesses the correct letter is copied in the
second line.
(1) THE ROOM WAS NOT VERY LIGHT A SMALL OBLONG
(8)
(2) ----ROO------NOT-V-----I------SM----OBL---(1) READING LAMP ON THE DESK SHED GLOW ON
(2) REA----------O------D----SHED-GLO--O-(1) POLISHED WOOD BUT LESS ON THE SHABBY RED CARPET
(2) P-L-S -- ---O---BU --L·8 --0 ----- -SB --··-RE--C------

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

ss

PREDICTION AND ENTROPY OF PRINTED ENGLISH

Of a total of 129 letters, 89 or 69% were guessed correctly. The errors, as
would be expected, occur most frequently at the beginning of words and
syllables where the line of thought has more possibility of branching out. It
might be thought that the second line in (8), which we will call the reduced
text, contains much less information than the first. Actually, both lines contain the same information in the sense that it is possible, at least in principle, to recover the first line from the second. To accomplish this we need
an identical twin of the individual who produced the sequence. The twin
(who must be mathematically, not just biologically identical) will respond in
the same way when faced with the same problem. Suppose, now, we have
only the reduced text of (8). We ask the twin to guess the passage. At each
point we will know whether his guess is correct, since he is guessing the same
as the first twin and the presence of a dash in the reduced text corresponds
to a correct guess. The letters he guesses wrong are also available, so that at
each stage he can be supplied with precisely the same information the first
twin had available.
ORIGINAL
TEXT

-..

-

COMPARISON

COMPARISON
REDUCED TEXT

-..

- -

ORIGINAL
TEXT

Fig. 2-Communication system using reduced text.

The need for an identical twin in this conceptual experiment can be
eliminated as follows. In general, good prediction does not require knowledge of more than N preceding letters of text, with N fairly small. There are
only a finite number of possible sequences of N letters. We could ask the
subject to guess the next letter for each of these possible N-grams. The complete list of these predictions could then be used both for obtaining the
reduced text from the original and for the inverse reconstruction process.
To put this another way, the reduced text can be considered to be an
encoded form of the original, the result of passing the original text through
a reversible transducer. In fact, a communication system could be constructed in which only the reduced text is transmitted from one point to
the other. This could be set up as shown in Fig. 2, with two identical prediction devices.
An extension of the above experiment yields further information concerning the predictability of English. As before, the subject knows the text
up to the current point and is asked to guess the next letter. If he is wrong,
he is told so and asked to guess again. This is continued until he finds the
correct letter. A typical result with this experiment is shown below. The

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

S6

THE BELL SYSTEM TECHNICAL JOURNAL, JANUARY 1951

first line is the original text and the numbers in the second line indicate the
guess at which the correct letter was obtained.
(1) THE REI S NOR EVE R S EON A MOT 0 R G Y G LEA
(2) 1 1 1 5 1 1 2 11 2 11 15 1 17 1 1 1 2 1 3 2 1 22 7 1 1 1 1 4 1 1 1 1 1 3 1
(1) F R I E H D 0 F M I H E F 0 U N D T B ISO U T
(2) 8 6 1 3 1 11 1 11 1 1 r 11 6 2 1 1 11 1 1 2 11 1 1 1 1
(1) RAT HER D RAM A T I GAL L Y THE 0 T B E R DAY
(2) 4 1 1 1 1 11 11 5 1 1 1 1 1 1 1 1 1 11 6 1 11 1 1 1 1 11 1 1 1 1
(9)

Out of 102 symbols the subject guessed right on the first guess 79 times,
on the second guess 8 times, on the third guess 3 times, the fourth and fifth
guesses 2 each and only eight times required more than five guesses. Results
of this order are typical of prediction by a good subject with ordinary literary
English. Newspaper writing, scientific work and poetry generally lead to
somewhat poorer scores.
The reduced text in this case also contains the same information as the
original. Again utilizing the identical twin we ask him at each stage to guess
as many times as the number given in the reduced text and recover in this
way the original. To eliminate the human element here we must ask our
subject, for each possible iV-gram of text, to guess the most probable next
letter, the second most probable next letter, etc. This set of data can then
serve both for prediction and recovery.
Just as before, the reduced text can be considered an encoded version of
the original. The original language, with an alphabet of 27 symbols, it,
B,
,Z, space, has been translated into a new language with the alphabet
1, 2,
, 27. The translating has been such that the symbol 1 now has an
extremely high frequency. The symbols 2, 3, 4 have successively smaller
frequencies and the final symbols 20, 21, ..• , 27 occur very rarely. Thus the
translating has simplified to a considerable extent the nature of the statistical structure involved. The redundancy which originally appeared in complicated constraints among groups of letters, has, by the translating process,
been made explicit to a large extent in the very unequal probabilities of the
new symbols. It is this, as will appear later, which enables one to estimate
the entropy from these experiments.
In order to determine how predictability depends on the number N of
preceding letters known to the subject, a more involved experiment was
carried out. One hundred samples of English text were selected at random
from a book, each fifteen letters in length. The subject was required to guess
the text, letter by letter, for each sample as in the preceding experiment.
Thus one hundred samples were obtained in which the subject had available
0, 1, 2, 3, ... , 14 preceding letters. To aid in prediction the subject made
such use as he wished of various statistical tables, letter, digram and trigram

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

57

PREDICTION AND ENTROPY OF PRINTED ENGLISH

tables, a table of the frequencies of initial letters in words, a list of the frequencies of common words and a dictionary. The samples in this experiment
were from "J ~ffersoll the Virginian" by Dumas Malone. These results, together with a similar test in which 100 letters were known to the subject, are
summarized in Table 1. The column corresponds to the number of preceding
letters known to the subject plus one; the row is the number of the guess.
The entry in column LV at row S is the number of times the subject guessed
the right letter at the Sth guess when (LV-1) letters were known. For example,

-

1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
2S
26
27

I

2

3

18.2
10.7
8.6
6.7
6.5
5.8
5.6
5.2
5.0
4.3
3.1
2.8
2.4
2.3
2.1
2.0
1.6
1.6
1.6
1.3
1.2
.8
.3
.1
.1
.1
.1

29.2
14.8
10.0
8.6
7.1
5.5
4.5
3.6
3.0
2.6
2.2
1.9
1.5
1.2
1.0

36
20
12
7
1
4
3
2
4
2
2
4
1

.7
.5
.4
.3
.2
.1
.1
.0

1

---- -

.9

1

-

4

47
18
14
3
1
5
3
2
1
2
1
1
1

1

-

5

51
13
8
4
3
2
2
1
5
3
2
2
1

-

6

58
19
5
1
4
3
2
1
1
1
1
1

2

1

1

1
1

TABLE

I

7

8

-

48
17
3
4
3
2
8
2
4
3
1
1
1

-

66
15
5
4
6
1
1
1
1

-

9

66
13
9
4
1

10

1
1
2

67
10
4
4
6
1
1
1
1

1

3

1

1

1
1
1

-

1
1

-

II

62
I)

7
5
5
4
1
1
1
2
1
1
1

-

12

58
14
7
6
2
2
4
2
1
1
1
1
1

-

13

66
9
4
4
3
3
1
2
2
1
1
1

-

14

100

72 60 80
6 18 7
9
3

5
5

4

1
4
3

1
1
2

1
1

3
4
2
1
1
1

1

1
2

15

- -

2

1
1

the entry 19 in column 6, row 2, means that with five letters known the cor
reet letter was obtained on the second guess nineteen times out of the hun
dred. The first two columns of this table were not obtained by the experimental procedure outlined above but were calculated directly from the
known letter and digram frequencies. Thus with no known letters the most
probable symbol is the space (probability .182); the next guess, if this is
wrong, should be E (probability .107), etc. These probabilities are the
frequencies with which the right guess would occur at the first, second, etc.,
trials with best prediction. Similarly, a simple calculation from the digram
table gives the entries in column 1 when the subject uses the table to best

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

58

THE BELL SYSTEM TEC1INICAL JOURNAL, JANUARY

1951

advantage. Since the frequency tables are determined from long samples of
English, these two columns are subject to less sampling error than the others.
It will be seen that the prediction gradually improves, apart from some
statistical fluctuation, with increasing knowledge of the past as indicated
by the larger numbers of correct first guesses and the smaller numbers of
high rank guesses.
One experiment was carried out with "reverse" prediction, in which the
subject guessed the letter preceding those already known. Although the
task is subjectively much more difficult, the scores were only slightly poorer.
Thus, with two 101 letter samples from the same source, the subject obtained the following results:
No. of guess

Forward..................
Reverse
"

1

70
66

2

10
7

3

7
4

"

2
4

5

6

2

3

6

2

7

3

1

8

>8

2

9

o

4

Incidentally, the N-gram entropy F N for a reversed language is equal to
that for the forward language as may be seen from the second form in equation (1). Both terms have the same value in the forward and reversed cases.
4. IDEAL N-GRAM PREDICTION

The data of Table I can be used to obtain upper and lower bounds to the

N -gram entropies F N. In order to do this, it is necessary first to develop

some general results concerning the best possible prediction of a language
when the preceding N letters are known. There will be for the language a set
of conditional probabilities Pi 1 • i2' •••• iN_l (j). This is the probability when
the (N-l) gram it, i 2 , ••• , i N- t occurs that the next letter will be j. The
best guess for the next letter, when this (N-l) gram is known to have occurred, will be that letter having the highest conditional probability. The
second guess should be that with the second highest probability, etc. A
machine or person guessing in the best way would guess letters in the order
of decreasing conditional probability. Thus the process of reducing a text
with such an ideal predictor consists of a mapping of the letters into the
numbers from 1 to 27 in such a way that the most probable next letter
[conditional on the known preceding (N-1) gram] is mapped into 1, etc.
The frequency of l's in the reduced text will then be given by
(10)

where the sum is taken overall (N-1) grams it. i«, '" , i N - t thej being the
one which maximizes P for that particular (N-1) gram. Similarly, the frequency of 2's, q~ , is given by the same formula with j chosen to be that
letter having the second highest value of P, etc.
On the basis of N-grams, a different set of probabilities for the symbols

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

PREDICTION AND ENTROPY OF PRINTED ENGLISH

59

.m t Iie red uced text, qlN+l , q2NH , ... ,q27
N+l ,wou ld norma IIy resu It. S'mce t hiIS
prediction is on the basis of a greater knowledge of the past, one would expect the probabilities of low numbers to be greater, and in fact one can
prove the following inequalities:

L «: ~ L q:
B

8

i-I

i-I

S = 1,2, ....

(11)

This means that the probability of being right in the first 5 guesses when
the preceding N letters are known is greater than or equal to that when
only (N-I) are known, for all 5. To prove this, imagine the probabilities
p(ir , is , •.• , iN, j) arranged in a table with j running horizontally and all
the N-grams vertically. The table will therefore have 27 columns and 27N
rows. The term on the left of (11) is the sum of the 5 largest entries in each
row, summed over all the rows. The right-hand member of (11) is also a sum
of entries from this table in which 5 entries are taken from each row but not
necessarily the 5 largest. This follows from the fact that the right-hand
member would be calculated from a similar table with (N-I) grams rather
than N-grams listed vertically. Each row in the N-I gram table is the sum
of 27 rows of the N-gram table, since:
27

p(i2, i a, ••• ,iN,j) = L: p(ir, i 2, ''', iN,j).

(12)

il~l

The sum of the 5 largest entries in a row of the N-1 gram table will equal
the sum of the 275 selected entries from the corresponding 27 rows of the
N-gram table only if the latter fall into 5 columns. For the equality in (11)
to hold for a particular 5, this must be true of every row of the N-1 gram
table. In this case, the first letter of the .IV-gram does not affect the set of the
S most probable choices for the next letter, although the ordering within
the set may be affected. However, if the equality in (11) holds for all S, it
follows that the ordering as well will be unaffected by the first letter of the
:V-gram.The reduced text obtained from an ideal iV-1 gram predictor is then
identical with that obtained from an ideal N-gram predictor.
Since the partial sums

S = 1,2, ...

(13)

are monotonic increasing functions of N, < 1 for all .V, they must all approach limits as .IV ~ 00. Their first differences must therefore approach
limits as N ~ 00, i.e., the"q: approach limits, q7 . These may be interpreted
as the relative frequency of correct first, second, ... , guesses with knowledge of the entire (infinite) past history of the text.

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

60

THE BELL SYSTEM TECHNICAL JOURNAL, JANUARY

1951

The ideal N-gram predictor can be considered, as has been pointed out, to
be a transducer which operates on the language translating it into a sequence
of numbers running from 1 to 27. As such it has the following two properties:
1. The output symbol is a function of the present input (the predicted
next letter when we think of it as a predicting device) and the preceding (N-l) letters.
2. It is instantaneously reversible. The original input can be recovered by
a suitable operation on the reduced text without loss of time. In fact,
the inverse operation also operates on only the (N-I) preceding symbols of the reduced text together with the present output.
The above proof that the frequencies of output symbols with an N-1
gram predictor satisfy the inequalities:
s

s

1

1

~ ~ > ~ ~-l
£..J
q. _ £..J q.

S = 1,2, ... , 27

(14)

can be applied to any transducer having the two properties listed above.
In fact we can imagine again an array with the various (N-1) grams listed
vertically and the present input letter horizontally. Since the present output
is a function of only these quantities there will be a definite output symbol
which may be entered at the corresponding intersection of row and column.
Furthermore, the instantaneous reversibility requires that no two entries
in the same row be the same. Otherwise, there would be ambiguity between
the two or more possible present input letters when reversing the translation. The total probability of the S most probable symbols in the output,
s

say LYi, will be the sum of the probabilitiesforS entries in each row. summed
1

over the rows, and consequently is certainly not greater than the sum of the
S largest entries in each row. Thus we will have

S = 1,2,···.27

(15)

In other words ideal prediction as defined above enjoys a preferred position
among all translating operations that may be applied to a language and
which satisfy the two properties above. Roughly speaking, ideal prediction
collapses the probabilities of various symbols to a small group more than
any other translating operation involving the same number of letters which
is instantaneously reversible.
Sets of numbers satisfying the inequalities (15) have been studied by
Muirhead in connection with the theory of algebraic inequalities," If (15)
holds when the q~ and r, are arranged in decreasing order of magnitude, and
6 Hardy, Littlewood

and Polya, "Inequalities," Cambridge University Press, 1934.

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

PREDICTION AND ENTROPY OF PRINTED ENGLISH

also

27

27

1

1

61

L q~ = L r t , (this is true here since the total probability in each

case is 1), then the first set, qf , is said to majorize the second set, ri , It is
known that the majorizing property is equivalent to either of the following
properties:
1. The Ti can be obtained from the q~ by a finite series of "flows." By a
flow is understood a transfer of probability from a larger q to a smaller
one, as heat flows from hotter to cooler bodies but not in the reverse
direction.
2. The r, can be obtained from the qf by a generalized "averaging"
operation. There exists a set of non-negative real numbers, aij, with
aii ='
aij = 1 and such that

Li

L
i

(16)
5. ENTROPY BOUNDS FROM PREDICTION FREQUENCIES

If we know the frequencies of symbols in the reduced text with the ideal
iV-gram predictor, q~ , it is possible to set both upper and lower bounds to
the N-gram entropy, F N, of the original language. These bounds are as
follows:
27

L i(qlf - q~+l) log i ~ F :$
N

ic:;;l

L q~ log q';.
27

i_I

(17)

The upper bound follows immediately from the fact that the maxirrum
possible entropy in a language with letter frequencies If is
q'[ log q'[ .
Thus the entropy per symbol of the reduced text is not greater than this.
The N-gram entropy of the reduced text is equal to that for the original
language, as may be seen by an inspection of the definition (1) of F N. The
sums involved will contain precisely the same terms although, perhaps, in a
different order. This upper bound is clearly valid, whether or not the prediction is ideal.
The lower bound is more difficult to establish. It is necessary to show that
with any selection of iV-gram probabilities P(il , i 2 , ••• ,iN), we will have

-.:E

L i(q'[ - q'[+l) log i:$ L
27

1'=1

il'O' oliN

p(i,'"

iN) log Pi, ... iN-1UN)

(18)

The left-hand member of the inequality can be interpreted as follows:
Imagine the q~ arranged as a sequence of lines of decreasing height (Fig. 3).
The actual q'[ can be considered as the sum of a set of rectangular distributions as shown. The left member of (18) is the entropy of this set of distributions. Thus, the i t h rectangular distribution has a total probability of

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

62

THE BELL SYSTEM TECHNICAL JOURNAL, JANUARY 1951

i(q1[ - q1[H)' The entropy of the distribution is log i. The total entropy is
then
27

L:
i(q1[ - q1[+l) log i:
i-I
The problem, then, is to show that any system of probabilities p(i1 , ••• ,
iN), with best prediction frequencies qi has an entropy F N greater than or
equal to that of this rectangular system, derived from the same set of qi.
0.60
ORIGINAL

r~
q,

q2

1°.05

q3

1°·05

q4

.0.025

q5

DISTRIBUTION

10.025

q6

10.025

q7

0.025

•
qa

0.40 (Q,-Q2}
RECTANGULAR DECOMPOSITION

r
'5

10.025
10.025

,5
1°. (Q2- Cb )

I
I

0.025

I (q4-q5 1

I

I

Fig. 3-Rectangular decomposition of a monotonic distribution.

The qi as we have said are obtained from the p(i1 , ... , iN) by arranging
each row of the table in decreasing order of magnitude and adding vertically.
Thus the qi are the sum of a set of monotonic decreasing distributions. Replace each of these distributions by its rectangular decomposition. Each one
is replaced then (in general) by 27 rectangular distributions; the qi are the
sum of 27 x 27 N rectangular distributions, of from 1 to 27 elements, and all
starting at the left column. The entropy for this set is less than or equal to
that of the original set of distributions since a termwise addition of two or
more distributions always increases entropy. This is actually an application

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

63

PREDICTION AND ENTROPY OF PRINTED ENGLISH

of the general theorem that H 7I(x) ~ H(x) for any chance variables x and y.
The equality holds only if the distributions being added are proportional.
Now we may add the different components of the same width without
changing the entropy (since in this case the distributions are proportional).
The result is that we have arrived at the rectangular decomposition of the
qi, by a series of processes which decrease or leave constant the entropy,
starting with the original N-gram probabilities. Consequently the entropy
of the original system F N is greater than or equal to that of the rectangular
decomposition of the qi. This proves the desired result.
It will be noted that the lower bound is definitely less than F N unless each
row of the table has a rectangular distribution. This requires that for each

cr--

5

4

~\

\ -..; f"

3

~

~ -UPPER BOUND

'"

I"": ~
.......

......... t-.

~

LOWER BOUND- ~...7 ~

o
o

2

3

4

5

6

I-..

......

1
8
II
10
11
NUMBER OF LETTERS

-.~ f.--

12

13

14

15

--'-I.-100

Fig. 4-Upper and lower experimental bounds for the entropy of 27-letter English.

possible (N-l) gram there is a set of possible next letters each with equal
probability, while all other next letters have zero probability.
It will now be shown that the upper and lower bounds for F N given by
(17) are monotonic decreasing functions of N. This is true of the upper bound
since the qf+l majorize the If and any equalizing flow in a set of probabilities
increases the entropy. To prove that the lower bound is also monotonic decreasing we will show that the quantity
U =

:E i(q; - qi+l) log i
;

(20)

is increased by an equalizing flow among the qi • Suppose a flow occurs from
qi to qu«, the first decreased by f1q and the latter increased by the same
amount. Then three terms in the sum change and the change in U is given by
f1U =

[ - (i -

1) log (i - 1) + 2i log i - (i + 1) log (i + l)]f1q (21)

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

64

THE BELL SYSTEM TECHNICAL JOURNAL, JANUARY 1951

+

+

2f(x) - f(x
1) where
The term in brackets has the form -f(x - 1)
f(x) = x log x. Now f(x) is a function which is concave upward for positive x,
since1" (x) = 1/x > O. The bracketed term is twice the differencebetween the
ordinate of the curve at x = i and the ordinate of the midpoint of the chord
joining i - I and i + 1, and consequently is negative. Since Aq also is negative, the change in U brought about by the flow is positive. An even simpler
calculation shows that this is also true for a flow from ql to q2 or from q26 to
q27 (where only two terms of the sum are affected). It follows that the lower
bound based on the lV-gram prediction frequencies qf is greater than or
equal to that calculated from the N + 1 gram frequencies qf+l .
6. EXPERIMENTAL BOl1NllS FOR ENGLISH

Working from the data of Table I, the upper and lower bounds were calculated from relations (17). The data were first smoothed somewhat to overcome the worst sampling fluctuations. The low numbers in this table are
the least reliable and these were averaged together in groups. Thus, in
column 4, the 47, 18 and 14 were not changed but the remaining group
totaling 21 was divided uniformly over the rows from 4 to 20. The upper and
lower bounds given by (17) were then calculated for each column giving the
following results:
Column

1

2

3

4

5

6

7

8

9

10

II

12

13

14

15

100

Upper
4.033.423.02.62.72.2 2.8 1.8 1.92.1 2.2 2.3 2.1 1.72.1 1.3
Lower. . . .. .. 3. 19 2.50 2. 1 1. 7 1. 7 1. 3 1. 8 1.0 1. 0 1. 0 1. 3 1. 3 1. 2 .9 1. 2 .6

It is evident that there is still considerable sampling error in these figures

due to identifying the observed sample frequencies with the prediction
probabilities. It must also be remembered that the lower bound was proved
only for the ideal predictor, while the frequencies used here are from human
prediction. Some rough calculations, however, indicate that the discrepancy
between the actual F N and the lower bound with ideal prediction (due to
the failure to have rectangular distributions of conditional probability)
more than compensates for the failure of human subjects to predict in the
ideal manner. Thus we feel reasonably confident of both bounds apart from
sampling errors. The values given above are plotted against N in Fig. 4.
ACKNOWLEDGMENT

The writer is indebted to Mrs. Mary E. Shannon and to Dr. B. M. Oliver
for help with the experimental work and for a number of suggestions and
criticisms concerning the theoretical aspects of this paper.

censed use limited to: Chapman University. Downloaded on February 13,2026 at 15:30:09 UTC from IEEE Xplore. Restric

