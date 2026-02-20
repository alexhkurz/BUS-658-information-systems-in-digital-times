The Word Entropy of Natural Languages
arXiv:1606.06996v1 [cs.CL] 22 Jun 2016

Christian Bentz
Department of Linguistics
University of Tübingen
Tübingen 72074, Germany
Dimitrios Alikaniotis
Department of Theoretical and Applied Linguistics
University of Cambridge
Cambridge, UK
June 23, 2016
Abstract
The average uncertainty associated with words is an informationtheoretic concept at the heart of quantitative and computational linguistics. The entropy has been established as a measure of this average uncertainty - also called average information content. We here
use parallel texts of 21 languages to establish the number of tokens
at which word entropies converge to stable values. These convergence
points are then used to select texts from a massively parallel corpus,
and to estimate word entropies across more than 1000 languages. Our
results help to establish quantitative language comparisons, to understand the performance of multilingual translation systems, and to
normalize semantic similarity measures.

1

Introduction

The predictability of symbols in strings is the most fundamental concept of
information encoding in general, and natural language production in particular. Shannon [29] defined the entropy - or average information content as a
1

measure of uncertainty or “choice” inherent to strings of symbols. Since then,
Shannon [28] and others have undertaken great efforts to estimate precisely
the entropy of written English [4, 12, 8, 27], and other languages [1, 17, 18].
In computational linguistics, entropy - and related measures - have been
widely applied to tackle problems relating to machine translation [2, 20],
distributional semantics [10, 22, 26, 25], information retrieval [3, 30, 16],
and multiword expressions [33, 24]. All these accounts crucially hinge upon
estimating the probability and uncertainty associated with words - i.e. the
word entropy - in a given text and language.
There are two central questions associated with this estimation: 1) what
is the text size (in number of tokens) at which word entropies converge to a
stable value? 2) How much systematic difference in word entropies do we find
across different languages? The first question is related to the problem of
data sparsity. The performance of NLP tools relying on word probabilities is
lower-bounded by the minimum text size at which word entropies can still be
reliably estimated. The second question relates to the applicability of NLP
tools across different languages. The performance of a single tool can be
systematically biased in a specific language due to generally higher or lower
word entropies.
In this study, we use a state-of-the-art method to estimate block entropies
[19], and also implement a source entropy estimator [8]. This allows us to
establish word entropy convergence points for parallel texts of up to 30M
tokens in 21 languages. Based on these analyses, we select texts with sufficiently large token counts from a massively parallel corpus and estimate
word entropies across 1360 texts and 1001 languages.

2

Motivation

A fundamental property of words is their frequency of occurrence, and hence
their probability in language production. This probability is at the heart of
many applications in natural language processing.
For example, the probability of an expert translating the English word
the into German der can be estimated as
p̂(der|the) = p̂(der, the)/p̂(the).

(1)

This is the conditional probability of finding der in a word aligned German
translation where we have the in the English original. More generally, we
2

could have a set of possible German translations
S = {der, die, das, dem, den, des}

(2)

assigned with estimated probabilities:
p̂(der) + p̂(die) + p̂(das) + p̂(dem) + p̂(den) + p̂(des) = 1.

(3)

In the uniform case, all of these are assigned probability 1/6, and there is
maximum uncertainty about which German word corresponds to English the.
In the clearest case, one of the probabilities is 1 and the others are 0. The
entropy over such a distribution of word probabilities measures exactly this
uncertainty or “choice”. In our example of German articles, the word entropy
is ≈ 2.6 in the uniform case and 0 in the clear case. Entropy calculation is
detailed below (Section 4).

2.1

Entropy in statistical machine translation

Given the example above, the task of a machine translation system is to map
the English word the onto the correct choice from the set of German translations. The maximum entropy approach [2], for instance, requires that the
probabilities are estimated as accurately as possible from the given training
data. Probabilities which cannot be estimated reliably are then chosen in a
way to maximize the overall entropy of the model.
Crucially, the translation difficulty in such an account is a direct function
of the entropy of the word distribution. In the English-to-German mapping
- with uniform probabilities - there are 2.6 bits of “choice”, whereas in the
German-to-English mapping there are 0 bits of “choice”.
This is closely related to Koehn’s [11] finding that when translating into
English from 10 different source languages, BLEU scores negatively correlate
with the number of words in the source language. Hence, it is a harder
problem to translate into a language with higher word entropies than to
translate into a language with lower word entropies - everything else being
equal. From this perspective, estimating the entropy of word distributions
can help to predict translation performance.

3

2.2

Entropy in distributional semantics

Measures of semantic content and similarity [25, 26, 22, 10] often also rely on
information-theoretic concepts. For example, the classical study by Resnik
[25] defines the similarity between two concepts c1 and c2 in a semantic
hierarchy as
sim(c1 , c2 ) =

max [−log p(c)],

c ∈ S(c1 ,c2 )

(4)

with S(c1 , c2 ) being the set of concepts which subsume both c1 and c2 . To
get the information content −log p(c), the probability of a shared concept
p(c) is estimated from corpus data as
p̂(c) = f req(c)/N,

(5)

where f req(c) is the count of word tokens (nouns in this case) per concept
(e.g. occurrences of dollar, euro, and coin would count towards the frequency
of the concept money), and N is the overall number of word tokens observed.
Note that via the estimated p̂(c) this similarity measure depends on the
overall distribution of word probabilities, i.e. the word entropy. Namely,
for a language with more word types of overall lower token frequencies the
probability p̂(c) is biased to be lower on average, and hence the information
content −log p(c) is biased to be higher.
Similar considerations apply to finding hypernyms in vector spaces [26],
measuring semantic content to establish asymmetries between derived words
and their base forms [22], as well as measuring differences in semantic content
to establish hyponym-hypernym relations [10].
Overall, estimating a) the convergence points (in number of word tokens),
and b) reliable approximations for word entropies are crucial prerequisites for
understanding the performance of translation systems, semantic similarity
measures, and more generally, any NLP tool that relies on probabilities of
words.
These estimations are also relevant for efforts to broaden the scope of
NLP to lesser known languages [14, 21, 23, 7], and to establish quantitative
and corpus-based methods in linguistic typology [6, 32, 31].

4

Parallel Corpus
EPC
PBC

Size
≈ 600M
≈ 420M

∅ Size
≈ 30M
≈ 280K

Texts
21
1471

Lang.
21
1083

Table 1: Information on the parallel corpora used.

3

Data

To control for constant content across languages, we use two sets of parallel
texts: 1) the European Parliament Corpus (EPC) [11], and 2) the Parallel
Bible Corpus (PBC) [15].1 Details about the corpora can be seen in Table 1.
The general advantage of the EPC is that it is big in terms of numbers of
word tokens per language (ca. 30M), whereas the PBC is smaller (ca. 280K
word tokens per language), but massively parallel in terms of encompassing
> 1000 languages.

4

Methods

The basic information encoding unit chosen in this study is the word. Earlier
studies on the entropy of English [28, 12, 27] often chose letters instead.
However, in computational linguistics, word tokens are are a common working
unit.
A word token is here defined as a string of alphanumeric UTF-8 characters delimited by white spaces, with all letters converted to lower case and
punctuation removed. Note that scripts of Mandarin Chinese (cmn) and
Khmer (khm), for instance, delimit phrases and sentences by white spaces,
rather than words. However, such scripts constitute a negligible proportion
of our sample (≈ 0.01%). In fact, ≈ 90% of the texts are written in Latin
script.
Given words as basic information encoding units, we can estimate the
word entropy as outlined in the following.

4.1

Entropy estimation

Assume a text is a random variable T created by a process of drawing
and concatenating tokens from a set (or vocabulary) of word types V =
1

Last accessed on 09/03/2016

5

{w1 , w2 , ..., wV }, with vocabulary size V = |V|. Word type probabilities are
distributed according to p(w) = P r(T = w) for w ∈ V. Given these definitions, the entropy of T can be calculated as [29]
H(T ) = −

V
X

p(wi ) log2 (p(wi )).

(4)

i=1

H(T ) can be seen as the average information content of word types. A crucial
step towards estimating H(T ) is to reliably approximate the probabilities
p(wi ).

4.2

Block entropies

In a text, each word type wi has a token frequency fi = f req(wi ). Take the
first verse of the English Bible as a text.
in the beginning god created the heavens and the earth
and the earth was waste and empty [...]
In this example, the word type the occurs 4 times, and occurs 3 times,
etc. As a simple approximation, p(wi ) can be estimated via the maximum
likelihood method:
fi
p̂(wi ) = PV

j=1 fj

,

(5)

where the denominator is the overall number of word tokens. For the Bible
verse we would thus have:

H(T ) = −(

4
4
3
3
1
1
log2 ( ) +
log2 ( ) + . . . +
log2 ( )) ≈ 3.2
17
17
17
17
17
17

(6)

However, there are two main caveats with this so-called plug-in approach:
Firstly, it has been shown that the maximum likelihood
P estimator is unreliable, especially for small text sizes [19, 9], i.e. small Vj=1 fj . A range of
remedies have been proposed to overcome this problem [27, 19, 9, 13].
Secondly, estimating the entropy from raw counts assumes that word
tokens are drawn independently from a multinomial distribution, meaning

6

there are no dependencies between words. Clearly, this requirement is not
met for natural languages [13].
To overcome this problem, instead of using unigrams as “blocks” of information encoding, we could use bigrams, trigrams, n-grams, and thus increase
block sizes to 2, 3, n. This yields block entropies [27] defined as
Hn (T ) = −

V
X

p(wi , wi+1 , ..., wn ) × log2 (p(wi , wi+1 , ..., wn )),

(6)

i=1

where n is the block size. If n is big enough to take into account most longrange correlations between word tokens, then Hn (T ) is a close approximation
of H(T ). However, since the number of different blocks grows exponentially
with n, very big corpora are needed to get reliable estimates. Note that
Schürmann & Grassberger [27] use an English corpus of 70M words and
assert that entropy estimation beyond a block size of 5 letters (not words) is
already unreliable. We will therefore stick with block sizes of 1, i.e. unigram
entropies here.
However, we implement a more parsimonious approach taking into account dependencies between words. This is based on the theory behind
Lempel-Ziv compression [34, 35].

4.3

Source entropies

Instead of calculating Hn (T ) with ever increasing block sizes n, Kontoyiannis et al. [12] and Gao et al. [8] suggest to use the findings on optimal
compression by Ziv & Lempel [34, 35].
More precisely, [8] show that entropy estimation based on the so-called
increasing window estimator, or LZ78 estimator [5], is efficient in terms of
convergence.
Applied to the problem of estimating word entropies, the method works
as follows: for any given word token ti in a text find the longest matchlength l for which the string s = (ti , ti+1 , ..., ti+l ) matches a preceding string
in (t1 , ..., ti−1 ). Formally, define l as
li = 1 + max{0 ≤ l ≤ i : si+l−1
= sj+l−1
f or some 0 ≤ j ≤ i − 1}.
i
j

7

(7)

This is an adaptation of Gao et al.’s [8] match-length definition.2 To illustrate this, take the example of the English Bible again:
in1 the2 beginning3 god4 created5 the6 heavens7 and8 the9
earth10 and11 the12 earth13 was14 waste15 and16 empty17 [...]
For the word token beginning, in position 3, there is no match in the preceding string (in the). Hence, the match-length l3 is 0(+1) = 1. If we look at
and in position 11, then the longest matching string is and the earth. Hence,
the match-length l11 is 3(+1) = 4.
Note that the average match-lengths across all word tokens reflect the
redundancy in the string - which is the inverse of unpredictability. Based on
this connection, Gao et al. [8] (Equation 6) show that the entropy of the
string can be approximated as
N

1 X log2 (i)
,
H̃(T ) =
N i=2
li

(8)

where N is the overall number of tokens, and i is the position in the string.
This approximates the entropy rate, or per-symbol entropy [8], which is denoted as h by Lesne et al. [13], and for which holds
h = lim H(tN +1 |t1 , t2 , ..., tN ).
N →∞

(9)

In other words, as the number of tokens N approaches infinity, h reflects
the average information content of a token tN +1 conditioned on all preceding
tokens. So h accounts for all statistical dependencies between tokens [13].
We will call h and its approximation H̃(T ) the source entropy - after
Shannon’s [29] formulation of the entropy of an information source.3

2

Note that Gao et al. [8] give a more general definition that also holds for the so-called
sliding window, or LZ77 estimator.
3
Note that in the limit, i.e. as block sizes n approach infinity, block and source entropies are the same. Also, for an independent and identically distributed (i.i.d) random
variable, the block entropy of block size 1, i.e. H1 (T ), is identical to the source entropy
h [13]. However, as pointed out above, in natural languages words are not independently
distributed.

8

bg

cs

da

de

el

en

es

et

fi

fr

hu

it

lt

lv

12
10
8

Estimated Entropy (bits/word)

6
4
12
10

type
block

8

source
6
4
nl

pl

pt

ro

sk

sl

sv

12

9

10
8
6
4
0

25000 50000 75000 100000 0

25000 50000 75000 100000 0

25000 50000 75000 100000 0

25000 50000 75000 100000 0

25000 50000 75000 100000 0

25000 50000 75000 100000 0

25000 50000 75000 100000

Number of Word Tokens

Figure 1: Entropy convergence across 21 languages of the EPC corpus. The number of tokens on the x-axis
is limited to 100K, since entropy values already converge before that. Language identifiers are given above
the panels: bg: Bulgarian, cs: Czech, da: Danish, de: German, el: Modern Greek, en: English, es: Spanish,
et: Estonian, fi: Finish, fr: French, hu: Hungarian, it: Italian, lt: Lithuanian, lv: Latvian, nl: Dutch, pl:
Polish, pt: Portuguese, ro: Romanian, sk: Slovak, sl: Slovene, sv: Swedish.

bg

cs

da

de

el

en

es

et

fi

fr

hu

it

lt

lv

0.6
0.4
0.2
0.0

SD

0.6

type

0.4

block
source

0.2
0.0
nl

pl

pt

ro

sk

sl

sv

10

0.6
0.4
0.2
0.0
25000 50000 75000 100000

25000 50000 75000 100000

25000 50000 75000 100000

25000 50000 75000 100000

25000 50000 75000 100000

25000 50000 75000 100000

25000 50000 75000 100000

Number of Word Tokens

Figure 2: Convergence of SDs of entropies (y-axis) across 21 languages of the EPC corpus. Average SD
values are calculated at each 10K tokens.

4.4

Implementation

We estimate unigram entropies - i.e. entropies for block sizes of 1 (H1 (T ))
- using the Python implementation of the Nemenman-Shafee-Bialek (NSB)
[19] estimator. This estimator has a faster convergence rate compared to
other block entropy estimators [9].4
Moreover, we implement the source entropy estimator H̃(T ) as in Gao
et al.’s [8] proposal. This is inspired by an earlier implementation by Montemurro & Zanette [17] of Kontoyiannis et al.’s [12] estimator. The code of
this implementation will be made available on github.

5

Results

We first assess the text sizes at which both block and source entropies converge to a stable value using a subset of 21 languages (Section 5.1). We
then select texts from the full PBC corpus based on the minimum number of
tokens needed for convergence, estimate their entropies, and compare their
spread on an entropy spectrum (Section 5.2). Finally, in Section 5.3, we
investigate the correlation between block and source entropies.

5.1

Entropy convergence

Figure 1 illustrates the convergence of block and source entropies across 21
languages of the EPC. Note that block entropies are generally higher than
source entropies. This is expected given that uncertainty is reduced for source
entropies by taking the preceding co-text into account.
We further establish convergence points by calculating SDs of entropies
for step sizes of 10K tokens, illustrated in Figure 2. If we choose SD < 0.05
as a convergence criterion, then we get the convergence points per language
given in Table 2.
Note that all 21 languages converge to stable entropies below text sizes
of 100K tokens, with a maximum of 70K tokens (bg and ro) and an average
of 35K for source and 38K for block entropies. This is an encouraging result,
since texts with a minimum of around 70K tokens are available for a wide
range of languages in the PBC.
4

https://gist.github.com/shhong/1021654/

11

Language
bg
cs
da
de
el
en
es
et
fi
fr
hu
it
lt
lv
nl
pl
pt
ro
sk
sl
sv
∅

Source H
70000
40000
20000
20000
30000
20000
20000
40000
30000
20000
50000
20000
50000
40000
20000
50000
20000
70000
40000
40000
30000
≈ 35K

Block H
20000
40000
40000
40000
30000
30000
40000
40000
50000
30000
50000
30000
50000
40000
40000
40000
30000
60000
40000
40000
30000
≈ 38K

Table 2: Convergence points (SD < 0.05) in number of tokens for source
and block entropies.

12

5.2

Entropy estimates

Based on the convergence analyses, we choose 100K tokens as a cut-off point
for inclusion of PBC texts. This leaves us with 1352 texts for block entropies,
and 1360 texts for source entropies.5 Both cover 1001 languages. Figure 3 is
a density plot of the estimated entropy values. Block entropies are approximately normally distributed around a mean of 9.26 (SD = 1.24), and source
entropies around a mean of 5.97 (SD = 1.07). Again, source entropies are
systematically lower than block entropies.
0.4

M = 5.97
SD = 1.07

M = 9.26
SD = 1.24

density

0.3
type
block

0.2

source
0.1

0.0
4

8

12

16

Entropy

Figure 3: Density plot of block and source entropies across texts of the PBC
with > 100K tokens, amounting to 1360/1352 texts and 1001 languages.
It is remarkable that given the wide range of potential entropies - from
0 to >16 - most natural languages fall on a relatively narrow spectrum. For
example, block entropies mainly fall in the range between 7 and 12, thus only
covering around 30% of the possible range.

5.3

Correlation between block and source entropies

The similarities in convergence lines in Figure 1 suggest that there is a correlation between block and source entropy estimates. Figure 4 elicits this
correlation by plotting block entropies (x-axis) versus source entropies (yaxis). The Pearson correlation is strong (r = 0.96, p < 0.0001), suggesting
5
The number of texts is lower for block entropies since estimations failed for 8 texts
due to some punctuation marks that were not correctly removed.

13

that despite the differences in the estimation methods there is a strong connection between them.6
9

Source Entropy

8

r = 0.96, p < 0.0001

7

6

5

4

8

10

12

Block Entropy (NSB)

Figure 4: Correlation between block and source entropies for the PBC texts.

6

Discussion

Independent of the estimation method - using block or source entropies texts of 100K tokens are generally sufficient to estimate values reliably. This
was shown across 21 languages of the EPC. Of course, this is not to say
that there are no texts/languages in a bigger corpus like the PBC for which
convergence might take longer. Note that the 21 EPC languages cover around
50% of the full range of values across the PBC sample. For example, block
entropies range from ≈ 9 for English to ≈ 12 for Finnish in the EPC, and
from ≈ 6 to ≈ 13 in the PBC.
6

Five clear outliers were removed here. These are texts of languages like Chinese (cmn)
and Khmer (khm), which rather delimit phrases and sentences by white spaces. These
have incommensurable source and block entropies.

14

Moreover, there is a strong correlation between block and source entropies. This is somewhat surprising considering that the probabilities of
word occurrences are generally assumed to be strongly dependent on co-text.
Of course, there is a co-text effect. It yields source entropies which are lower
than block entropies. However, the difference between them is systematic and
allows us to predict source entropies from unigram block entropies. Namely,
a linear model fitted through the points in Figure 4 can be specified as
H̃(T ) = −1.59 + 0.82 H1 (T ).

(10)

Via Equation 10 we can convert block entropies into source entropies with
a mean difference of 0.03. Note that estimating source entropies requires
searching strings of length i − 1. As i increases, the CPU time per additional word token increases linearly, whereas unigram block entropies can
be estimated based on dictionaries of word types and their token frequencies, and the processing time per additional word token is constant. Hence,
Equation 10 can help to reduce processing cost.

6.1

Predicting translation performance

Based on estimated entropies per language, we can predict the difficulty of
pairwise translations between languages, i.e. translation system performance.
[11] used a probabilistic phrase-based model to translate between the
(then available) 11 languages of the EPC. As is shown in Figure 5, Koehn’s
BLEU scores for pairwise translations correlate with the pairwise ratios of
entropies (r = 0.58, p < 0.0001).
For example, Finnish (fi) is a high entropy language (H̃(T ) = 8.35) compared to English (en) (H̃(T ) = 6.32). Translating from Finnish to English
gives a BLEU score of 21.8, and from English to Finnish 13. As pointed out
above, this is due to the fact that translating into a higher entropy language
means having more “choice” - or uncertainty - when translating words (or
phrases). So the low performance from English to Finnish is predicted by
a low English-to-Finnish entropy ratio (6.32/8.35 = 0.76), compared to the
Finnish-to-English ratio (8.35/6.32 = 1.32).

6.2

Entropy as a normalization factor

In Section 2, some examples were given of studies that use information content in a distributional semantics context. Resnik [25], for instance, builds a
15

40

n = 110
r = 0.58, p < 0.0001

BLEU

30

20

10
0.8

1.0

1.2

Source Entropy Ratio

Figure 5: Correlation between ratios of source entropies and BLEU scores
of a statistical machine translation system [11]. Entropy ratios correspond
to pairwise ratios for 11 languages of the PBC: da, de, el, en, es, fi, fr, it,
nl, pt, sv.

16

similarity measure for concepts and words based on the information content,
e.g. −log p(wi ). Remember that the entropy as defined in Equation 4 is the
average information content. It is clear from the range of word entropies in
Figure 3 that languages can be strongly biased to have words with either
high or low information contents on average. For example, words in Finnish
are biased to have higher information content on average than words in English. This bias is a problem for the cross-linguistic application of similarity
measures. It can be overcome by normalization using the estimated entropy:
ICunbiased (wi ) =

7

−log p(wi )
.
H̃(T )

(11)

Conclusions

The entropy, average information content, uncertainty or “choice” is a core
property of words. Words, in turn, constitute fundamental building blocks
in computational linguistics. Understanding word entropies is therefore a
prerequisite for evaluation and improvement of the performance of NLP systems.
We have here established convergence points for 21 languages, illustrating
that average word entropies can be reliable estimated with text sizes of >
70K. Based on these findings, we estimated entropies across 1360 texts and
1001 languages. Furthermore, we have shown empirically that there is a
strong correlation between block and source entropies across these languages.
Overall, our results help to understand better the performance of multilingual translation systems, and to make measures in distributional semantics
cross-linguistically applicable.

8

Acknowledgements

CB is funded by the DFG Center for Advanced Studies Words, Bones, Genes,
Tools, and the ERC grant EVOLAEMP at the University of Tübingen.

17

References
[1] F. H. Behr, V. Fossum, M. Mitzenmacher, and D. Xiao. Estimating
and comparing entropies across written natural languages using ppm
compression. In Data Compression Conference, 2003. Proceedings. DCC
2003, page 416. IEEE, 2003.
[2] A. L. Berger, V. J. D. Pietra, and S. A. D. Pietra. A maximum entropy approach to natural language processing. Computational linguistics, 22(1):39–71, 1996.
[3] M. Boon. Information density, heaps’ law, and perception of factiness
in news. ACL 2014, page 33, 2014.
[4] P. F. Brown, V. J. D. Pietra, R. L. Mercer, S. A. D. Pietra, and J. C. Lai.
An estimate of an upper bound for the entropy of english. Computational
Linguistics, 18(1):31–40, 1992.
[5] T. M. Cover and J. A. Thomas. Elements of information theory. John
Wiley & Sons, 2006.
[6] M. Cysouw and B. Wälchli. Parallel texts. Using translational equivalents in linguistic typology. Sprachtypologie & Universalienforschung
STUF, 60.2, 2007.
[7] M.-C. De Marneffe, T. Dozat, N. Silveira, K. Haverinen, F. Ginter,
J. Nivre, and C. D. Manning. Universal stanford dependencies: A crosslinguistic typology. In LREC, volume 14, pages 4585–4592, 2014.
[8] Y. Gao, I. Kontoyiannis, and E. Bienenstock. Estimating the entropy of
binary time series: Methodology, some theory and a simulation study.
Entropy, 10(2):71–99, 2008.
[9] J. Hausser and K. Strimmer. Entropy inference and the james-stein
estimator, with application to nonlinear gene association networks. The
Journal of Machine Learning Research, 10:1469–1484, 2009.
[10] A. Herbelot and M. Ganesalingam. Measuring semantic content in distributional vectors. In ACL (2), pages 440–445, 2013.
[11] P. Koehn. Europarl: A parallel corpus for statistical machine translation. In MT summit, volume 5, pages 79–86, 2005.
18

[12] I. Kontoyiannis, P. H. Algoet, Y. M. Suhov, and A. J. Wyner. Nonparametric entropy estimation for stationary processes and random fields,
with applications to English text. Information Theory, IEEE Transactions on, 44(3):1319–1327, 1998.
[13] A. Lesne, J.-L. Blanc, and L. Pezard. Entropy estimation of very short
symbolic sequences. Physical Review E, 79(4):046208, 2009.
[14] W. D. Lewis and F. Xia. Developing odin: A multilingual repository of
annotated language data for hundreds of the world’s languages. Literary
and Linguistic Computing, page fqq006, 2010.
[15] T. Mayer and M. Cysouw. Creating a massively parallel bible corpus. In
N. Calzolari, K. Choukri, T. Declerck, H. Loftsson, B. Maegaard, J. Mariani, A. Moreno, J. Odijk, and S. Piperidis, editors, Proceedings of the
Ninth International Conference on Language Resources and Evaluation
(LREC-2014), Reykjavik, Iceland, May 26-31, 2014, pages 3158–3163.
European Language Resources Association (ELRA), 2014.
[16] D. J. McFarlane, N. Elhadad, and R. Kukafka. Perplexity analysis of
obesity news coverage. In AMIA Annual Symposium Proceedings, volume 2009, page 426. American Medical Informatics Association, 2009.
[17] M. A. Montemurro and D. H. Zanette. Universal entropy of word ordering across linguistic families. PLoS One, 6(5):e19875, 2011.
[18] M. A. Montemurro and D. H. Zanette. Complexity and universality in
the long-range order of words. arXiv preprint arXiv:1503.01129, 2015.
[19] I. Nemenman, F. Shafee, and W. Bialek. Entropy and inference, revisited. arXiv preprint, page physics/0108025, 2001.
[20] F. J. Och and H. Ney. Discriminative training and maximum entropy
models for statistical machine translation. In Proceedings of the 40th
Annual Meeting on Association for Computational Linguistics, pages
295–302. Association for Computational Linguistics, 2002.
[21] R. Östling. Bayesian word alignment for massively parallel texts. In
14th Conference of the European Chapter of the Association for Computational Linguistics, pages 123–127. Association for Computational
Linguistics, 2014.
19

[22] S. Padó, A. Palmer, M. Kisselew, and J. Šnajder. Measuring semantic
content to assess asymmetry in derivation. In Workshop on Advances
in Distributional Semantics, 2015.
[23] S. Petrov, D. Das, and R. McDonald. A universal part-of-speech tagset.
arXiv preprint arXiv:1104.2086, 2011.
[24] C. Ramisch, P. Schreiner, M. Idiart, and A. Villavicencio. An evaluation
of methods for the extraction of multiword expressions. In Proceedings of
the LREC Workshop-Towards a Shared Task for Multiword Expressions
(MWE 2008), pages 50–53, 2008.
[25] P. Resnik. Using information content to evaluate semantic similarity in
a taxonomy. arXiv preprint cmp-lg/9511007, 1995.
[26] E. Santus, A. Lenci, Q. Lu, and S. S. Im Walde. Chasing hypernyms in
vector spaces with entropy. In EACL, pages 38–42, 2014.
[27] T. Schürmann and P. Grassberger. Entropy estimation of symbol sequences. Chaos: An Interdisciplinary Journal of Nonlinear Science,
6(3):414–427, 1996.
[28] C. E. Shannon. Prediction and entropy of printed English. The Bell
System Technical Journal, 30(1):50–65, 1951.
[29] C. E. Shannon and W. Weaver. The mathematical theory of communication. The University of Illinois Press, Urbana, 1949.
[30] P. D. Stetson, S. B. Johnson, M. Scotch, and G. Hripcsak. The sublanguage of cross-coverage. In Proceedings of the AMIA Symposium, page
742. American Medical Informatics Association, 2002.
[31] B. Wälchli. Indirect measurement in morphological typology. In A. Ender, A. Leemann, and B. Wälchli, editors, Methods in contemporary
linguistics, pages 69–92. De Gruyter Mouton, Berlin, 2012.
[32] B. Wälchli and M. Cysouw. Lexical typology through similarity semantics: Toward a semantic map of motion verbs. 2012.
[33] Y. Zhang, V. Kordoni, A. Villavicencio, and M. Idiart. Automated multiword expression prediction for grammar engineering. In Proceedings
20

of the Workshop on Multiword Expressions: Identifying and Exploiting
Underlying Properties, pages 36–44. Association for Computational Linguistics, 2006.
[34] J. Ziv and A. Lempel. A universal algorithm for sequential data compression. IEEE Transactions on information theory, 23(3):337–343, 1977.
[35] J. Ziv and A. Lempel. Compression of individual sequences via variablerate coding. Information Theory, IEEE Transactions on, 24(5):530–536,
1978.

21

