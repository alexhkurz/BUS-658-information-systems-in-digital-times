Physica A 389 (2010) 3260–3266

Contents lists available at ScienceDirect

Physica A
journal homepage: www.elsevier.com/locate/physa

Entropy analysis of natural language written texts
C. Papadimitriou a , K. Karamanos a , F.K. Diakonos a , V. Constantoudis b,∗ , H. Papageorgiou c
a

Department of Physics, University of Athens, GR-15784, Greece

b

Institute of Microelectronics, NCSR Demokritos, Aghia Paraskevi, Athens, 15310, Greece

c

Institute for Language and Speech Processing, Athens, Greece

article

info

Article history:
Received 1 April 2009
Received in revised form 22 February 2010
Available online 8 April 2010
Keywords:
Stochastic processes
Quantitative linguistics
Critical phenomena
Entropy
Symbolic sequence analysis
Correlations

abstract
The aim of the present work is to investigate the relative contribution of ordered and
stochastic components in natural written texts and examine the influence of text category
and language on these. To this end, a binary representation of written texts and the
generated symbolic sequences are examined by the standard block entropy analysis and
the Shannon and Kolmogorov entropies are obtained. It is found that both entropies
are sensitive to both language and text category with the text category sensitivity to
follow almost the same trends in both languages (English and Greek) considered. The
values of these entropies are compared with those of stochastically generated symbolic
sequences and the nature of correlations present in this representation of real written texts
is identified.
© 2010 Elsevier B.V. All rights reserved.

1. Introduction
One of the most important advances in statistical physics during the past decades is the realization that statistical systems
can exhibit complex structure and behavior characterized by the intricate co-existence of order and randomness. For the investigation of such behavior both traditional methods of statistical physics of critical phenomena (scaling concepts, entropy
analysis) and methods borrowed from other related fields such as time series analysis have been used, properly adapted.
A natural language can be considered as a complex system since the succession of its symbol units (letters, syllables or
words) inside a text obeys some rules (grammatical or syntactical), which, however, are of probabilistic nature allowing
the insertion of randomness in the text structure. Thus, it seems legitimate to apply the above-mentioned methodologies
to the investigation of issues related to the structure of natural language written texts. One of the most well-studied such
issues is the detection and quantification of short- and long-range correlations in written texts (along the reading/writing
direction). The relevant works in the literature can be classified into two categories. Under the first category, written texts
are represented as time series at the level of words, where ‘‘time’’ is the position of the word in the text and the reported
quantity may be the word length, or its rank according to Zipf’s law or another word property. Not surprisingly, the main
tools are methods taken from time series analysis, such as detrended fluctuation analysis, estimation of the Hurst exponent,
Grassberger–Procaccia techniques, etc. [1–6]. In the second category, symbolic sequences are generated from written texts
at letter level using as alphabet either that of the natural language or one with fewer symbols in order to have better
statistics [7–11]. For example, Ebeling and Poschel in Ref. [8] have employed an alphabet of three symbols corresponding to
consonants, vowels and spaces between words respectively. The analysis is usually done with entropy concepts and methods
following the pioneering work by Shannon [12,13].
In addition to its complexity, a natural language may be considered a hierarchical system of structures starting at the
lowest level from the letters of the alphabet to syllables, and words and moving gradually at the higher level to phrases,

∗ Corresponding author.
E-mail address: vconst@imel.demokritos.gr (V. Constantoudis).
0378-4371/$ – see front matter © 2010 Elsevier B.V. All rights reserved.
doi:10.1016/j.physa.2010.03.038

C. Papadimitriou et al. / Physica A 389 (2010) 3260–3266

3261

Table 1
Corpus breakdown into languages and categories (numbers in symbol counts).
English corpus (M)

Greek corpus (M)

Total (M)

5
5
5

10
10
10

15
15
15

Literary works

2.16

1.34

3.5

Total

17.16

31.34

48.5

Web news

Politics
Economy
Sports

sentences and paragraphs which contribute to the text meaning and consequently text category and genre. In this respect, a
critical open issue is the interactions among the levels of this hierarchical language system. In other words, how and at which
extent differences at the higher level of hierarchy, that of text meaning and content, reflect on appropriate representations
of lower levels such as that of words.
The aim of the present paper is to cope with this hierarchy level-interaction problem in natural language written texts
proposing a methodology which amalgamates the ‘‘time-series’’ and ‘‘symbolic-sequences’’ approaches mentioned above.
More specifically, we seek for the impact of the text language and category to the word statistics and correlations by
employing a binary representation of written texts in which every letter is assigned to 1 and all spaces and punctuation
marks to 0. The symbolic sequences generated consist of 0s and 1s with the constraint of not having multiple successive 0s.
In other words, the lengths of blocks with successive multiple 1s between two 0s in a symbolic sequence correspond to the
word lengths in the corpus texts used for its generation. Thus, although it is a symbolic sequence representation, it carries
information about the word lengths and their position in the text. Additionally, due to its simplicity, this representation
allows calculations on a large amount of text data and partially analytical explanation of the results. The analysis of the
generated symbolic sequences is made in terms of entropy analysis and the Shannon and Kolmogorov entropy is calculated
and compared for sequences stemming from texts which belong to two languages (English and Modern Greek) and are taken
either from web news sites or literature. The entropy differences with respect to the text language and category are discussed
and related to word length distributions and correlations. Needless to say that the determination and understanding of such
reflections can inspire new ideas for automatic classification of texts with respect to their category. The paper is structured
as follows: In the next section, the analyzed data are described in detail. Section 3 presents the methodology we followed
concerning the entropy analysis of the texts. The results of this analysis are presented in Section 4 and discussed in Section 5.
Finally, Section 6 summarizes the findings of the paper and discusses future perspectives.
2. Corpus description
The corpus we analyze comprises texts written in two languages: English and modern Greek and two different genres:
literary works and news articles on the Web. The whole corpus accounts for a total of 48.5 M symbols (see Table 1).
The Web dataset spans a variety of topics made between January 1st and March 31st, 2008 in three categories: sports,
politics and economy and includes texts written by different authors. This dataset was derived from major (English and
Greek) news sites by exploiting a focused Web Crawler and an information extraction platform where various processes have
taken place (link extraction, html cleansing, URL canonicalization, utf8 encoding, metadata extraction).The dataset includes
the text as syndicated, as well as metadata such as date/time of posting, date/time of editing, author name, title of the article,
URL link, tags/categories. The metadata is formatted in XML following a specific XML Schema. The literary dataset comprises
text samples chosen from either literary e-books (English) or books which are part of the Hellenic National corpus.1
3. Methodology
All texts were transformed into binary symbolic sequences as follows: First every text is mapped to a sequence of 1s and
0s by assigning to each letter the value of 1 and to all other symbols (punctuation marks, spaces, numbers, etc.) the value of
0. We further simplify the sequence, by shrinking multiple successive zeroes to a single 0. Thus, every text in the corpus is
being represented by a sequence composed of blocks of 1s (depicting words in the original text) interposed by single 0s. An
example of this representation is shown below:
Example text: A record 11.4 million people were forced to flee their home countries last year, according
Symbolic sequence:
10111111 0 111111101111101111011111101101111011111011110111111110111101111011111111
The symbolic sequences of all documents that are relevant to a specific category (e.g. all political documents) are
concatenated and finally one symbolic sequence per category is obtained. The latter incorporates the author diversity, web
source or book variation and topic variety of the specific category. Subsequently, we proceed to the entropy analysis of
these sequences. In particular, we calculate the Shannon entropy and the Block Entropies, which come from the extension
of Shannon’s classical definition of the entropy of a single state to the entropy of a succession of states [14–17]. For long
1 http://hnc.ilsp.gr/en/.

3262

C. Papadimitriou et al. / Physica A 389 (2010) 3260–3266

aperiodic sequences there is a standard way to estimate the level of complexity or order by the calculation of the Block
Entropies using a gliding window. In this paper we utilize this analysis, which has become the standard convention in
the literature and has been repeatedly used to describe the information content or complexity level of similar sequences,
produced by physical and non-physical systems [16,18–20].
For the sake of completeness, we give below the definitions and the calculation methodology of Shannon and Block
Entropies. Consider a subsequence of length N composed by symbols over a finite ‘‘alphabet’’ set, in our case the binary
alphabet {0, 1}, selected out of a very long (theoretically infinite) sequence. We stipulate that this subsequence is to be read
in terms of blocks of length n. We accomplish this by considering a ‘‘moving frame’’ of n symbols which ‘‘glides’’ over the
subsequence by one symbol at a time. The probability of occurrence of a specific block is defined in the statistical limit as:
(n)

(n)

p(n) (Bi ) = No of blocks of the form Bi

encountered when gliding/total no of blocks encountered when gliding

and the dynamical (Shannon-like) block entropy for blocks of length n is:
H (n) = −

X

(n)

(n)

p(n) (Bi ) · ln p(n) (Bi )

(1)

i

where summation takes place over all possible n-length combinations of symbols from the binary alphabet. This quantity
assumes its maximum value for what the mathematicians call a ‘‘normal sequence’’, where all possible blocks appear and
are equally probable. In this case the maximum value is:
Hmax (n) = ln kn = n ln k

(2)

where k is the cardinality of the alphabet, which in our case k = 2.
Moreover, for n = 1 the above quantity is reduced to the Shannon entropy (S.E.) defined as:
S.E. = H (1) = −[p(0) ln p(0) + (1 − p(0)) ln(1 − p(0))]

(3)

where p(0) is the normalized frequency of 0s in the symbolic series. For p(0) < 1/2, as is the case in the symbolic sequences
generated by written texts (see Section 2), lower values of p(0) (less 0s in the sequence) give lower S.E.
We now turn to the selection problem, that is, to the possibility of the emergence of some preferred configurations
(blocks) out of the complete set of different possibilities. The number of all possible symbolic sequences of length n in a
k-symbol alphabet is kn , yet not all of these configurations are necessarily realized by the dynamics. A remarkable theorem by
McMillan [15] gives a partial answer to the selection problem asserting that for stationary and ergodic sources the probability
of occurrence of a block is:
(n)

p(n) (Bi ) ∼ e−H (n)
for almost all blocks. In order to determine the abundance of long blocks one is thus led to examine the scaling properties
of H (n) as a function of n. The associated entropy per symbol is defined as:
h(n) = H (n)/n

(4)

and its limit n → ∞ (if it exists) gives the entropy of the source (a topological invariant) which is the discrete analog of the
metric or Kolmogorov Entropy (K.E.):
h = lim h(n) = K.E.
n→∞

(5)

For the symbolic sequences considered in this work and generated as described above, we compute the value of H (n) for
block length up to 10, in order to have sufficient and accurate statistics. As explained in Ref. [21] and is well known in the
literature, the maximum value of block length where we have good statistics varies roughly as nmax = ln(N ), where N is the
size of the sample. The latter varies between ∼1 · 106 and 10 · 106 giving nmax between 14 and 16. Thus, we can consider
safely the block entropies up to n = 10.
4. Results
The first question to be addressed is the behavior of H (n) versus n for the concatenated symbolic sequences obtained from
the corpus with the method described in the previous section. Fig. 1 shows the increase of H (n) with n for the Greek political
news symbolic sequence. A linear scaling up to numerical precision is observed. Similar behavior is exhibited in all cases.
This linear behavior is in contrast to the square root increase observed by Ebeling and Poschel in Ref. [8]. The difference can
be attributed to the different representation of written texts applied: [8] used an alphabet with three symbols for vowels,
consonants and spaces respectively in contrast to the two-symbol alphabet we employ. As explained in the previous section,
the K.E. can be extracted from the slope of the linear increase, while the S.E. is actually given by H (1). The values of the
estimated S.E. and K.E. of the symbolic sequences of all language and categories are shown in Table 2.
The first finding induced by these results is that, at each category, English texts exhibit larger S.E. and K.E. than the
corresponding Greek ones. Also, in both languages the entropies of the binary sequences obtained from the Web news are
clearly lower than the entropies of the novels. Moreover, both S.E. and K.E. seem to be slightly sensitive to the category of
Web news in both languages with the S.E. exhibiting higher sensitivity. In particular, it is found that the entropy values of

C. Papadimitriou et al. / Physica A 389 (2010) 3260–3266

3263

Table 2
Shannon entropy (S.E.), Kolmogorov Entropy (K.E.) and mean word length of Greek and English texts in the categories: Politics, economy, sports and
literature (for more details see Section 2).
Text category

Greek corpus

Web news

S.E.

K.E.

Mean word length

Politics
Economics
Sports

0.4261
0.4229
0.4382

0.3742
0.3726
0.3824

5.58
5.66
5.28

0.4623

0.3920

4.74

Politics
Economics
Sports

0.4524
0.4541
0.4691

0.3852
0.3857
0.3911

4.96
4.92
4.60

0.4825

0.4000

4.34

Literary works

English corpus

Web news
Literary works

Fig. 1. Block entropy H (n) vs block size n calculated from the symbolic sequence of the Greek politics news texts. Notice the linear scaling up of H (n)
with n allowing the definition and estimation of the Kolmogorov entropy. The same linear behavior is exhibited by the symbolic sequences of all texts we
analyzed.

sport news portray higher values than politics and economy news. The latter give almost the same entropies with that of
politics being very slightly larger (lower) in Greek (English).
Motivated by the small differentiations among the entropies of the analyzed categories, one can question the statistical
reliability of the claimed trends. Due to the way of the generation of symbolic sequences (see Section 3), we cannot provide
distributions of entropies so that the uncertainties of the shown results could be estimated. However, the significance of
these differences can be evaluated by looking at the dependence of entropies on the length of the analyzed sequences.
Fig. 2(a) shows these dependencies for the S.E. and K.E. of the Greek dataset. Both entropies saturate to their final values even
for lengths larger than 105 (i.e. two orders of magnitude lower than those used for the estimation of the final values), while
the claimed trends hold even at the scale of the smallest analyzed text of 1000 symbols. The same is true for the entropies of
English texts with small differentiations as shown in Fig. 2(b). Thus, we can easily conclude the statistical reliability of our
results and trust the obtained trends for the effects of the language and text categories on the values of the Shannon and
Kolmogorov entropies.
5. Discussion
By definition (Eq. (3)), the S.E. of a binary symbolic sequence is directly related to the normalized frequency p(0) of 0s
in it. In particular, S.E. is proportional to p(0) when p(0) ≤ 1/2, i.e. symbolic sequences with more 0s (larger p(0)) get
higher S.E. This is the case for the text-generated symbolic sequences analyzed here, since 0s in these are always single and
isolated and hence p(0) ≤ 1/2. Therefore, the text categories that have larger S.E. imply higher frequency of 0s and, due
to their generation methodology, they should contain words with shorter lengths on average. Indeed, the mean length of
words in the text categories we have analyzed in both languages exhibit the inverse trends with respect to S.E. behavior;
text categories with high S.E. have low mean word length and vice versa (see Table 2). This means that the differences in S.E.
reflect the different mean word lengths in analyzed text categories. In both languages, the words in novels have the lowest
mean length with the sports web news to follow and the economic and politics news get the higher means.
The interpretation of the differences in K.E. is more complicated. As Eqs. (4) and (5) reveal, the definition of K.E. involves
the distribution of the occurrence probability of all possible blocks with n symbols and its dependence on n. Thus, K.E.,
at least indirectly, seems to capture the correlations among the symbols in a sequence. These correlations can come from
either the sequence generation methodology described in Section 3, or the texts themselves. In the second case, we can also

3264

C. Papadimitriou et al. / Physica A 389 (2010) 3260–3266

Fig. 2. Shannon and Kolmogorov Entropies of the Greek (a) and English (b) dataset versus the length of the symbolic sequences for the categories: economy
(dotted line), politics (dashed–dotted line), sports (dashed line) and literature (straight).

discriminate between the correlations induced by the word length distribution and those emanating from the order of the
word positions in the text (inter-word correlations). Furthermore, the correlations quantified by K.E. may be language and
category dependent or universal. In order to understand the impact of the above correlations on K.E. and elucidate their
origins and nature, first we examine the effects that our sequence generation methodology has on K.E.
A random binary sequence with normalized frequency of 0s, p(0), has S.E. = K.E. = −(p(0) ln(p(0)) + (1 − p(0)) ln(1 −
p(0))). If we reduce each block with successive and multiple 0s contained in these random sequences to a single 0, then we
acquire symbolic sequences similar to those generated by the corpus texts. It is straightforward to show that the frequency
of 0s, pr (0), in such a sequence after the multiple zero reducing procedure is related to p(0) by:
pr (0) =

p(0)
1 + p(0)

.

Using this result we can also determine analytically the corresponding S.E. and K.E. getting:

 

S.E. = − ln
K.E. = −



p(0)
1 + p(0)

1 − p(0)
1 + p(0)


−

1
1 + p(0)

ln (1 − p(0)) +

ln p(0)



p(0)
1 + p(0)


ln p(0) .

It can be easily calculated that pr (0) in the analyzed text-generated sequences lies in the region ∼0.15–0.20. Therefore, p(0)
will vary in the region ∼0.18–0.25. For these values of p(0), the reduction of multiple 0s to a single zero procedure leads
to the decrease of both entropies with the K.E. to exhibit much more sensitivity. This means that this procedure induces
correlations reflected on the S.E. and K.E. decreases. However, it does not affect the entropy trends versus p(0). Sequences
with larger p(0) (or pr (0)) generated by texts with smaller mean word length have higher S.E. and also higher K.E.
One can argue that this proportional relation explains the similar behavior of S.E. and K.E. versus text language and
category shown in Table 2. But is it the whole story? Can the variations in K.E. be entirely attributed to those of S.E. and
consequently to differences in the mean word lengths of the texts? To address this question, we generated random binary
symbolic sequences with the limitation of having single and isolated 0 and with S.E. and average word length equal to those
of real text-generated sequences indicated in Table 2. We calculated the K.E. of these model sequences and found that in all
cases these are clearly higher than the corresponding actual ones. To reveal the reason for this difference, we should look
at the distribution of the lengths of the blocks with successive 1s (i.e. the distribution of word lengths in texts). Contrary to
the distribution of the model random sequences which decays exponentially with the length n, the distributions of the real
sequences present a peak at 3 and decays with a plateau or second smaller peak at the middle block lengths (∼5–8) (see
Fig. 3for two representative block/word length distributions). The non-exponentiality of the distribution function induces
also correlations in the symbolic sequences which are sensitive to text language and category. This is illustrated in Table 3,
which shows the differences between real and random K.E. for the various text categories in both languages included in the
analyzed corpus. One can notice that these differences follow the pattern of text language and category dependence exhibit
by S.E. and K.E.
However, even the inclusion of these correlations does not suffice for the interpretation of the calculated values of real K.E.
This can be shown by calculating the K.E. of sequences generated by shuffled texts which have the word length distribution

C. Papadimitriou et al. / Physica A 389 (2010) 3260–3266

3265

Fig. 3. Distributions of word lengths (or the lengths of blocks with 1s) in the English (blue full triangles) and Greek (black full squares) economy news.
Notice the peak and the deviation from purely exponential decay exhibited by the random sequences. (For interpretation of the references to colour in this
figure legend, the reader is referred to the web version of this article.)
Table 3
It is shown the differences between the K.E. of the real text sequences from the K.E. of the random sequences with isolated 0 and S.E. similar to the
corresponding real ones. The dependence pattern on text category and language almost follows the behavior of the S.E. and K.E. Also, the K.E. of the binary
sequences obtained from the shuffled and real texts for all analyzed categories are reported. Notice the slight but persistent difference present in all cases.
Text category

Greek corpus

Web news

Politics
Economics
Sports

Literary works

English corpus

Web news
Literary works

Politics
Economics
Sports

K.E. (random)–K.E. (real)

Shuffled K.E.

Real K.E.

0.0245
0.0237
0.0255

0.3763
0.3744
0.3845

0.3742
0.3726
0.3824

0.0337

0.3947

0.3920

0.0332
0.0339
0.0389
0.0390

0.3869
0.3874
0.3928
0.4013

0.3852
0.3857
0.3911
0.4000

of the real texts but the words in these are randomly positioned. Table 3 indicates the results for these shuffled sequences
next to the real values. Although, both values are very close, in all cases the K.E. of the shuffled texts lie a little higher than
the real ones. By using the methods described in Section 3, we justified the statistical reliability of these differences. Hence,
we can argue that these slight differences in K.E. are the trace of the correlations between the positions of the word in
the analyzed texts. Noticeably, these differences do not seem to be sensitive to text category and language implying the
universality of these correlations as reflected on the K.E. of the binary representations of the texts.
To summarize, we have argued that the correlations captured by K.E. values and their differences come from the
sequence generation procedure as also as the word length statistics and position correlations. The correlations induced
by the sequence generation method follows the behavior of S.E. with respect to text language and category and can be
attributed to the differences in the average word length. The statistics of the word lengths quantified by their distribution
function induce correlations which also are sensitive to text language and category. Finally, the correlations between word
positions in texts reflect on K.E. very slightly in a way it seems to be independent of text language and category.
6. Summary
Natural language written texts can be considered successions of units (letters, syllables, words or phrases) whose
evolution is neither deterministic nor full random. They obey rules but, at the same time, they exhibit random characteristics.
One of the most common tools for investigating and quantifying the relative contribution of regularity and randomness in
such sequences (i.e. the degree of present correlations) is the entropy analysis. In addition, natural language written texts
can be seen as hierarchical systems starting with letters and words at the lower level and moving upwards to phrases,
sentences and finally meanings. One of the most fundamental questions in this description of language is the communication
or interaction between the levels of the hierarchical structure.
In this paper, we employed the entropy analysis in order to investigate some aspects of hierarchy level-communication
problem. We calculated the Shannon and Kolmogorov entropy of text-generated symbolic sequences and found that both
exhibit the same pattern of dependencies on the text category and language. The dependencies of S.E. reflect in an inverse
way the dependencies of the average word length on text category and language. The K.E. counts for the correlations in the
sequences whose origins are threefold. The first part comes from the sequence generation procedure, the second from the
word length distributions and the third and smaller from the correlations between the positions of the words in the text.

3266

C. Papadimitriou et al. / Physica A 389 (2010) 3260–3266

The first two parts are sensitive to text language and category similarly to S.E., whereas the third one seems to be almost
the same in all text categories in both languages. Future work in the perspective of the findings of this paper may include
the application of entropy analysis in other languages and text categories to check the generality of the trends as well as the
use of different symbolic representations of texts.
References
[1] M. Ausloos, Physica A 387 (2008) 6411.
[2] G. Sahin, M. Erenturk, A. Hacinliyan, Chaos Solitons Fractals 41 (2008) 198.
[3] J. Bhan, et al., Chaos Solitons Fractals 29 (2006) 6981.
[4] K. Kosmidis, A. Kalampokis, P. Argyrakis, Physica A 370 (2006) 808.
[5] P. Allegrini, et al., Chaos Solitons Fractals 20 (2004) 95.
[6] M.A. Montemurro, P.A. Pury, Fractals 10 (2002) 451.
[7] P. Balasubrahmanyam, G. Siromoney, Inf. Control 13 (1968) 281.
[8] W. Ebeling, T. Poschel, Europhys. Lett. 26 (1994) 241.
[9] W. Ebeling, T. Poschel, K.-F. Albrecht, Internat. J. Bifur. Chaos 5 (1995) 51.
[10] W. Ebeling, A. Neiman, Physica A 215 (1995) 233.
[11] L.B. Levitin, Z. Reingold, Chaos Solitons Fractals 4 (1994) 709.
[12] C.E. Shannon, Bell Syst. Tech. J. 27 (1948) 379.
[13] C.E. Shannon, Bell Syst. Tech. J. 30 (1951) 50.
[14] J.S. Nicolis, Chaos and Information Processing, World Scientific, Singapore, 1991.
[15] A.I. Khinchin, Mathematical Foundations of Information Theory, New York, 1957.
[16] G. Nicolis, P. Gaspard, Chaos Solitons Fractals 4 (1994) 41.
[17] K. Karamanos, J. Phys. A: Math. Gen. 34 (2001) 9231.
[18] W. Ebeling, G. Nicolis, Europhys. Lett. 14 (1991) 191.
[19] W. Ebeling, G. Nicolis, Chaos Solitons Fractals 2 (1992) 635.
[20] K. Karamanos, G. Nicolis, Chaos Solitons Fractals 10 (1999) 1135.
[21] J.M. Borwein, K. Karamanos, Nonconvex Optim. Appl. 77 (2005) 3.

