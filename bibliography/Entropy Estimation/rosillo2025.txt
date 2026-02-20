PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

Entropy and type-token ratio in gigaword corpora
Pablo Rosillo-Rodes ,* Maxi San Miguel , and David Sánchez
Institute for Cross-Disciplinary Physics and Complex Systems (IFISC) (UIB-CSIC), Campus Universitat de les Illes Balears,
E-07122 Palma de Mallorca, Spain
(Received 26 February 2025; accepted 22 May 2025; published 14 July 2025)
There are different ways of measuring diversity in complex systems. In particular, in language, lexical diversity
is characterized in terms of the type-token ratio and the word entropy. We here investigate both diversity metrics
in six massive linguistic data sets in English, Spanish, and Turkish, consisting of books, news articles, and tweets.
These gigaword corpora correspond to languages with distinct morphological features and differ in registers and
genres, thus constituting a varied testbed for a quantitative approach to lexical diversity. We unveil an empirical
functional relation between entropy and type-token ratio of texts of a given corpus and language, which is a
consequence of the statistical laws observed in natural language. Further, in the limit of large text lengths we
find an analytical expression for this relation relying on both Zipf and Heaps laws that agrees with our empirical
findings.
DOI: 10.1103/rxxz-lk3n
I. INTRODUCTION

Type-token ratio (T T R) and entropy (H) are useful metrics for evaluating the lexical diversity or richness. T T R is
defined as
V
(1)
TTR = ,
L
and simply measures the proportion of unique words (types),
i.e., the vocabulary size, V , to the total number of words
(tokens) in a given text, L [1–6]. T T R has been originally leveraged in the study of children’s vocabulary [2,7]
or illnesses which affect linguistic capabilities [8]. Diversity
measures, however, are not only interesting for linguistics. For
example, in ecology, the Hill number of order 0 measures the
total number of different species (or types) in a population of
a given size [9–11].
In contrast, entropy takes into account the distribution of
the unique words in terms of their occurrence frequencies,
capturing both the diversity of lexical items and also how
uniformly they are used. The Shannon entropy is defined as

H =−

V


pi ln pi ,

(2)

i=1

where pi represents the probability of the i-th word within
vocabulary V . As such, understanding the word entropy of
texts [12] offers valuable insights into the complexity and
unpredictability of language [13]. Originally proposed within

*

Contact author: prosillo@ifisc.uib-csic.es

Published by the American Physical Society under the terms of the
Creative Commons Attribution 4.0 International license. Further
distribution of this work must maintain attribution to the author(s)
and the published article’s title, journal citation, and DOI.
2643-1564/2025/7(3)/033054(14)

information theory [14,15], in the context of language higher
entropy suggests more unpredictability in word choices,
which can reveal underlying structures of language use
and cognitive processing. Texts with high entropy exhibit
greater diversity in word usage, reflecting more complex
linguistic structures. Specifically, this measure and related
operationalizations have been applied in a broad range of
linguistic studies, including differentiation between translated
and original documents [16], the study of ambiguity in
different legal systems [17], quantification of language
change [18], identification of stopwords [19], or observation
of change in literary preference [20], among others. In the
context of ecology, entropy is used as a measure of diversity
in studies about populations [21] and mutations in tumoral
cells [22], among others, under the name of Shannon index.
Indeed, the Hill number of order 1 is simply exp(H ), similar
to perplexity [9,10].
Hence, type-token ratio and entropy are two widely used
metrics that address diversity measurement in different ways.
For example, consider a language, L, consisting of only two
words, g and m. The vocabulary of this language can be
expressed as VL = {g, m}. One might initially assume that it
is possible to create multiple texts of the same length and
type-token ratio while still achieving different entropy values. We show this in Table I, where different strings with
the same T T R yield different values of the entropy because
of their different probability distributions. This observation
would suggest that type-token ratio and entropy are distinct
and uncorrelated diversity measures.
Nonetheless, the production of natural language texts is
constrained by statistical laws. These empirical rules highlight
patterns that occur in word frequency and vocabulary growth
across languages. On the one hand, Zipf law [23] states that
the distribution of word frequencies in a text follows a power
law. On the other hand, Heaps law [24,25] dictates that the
number of types in a text increases sublinearly with its total
number of tokens. These laws, among others, are found in

033054-1

Published by the American Physical Society

ROSILLO-RODES, SAN MIGUEL, AND SÁNCHEZ

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

TABLE I. Three possible samples of texts of L = 10 for a language having a vocabulary size V = 2. Note that the samples exhibit
the same T T R but different entropy.
Text

TTR

p1

p2

H (nats)

gmmgmgmggm
gmmmgmmmmm
gmmmmmmmmm

1/5
1/5
1/5

1/2
1/5
1/10

1/2
4/5
9/10

0.69
0.50
0.33

numerous linguistic corpora [26–28] and help linguists and
computational scientists model language, offering insights
into communication efficiency and the structure of human
language systems. Their persistence among different multilingual corpora is rooted in the balance between repetition and
novelty in human communication: a few common words are
used very frequently for efficiency, while rarer words carry
specificity and keep appearing as texts grow, though at a decreasing rate. Several generative models have been proposed
to explain Zipf and Heaps laws and other statistical features
of natural language, often highlighting their links to cognitive
processes [29–31].
Quite generally, Zipf and Heaps laws are closely related to
the concept of diversity in text analysis. Zipf law, by highlighting the unequal distribution of word frequencies, influences
the predictability of words in a text. As mentioned above,
this distribution plays a key role in calculating the entropy of
natural language texts, where frequent words reduce unpredictability and rarer words increase it. Similarly, Heaps law,
which describes vocabulary growth, directly affects the lexical
diversity of a text as calculated from the T T R definition given
by Eq. (1).
Type-token ratio and entropy are known to highly depend on sample size [32–36]. This dependence is indirectly
due to the statistical laws of natural language discussed
above. From a dependence of both T T R and H on L as
independent variable, it follows that, contrary to what is deduced from Table I, the value of H should depend on the
value of T T R. In this work, we explore this possible functional relation between type-token ratio and entropy in large
corpora.
Our empirical findings are based on the analysis of six
gigaword corpora from different sources and languages. We
further verify that Zipf and Heaps laws are observed in our
corpora with over one billion words, as expected. Based on
this analysis, we present two major findings.
First, we identify an empirical functional relation between
the entropy and the type-token ratio. This relation is consistently found across the studied massive corpora. Second,
to gain more insight, we fit an analytical expression for the
word entropy to the corpus data. This expression is based
on the validity of statistical laws of natural language and
holds for large vocabularies. Using Heaps law, we express
the word entropy in terms of the type-token ratio and fit it
to the six massive corpora, finding an excellent agreement
with the numerical results for large texts. The agreement
is observed for languages of different morphological types
and sources of distinct genres and registers or styles. This is
particularly relevant since it suggests that the H-T T R relation
is robust against how language users vary their word choices,

at least in large corpora. Our findings would then be valuable in optimizing performance and efficiency across various
tasks and applications of natural language processing (NLP)
and machine learning including quantifying information content, evaluating large language models, and enhancing data
compression.
The remaining of the manuscript is structured as follows. In
Sec. II, we describe the corpora used and analyze their corresponding Zipf and Heaps laws. In Sec. III we study empirical
measurements of the entropies in our gigaword corpora. We
further derive an analytical expression for the entropy of large
texts and fit this formula to the different data sets, obtaining good results. In Sec. IV we investigate the type-token
ratio in the various corpora, both empirically and analytically
using the Heaps law. We combine both diversity metrics in
Sec. V, where we discuss the functional relation that connects
H and T T R and its agreement with the empirical results.
Finally, Sec. VI contains our conclusions and suggestions for
further work.
II. DATA

We utilize six large-scale text corpora, each containing
over 109 words. These corpora are drawn from three primary sources: books, online news articles, and Twitter (now
X). The languages represented in these corpora are English,
Spanish, and Turkish, selected to reflect varying degrees of
isolating, inflectional and agglutinative morphology of their
vocabularies. This is important since lexical items are differently formed in the three languages. English, despite being
a fusional language, shows features of isolating languages,
where each word typically consists of a single morpheme.
Spanish comparatively uses more inflectional structures that
convey multiple morphosyntactic traits. Finally, Turkish is
considered as an agglutinative language with a high number of morphemes per word. Therefore, these languages lie
in different positions within the morphological classification
continuum [37]. Obviously, this selection is not comprehensive but is representative and sufficient for the purposes of
our work.
Since there exist subtleties in the definition of word [38],
we hereafter apply a pragmatic approach and consider word
as every linguistic unit that appears in our corpora between
spaces or punctuation marks. This orthographic identification
facilitates word counting and is the preferred criterion in commonly used NLP tokenizers [39].
The preprocessing criteria of the texts forming the corpora follow those established by Gerlach et al. [40],
including tokenization, removal of punctuation and numbers, conversion to lowercase, and preservation of accents.
The corpora which are publicly available may be found
in Ref. [41]. Below is a brief overview, as summarized in
Table II.
The first corpus, the Standardized Project Gutenberg Corpus (SPGC), introduced by Gerlach et al. [40], consists of over
5×104 curated books from Project Gutenberg [42]. SPGC
has been widely used in quantitative linguistics research [43],
from the study of changes in the use of vernacular biological
names [44] and understanding large-language models [45], to
measuring the similarity of texts [46] and studying statistical

033054-2

ENTROPY AND TYPE-TOKEN RATIO IN GIGAWORD …

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

TABLE II. Approximate values for the number of tokens (or
text length), L, the number of types (or vocabulary), V , and the
type-to-token ratio, T T R = V/L, of the different corpora used in
the analysis. We also show their language and source.
Corpus

L (109 )

V (106 )

T T R(10−3 )

Lang.

Src.

SPGC
SPA
TRCC100
TwEN
TwES
TwTR

2.62
1.89
2.64
1.80
1.80
1.80

3.1
3.7
9.8
2.8
4.3
13.3

1.2
2.0
3.7
1.6
2.4
7.4

English
Spanish
Turkish
English
Spanish
Turkish

Books
Websites
Websites
Twitter
Twitter
Twitter

laws in natural language [26,47]. For our analysis, we select
books from the SPGC written in English, excluding dictionaries and glossaries, resulting in a sample of 41 418 books. This
subset contains 2 620 190 214 tokens and 3 144 125 types, of
which 1 327 534 (40%) are hapax legomena (words with only
one occurrence in the corpus).
The second corpus (SPA) is part of the Corpus del Español [48], constituting a large collection of texts in Spanish
from web pages of 21 Spanish-speaking countries, gathered
between 2013 and 2014. After preprocessing, this corpus
comprises 1 887 720 265 tokens and 3 699 411 types, of which
1 900 485 (51%) are hapax legomena. The Corpus del Español is widely used in quantitative linguistics of Spanish,
from multidimensional analysis of register variation [49] to
comparisons between corpora and live expositions to certain
language forms [50].
The third corpus, the Turkish subcorpus of CC100
(TRCC100), is a collection of web crawl data from Common Crawl [51] in Turkish compiled by Facebook AI team
using CCNet [52,53]. After preprocessing, this corpus contains 2 640 929 269 tokens and 9 804 688 types, and 5 159 681
hapax legomena (53% of the types).
The following three corpora are compilations of geolocalized posts from the microblogging website Twitter (now
X) [54] retrieved from the filtered stream endpoint of the
Twitter API. The use of tweet data sets as quantitative linguistic corpora has garnered significant interest for exploring
lexical variation and entropy measurement applications in language studies. Twitter provided real-time, informal language
data that reflects contemporary linguistic trends and variations
[55–64], useful for research in computational sociolinguistics.
Recent studies have applied entropy measures to quantify
the unpredictability and information content within tweet
corpora, allowing for user classification [65], tweet veracity
determination [66], and sentiment analysis for stock market
predictions [67].
Tweets are automatically classified by language using
Google CLD2 [68] with a threshold of 95%. Consequently,
any tweet that contains less than 95% of its content in the
language under study is discarded.
The fourth corpus contains 2.27×108 tweets in English
(TwEN) from 2022, geolocalized in the USA, Canada, Greenland, Bermuda, Saint Pierre and Michelon, and Great Britain.
After preprocessing, this corpus consists of 1 800 000 005

tokens and 2 839 568 types, with 1 427 618 hapax legomena,
which constitute 50% of the total vocabulary.
Then, the fifth corpus (TwES) is a compilation of 3.32×108
tweets in Spanish from 2020 to 2022, geolocalized in
Spanish-speaking countries (Spain and Latin America). After
preprocessing, this data set consists of 1 800 000 011 tokens
and 4 305 331 types, of which 2 544 306 (59%) are hapax
legomena.
Finally, the sixth corpus comprises 3.41×108 tweets in
Turkish (TwTR) from 2015 to 2022 geolocalized in the Republic of Türkiye. After preprocessing, the TWTR corpus
consists of 1 800 000 004 tokens and 13 262 464 types, of
which 8 157 836 (62%) constitute hapax legomena.
We remark that the time periods of the three Twitter corpora are selected such that the token number is almost the
same, which is good for comparison purposes. Further, the
increasing number of hapax legomena from English to Spanish and then to Turkish reflects their unique morphological
typologies as explained above. Whereas Turkish formation of
words is more flexible, the isolating characteristics of English
makes word formation more rigid, the fusional mechanisms
of Spanish lying approximately in the middle. This fact is
reflected in the T T R values in Table II, where the flexibility of Turkish morphology increases the relative vocabulary
available in comparison to Spanish or English, and also in the
results of Sec. III.
We begin by analyzing Zipf and Heaps laws, which are
renowned for being fulfilled in large texts of natural language
and have been shown to be related under certain assumptions
[69–74]. We examine Zipf and Heaps laws throughout the six
corpora, as shown in Fig. 1. Zipf distribution for the frequency
f of a word w with rank r reads
k
,
(3)
ra
where k is a normalization constant and a = 1, although the
empirically found exponent differs from a = 1 [27]. Here,
the rank r of a word is defined as its position in the list of
all words when they are ordered by decreasing frequency. In
other words, the most frequent word is assigned a rank of 1,
the second most frequent a rank of 2, and so on. Approximations to Zipf law are observed throughout the six corpora,
noting the existence of two different exponents [75,76]. When
r surpasses a critical value around 104 − 105 , the frequency of
usage of words decreases faster than before. The first exponent
is close to a perfect Zipf law (a = 1), and corresponds to
the rank range of the kernel vocabulary as described in the
literature [77]. The second exponent would account for rare
words, like neologisms, technical terms, variants of words
pertaining to the kernel vocabulary, typos, etc.
On the other hand, Heaps (or Herdan) law [24,25] relates
the vocabulary or lexicon size (number of types) V of a text to
its length (number of tokens) L as
f =

V = αL β ,

(4)

where β ∈ (0, 1). This law dictates that the vocabulary size
grows sublinearly as more text is analyzed within the corpus. As shown in Fig. 1, our six corpora fulfill Heaps law
remarkably well, over several decades of L. The empirically
found exponent is in the range between 0.53 and 0.61, in

033054-3

ROSILLO-RODES, SAN MIGUEL, AND SÁNCHEZ

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

a very large text length. Let us first examine the empirical
entropy data.
A. Entropy measurement

agreement with previously reported observations in corpora of
similar sizes [78].

The Shannon entropy in Eq. (2) may be estimated using
different methods. The simplest one is the so-called plug-in
(PI) estimator, which consists of assigning the normalized
empirical frequency to the exact probability to compute the
Shannon entropy, i.e., it consists of plugging the normalized
empirical frequency into the sum in Eq. (2).
In Fig. 2 (left), we present entropy measurements as a
function of L for the six gigaword corpora using the PI estimator. The detailed measurement procedure is explained in
Appendix A. In the case of the TwTR corpus depicted in
Fig. 2(k), we restrict our analysis to L ⩽ 5×108 due to a lack
of reliable statistics beyond that point. Our observations reveal
a clear universal dependence of the entropy on L across all
corpora and registers. We will later dive on the details of this
functional form.
Interestingly, the data also shows slight quantitative differences related to both language and register. We recall that our
corpora include three languages (English, Spanish, and Turkish) and three main sources: books (formal register), online
media (combination of both formal and informal registers),
and microblogging posts (mostly informal register).
Analyzing by language, we observe that Turkish [Figs. 2(e)
and 2(k)] consistently shows the highest entropy, followed by
Spanish [Figs. 2(c) and 2(i)], and then English [Figs. 2(a) and
2(g)]. This hierarchy difference in entropy values is explained
by the morphological structure of each language. Turkish,
with its complex, agglutinative morphology, leads to a high
number of unique word forms. Consequently, the probability
distribution of words in Turkish is more dispersed, leading to
higher entropy. By comparison, Spanish morphology is less
agglutinative and more isolating than Turkish, while English
is the most isolating of the three. This progression reflects the
observed differences in entropy among the languages, which
is in accordance to previous descriptions in the literature [12].
Analyzing by register, we find that within any given language, entropy increases with register informality. Informal
registers, such as microblogging posts [in our case, tweets in
Figs. 2(g), 2(i), and 2(k)], typically exhibit higher entropy
than more formal registers like books [Fig. 2(a)] or online
media [Figs. 2(c) and 2(e)]. This pattern arises because
informal writing tends to be more spontaneous and less constrained by standardized grammar or vocabulary. In informal
contexts, language users often introduce unique expressions,
slang, abbreviations, and varied syntactic structures, resulting
in a broader range of distinct word forms. This variability
expands the vocabulary probability distribution, thus increasing entropy. In contrast, formal registers tend to adhere to a
more standardized language use, with recurring vocabulary
and grammar structures that limit entropy growth.

III. ENTROPY

B. Asymptotic expression

In this section, we present the word entropy results for
the corpora, showing how well it aligns with an analytical
expression based on Zipf and Heaps laws in the limit of

To gain further insight into the the entropy dependence on
L, we now examine Eq. (2) in the large vocabulary limit since
we are dealing with massive corpora.

FIG. 1. Frequency f as a function of the rank r (left) and vocabulary or lexicon V as a function of text length L (right) laws for
the SPGC [(a), (b)], SPA [(c), (d)], TRCC100 [(e), (f)], TwEN [(g),
(h)], TwES [(i), (j)], and TwTR [(k), (l)] corpora. The errors of the
estimation of both the Zipf exponent a and the Heaps exponent β are
lower than 0.001.

033054-4

ENTROPY AND TYPE-TOKEN RATIO IN GIGAWORD …

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

where
KV,a =

V


n−a .

n=1

For large vocabularies, in virtue of the Euler-Maclaurin
formula [79] we have that
KV,1 ∼ ln V,

(6)

= γ1 − γ1 (V + 1),

(7)

and as
V

ln r
r=1

r

where γ1 refers to the first Stieltjes constant and γ1 (x) to the
first generalized Stieltjes constant [80], we end up with
V

ln r
r=1

r

∼

(ln V )2
2

(8)

for large V (see leading order of Eq. (1.12) in Ref. [81] or
Eq. (3.1) of Ref. [80]). Compiling the above relations, one
arrives at [82–84]
H ∼ 21 ln V + ln ln V.

(9)

Throughout the manuscript, we use the symbol ∼ to
denote that two functions are asymptotically equivalent.
Specifically, if
lim

f (n)

n→∞ g(n)

= 1,

(10)

we write f ∼ g as n → ∞.
Equation (9) is an asymptotic result based on a Zipf exponent a = 1, but, as previously mentioned, our empirical
results in Fig. 1 indicate the existence of two regimes with two
different exponents. Whereas the first exponent can be safely
approximated by 1, the second exponent is larger than 1. However, we now show that the regime associated with the second
exponent has a negligible contribution to the entropy values in
relation to the regime associated with the first exponent.
To see this, let us consider the incremental partial entropy,
Hp (r) = −

r


pr  ln pr  ,

(11)

r  =1

FIG. 2. Measured entropy H (left) and T T R in terms of text
length L (right) for the SPGC [(a), (b)], SPA [(c), (d)], TRCC100 [(e),
(f)], TwEN [(g), (h)], TwES [(i), (j)], and TwTR [(k), (l)] corpora.
For H and T T R we plot the mean value and its error. In dashed
lines, we fit the data to the corresponding analytical expressions in
Eq. (12) and Eq. (14). The error in the estimation of δ is always lower
than 0.001.

The Shannon entropy of the Zipf distribution given by
Eq. (3) is obtained straightforwardly and reads

where pr  corresponds to the empirical probability of the word
with rank r  . We plot Hp (r) in Fig. 3. We also indicate with a
vertical dashed line the rank in which the Zipf law changes
exponent. Clearly, the ranks that can be fit with a ≃ 1 account
for around 80% of the observed entropy values or more, as
shown in Appendix B using different proxies. For this reason,
the a = 1 assumption is a good approximation.
In Eq. (9) we express entropy in terms of vocabulary,
V . However, as shown in Appendix A, our control variable
during the entropy measurement is text length, L. Thus, we
express Eq. (9) in terms of L for large samples using Heaps
law in Eq. (4) and find
β
ln L + ln ln L,
(12)
2
where the dependence on α is negligible in the limit of large
sample sizes. Even though the first term of Eq. (12) dominates
H∼

H=

V
a  ln r
+ ln KV,a ,
KV,a r=1 r a

(5)

033054-5

ROSILLO-RODES, SAN MIGUEL, AND SÁNCHEZ

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)
TABLE III. Results of the fit of Eq. (13) to the corpora shown in
Fig. 2. As evaluations of the goodness of the fit, we show the coefficient of determination, ρ 2 , the Spearman correlation coefficient, ρs ,
and the distance correlation, ρd . In all cases, p-value < 0.0001.

FIG. 3. Incremental partial entropy, Hp , in terms of the ordered
ranks, as in Eq. (11), for the SPGC (a), SPA (b), TRCC100 (c), TwEN
(d), TwES (e), and TwTR (f) corpora. We show as dashed vertical
lines the position of the rank in which the Zipf law changes exponent.

over the second term for L  1, it is relevant to note that
our data sets involve text lengths on the order of 109 tokens
and therefore the contribution of the second term cannot be
neglected.

Corpus

p1

p2

ρ2

ρs

ρd

SPGC
SPA
TRCC100
TwEN
TwES
TwTR

0.04
0.06
0.03
0.05
0.05
0.27

6.83
6.85
9.32
6.91
6.91
7.69

0.91
0.97
0.92
0.93
0.91
0.58

0.94
0.98
0.98
0.93
0.97
0.74

0.90
0.93
0.90
0.90
0.90
0.72

mentioned above. Specifically, the worst values of the metrics in Table III (without considering the TwTR corpus) are
2
ρmin
= 0.91, rs,min = 0.93, and ρd,min = 0.90.
Our selection for the range of L on which we perform the fit
is based on an analysis of σ (H ), the standard deviation of H.
An example is shown in Fig. 4. We observe that σ (H ) is large
for small L due to noisy statistics. On the other hand, σ (H )
is too small for large L, where the sample size approaches the
corpus size and the statistics are then not reliable. Therefore,
we take 0.0025 < σH < 0.025 as a reasonable interval for
the fit. The rest of the cases can be found in Appendix C.
We recall that Figs. 2–4 were obtained using the PI estimator for the entropy estimation. However, there exist other
estimators [12], such as the Nemenman-Shafee-Bialek (NSB)
estimator [88], which has been shown to be less biased than
the plug-in estimator and closer to real entropy [89,90]. In
Appendix D we recalculate the entropy and its deviation with
the NSB estimator and find no significant deviations.

C. Validation

We now proceed to compare Eq. (12) to the entropy measurements from the six corpora. This fitting process will allow
us to assess how well the predicted behavior aligns with
observed entropy values across different language-register
combinations.
Given Eq. (12), we fit the data to


β
ln L + ln ln L + p2 ,
Hfit (L) = p1
(13)
2
where p1 and p2 are fitting parameters, independent of L,
for the six data sets, in order to align the asymptotic approximation to the empirical data. In other words, Eq. (13)
is a semi-empirical approach that retains the same functional
behavior of H (L) for all corpora with p1 and p2 being specific
for each data set. This precisely follows the spirit of other
statistical laws [26]. Also, the β values are the ones obtained
in Fig. 1.
The results of a nonlinear least squares (NLS) fitting [85]
are shown with dashed lines in Fig. 2 and numerically in
Table III, where we also present a few metrics to evaluate
the goodness of the fit for Eq. (13) to the data, namely, the
coefficient of determination, ρ 2 , the Spearman correlation coefficient, ρs , the distance correlation coefficient ρd (a measure
suitable for nonlinear dependences [86,87]), and the p value.
We see a clear agreement between data and the fit of Eq. (13),
except for the TWTR corpus due to its poor statistics, as

IV. TYPE-TOKEN RATIO

With the data of L and V we can compute the type-token
ratio as defined in Eq. (1). The results are plotted in Fig. 2
(right), showing a clear decreasing dependence of T T R on L.
This dependence can be understood from the sublinear
relation between vocabulary and text length given by Heaps
law, as observed in Fig. 1. Using Eq. (4), we can express T T R
in terms of either the text length or the vocabulary, which

FIG. 4. Range selection for the fits of the SPGC in Fig. 2 studying the standard deviation for the entropy distributions σ (H ) in terms
of vocabulary V or text length L. In vertical dashed lines we show the
interval 0.0025 < σH (V ) < 0.025. We choose this interval to avoid
the regions in which the standard deviation is either too high due to
the noise caused by the low size of the samples, or too low due to the
sample size getting close to the corpus size.

033054-6

ENTROPY AND TYPE-TOKEN RATIO IN GIGAWORD …

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

TABLE IV. Results for the exponent δ of the power law relation
between the type-token ratio and the text length. The error in the
estimation of δ is always lower than 0.001. For assessing the goodness of the fit, we provide the coefficient of determination, ρ 2 , the
Spearman correlation coefficient, ρs , and the distance correlation, ρd .
In all cases, p-value < 0.0001. To check its accordance with Heaps
law in Eq. (4), we show the absolute difference of the exponents,
|δ − (β − 1)|. We show the value of β in Fig. 1.
Corpus

δ

ρ2

ρs

ρd

|δ − (β − 1)|

SPGC
SPA
TRCC100
TwEN
TwES
TwTR

−0.38
−0.41
−0.45
−0.41
−0.38
−0.41

1.00
0.98
1.00
1.00
1.00
1.00

−1.00
−1.00
−1.00
−1.00
−1.00
−0.96

0.92
0.90
0.96
0.89
0.93
0.86

0.01
0.06
0.02
0.05
0.02
0.01

results in a power law. Thus,
1

β−1

T T R = α β V β = αL β−1 ∼ L δ ,

(14)

which is valid asymptotically for L  1.
Equation (14) is in complete agreement with the data as
shown in Fig. 2 (right) and in Table IV. The low values for
|δ − (β − 1)| in Table IV support the validity of Heaps law
to understand the TTR dependence on text length in the limit
of large L.
It is worth noting that there are multiple methods for
calculating the type-token ratio. Throughout this work, we
employ an over-all approach, which is explicitly influenced
by text length. Alternative metrics, such as mean-segmental
approaches, are designed to avoid scaling with sample size .
It is important to note that if we had used mean-segmental
methods, our results would have been significantly different.
This point is discussed further in Sec. VI.
V. ENTROPY AND TYPE-TOKEN RATIO

We now compare the two distinct metrics for lexical diversity discussed in Secs. III and IV. In Fig. 5, we show the
entropy and T T R values for text portions of varying lengths in
the studied corpora, where each point corresponds to a specific
L value. We present the entropy data as deviations from the
maximum value, i.e., Hmax , which corresponds to the value of
H for the largest L, which is set to be L = 1.8×109 for all the
corpora in Fig. 5 to allow for graphic comparison. From Fig. 2,
we already know that T T R decreases as L increases, while
entropy shows the opposite trend, suggesting an expected
negative correlation between entropy and type-token ratio.
The empirical functional relationship between entropy and
type-token ratio that we find is shown in Fig. 5. The alignment
observed in H − Hmax among the corpora suggests a similar
behavior, especially near the asymptotic limit T T R → 0. This
can be understood by deriving an expression for H (T T R) for
large vocabularies. By substituting Eq. (14) in Eq. (12) and
noting that 0 < β < 1, we arrive to
H∼

β
ln T T R−1 + ln ln T T R−1 ,
2(1 − β )

which is valid for T T R

(15)

FIG. 5. Deviations from maximum entropy, Hmax , in terms of
T T R. Data is shown for the SPGC (red), SPA (blue), TRCC100
(green), TwEN (purple), TwES (orange), and TwTR (black) corpora.
Each point represents the mean over 25 random samples of a given
length L. The error is represented but is barely seen due the scale of
the entropy values.

In order to validate Eq. (15), we fit
Hfit (T T R)


β
−1
−1
+ p4 , (16)
= p3
ln T T R + ln ln T T R
2(β − 1)
to the data, p3 and p4 being fitting parameters. Using the
values for β extracted from the fits of Fig. 1, we obtain the
NLS fits shown in Fig. 6 (dashed lines) and in Table V using
the plug-in estimator. These results show an overall good
agreement between the asymptotic expression in Eq. (16)
and the data. Equation (16) inherits the validity for large L
from Eq. (12), and hence we observe an asymptotic validity
of the relation in Eq. (15). This fit clarifies the relationship
between H and T T R for small values of T T R, which is
based on logarithmic functions. This relationship is expressed
by Eq. (15) and depends on the validity of Zipf and Heaps
laws. Similar results using the NSB estimator are shown in
Appendix D.

TABLE V. Evaluation of the goodness of the fit for Eq. (16). We
provide the values of the determination coefficient, ρ 2 , the Spearman
correlation coefficient, ρs , and the distance correlation, ρd . In all
cases, p-value < 0.0001.
Corpus

p3

p4

ρ2

ρs

ρd

SPGC
SPA
TRCC100
TwEN
TwES
TwTR

0.04
0.61
0.24
0.49
0.43
2.48

6.93
5.61
8.94
5.95
6.13
3.03

0.91
0.97
0.96
0.91
0.92
0.60

−1.00
−1.00
−1.00
−1.00
−1.00
−0.99

0.94
0.97
1.00
0.98
0.99
0.98

1.
033054-7

ROSILLO-RODES, SAN MIGUEL, AND SÁNCHEZ

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

FIG. 6. H in terms of T T R for the SPGC (a), SPA (b), TRCC100
(c), TwEN (d), TwES (e), and TwTR (f) corpora for L > 2.5×106
tokens. With a dashed line we plot the fit to Eq. (16), whose goodness
is assessed in Table V. Inside the inset we show the data and the fit
in the confidence interval, as exemplified in Fig. 4.

VI. CONCLUSIONS

In this work, we conducted an empirical analysis of entropy
and type-token ratio using data from six corpora in three
languages: English, Spanish, and Turkish, each representing
different morphological typologies. These corpora, sourced
from books, media outlets, and Twitter (now X), contain over
109 word tokens, enabling robust statistical analysis. Our key
finding is a consistent functional relationship between H and
T T R across all data sets, as seen in Fig. 5.
To better understand this relationship, we derived Eq. (12),
an analytical expression for H in the limit of large text lengths
based on Zipf law. We also know that the dependence of
T T R on text length follows Eq. (14), in virtue of Heaps
law. This leads to Eq. (15), a function that directly links
H and T T R, aligning with our empirical observations. The
asymptotic alignment between corpus data and our analytical expression reinforces a functional dependence between
entropy and type-token ratio.
This is one of our main findings that has implications for
precise statistical modeling of large-scale natural language
data sets. Even though, in principle, word entropy and typetoken ratio might be seen as independent metrics, they are
linked for a text of a sufficiently large given length due to
statistical laws of natural language. The asymptotic relation
in Eq. (15) links a macrolevel variable in the complex system
of language (type-token ratio) with a microlevel measure of
information (entropy) which is influenced by deeper structural
patterns within the text.
A word of caution is here in order. Our results depend on
the overall approach used when computing the type-token

FIG. 7. (a) Typical probability distribution of the measurements
of the vocabulary for a fixed length l indicated in the figure for the
TwEs data set, whose standard deviation σ (V ) accounts for around
5% of the average V̄ , as seen in (c). It is thus reasonable to characterize the distribution with its mean value. Similar results are obtained
for the distribution of entropies, both using the plug-in (b) and the
NSB (d) estimators.

ratio. Using instead a mean-segmental approach would
require fixing a specific text length [1]. This adjustment
would alter the results presented in Sec. V and invalidate
the use of the variable L for analytically linking entropy and
the type-token ratio. Then, since both metrics reflect lexical
richness, a positive correlation would be found between
the mean-segmental (or standardized) type-token ratio and
entropy, as shown in the literature [91]. In this study, we do
not obtain this positive correlation because we use the overall
approach to compute the type-token ratio.
Our research is not without its limitations. First, as mentioned in the corpora description in Sec. II, we use a
pragmatical definition of words. There are others, like the
lexical definition, in which words represent a base form or
root, disregarding inflectional changes like verb conjugations.
This causes that the entropy we employed is higher than the
one we would have obtained in a lemmatized analysis, as the
lexical definition of word consolidates multiple forms of each
word. This consolidation results in fewer unique items and
a more predictable word distribution, i.e., a lower entropy.
We have also not accounted for the existence of homographs.
In this sense, our entropy measurements are systematically
lower than the ones that we would have obtained considering
homographs as separate words, as the latter increase the available vocabulary, and hence the diversity and unpredictability.
Further interesting research could study the differences in
entropy between languages including lemmatized corpora and
considering homographs.
Second, our analysis is limited to unigram entropy, which
only considers the probability of individual words without
accounting for dependences between them. Written texts,

033054-8

ENTROPY AND TYPE-TOKEN RATIO IN GIGAWORD …

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

TABLE VI. RH , RH , Zipf exponents a1 and a2 , and Zipf critical
point rc , for the six different corpora under study.
Corpus

RH

RH

a1

a2

rc

SPGC
SPA
TRCC100
TWEN
TWES
TWTR

0.17
0.15
0.23
0.19
0.14
0.24

0.13
0.12
0.21
0.12
0.13
0.20

1.12
1.10
0.91
1.19
1.10
0.92

1.86
1.90
1.83
1.79
1.87
1.80

7947
17,197
28,744
4896
15,057
58,040

under project APASOS (PID2021-122256NB-C21) and the
María de Maeztu Project No. CEX2021-001164-M.
DATA AVAILABILITY

however, often exhibit correlations between words [92–97].
Such correlations can influence the overall structure and predictability of the text, reducing entropy when sequences are
more predictable or increasing it when language patterns are
more varied. Therefore, while unigram entropy provides valuable insights into vocabulary diversity, it does not capture the
complexity introduced by these word-to-word correlations. To
fully understand text entropy, future analyses should consider
n-gram or sequence-based entropy measures, defining an ngram T T R, which incorporate these dependences and better
reflect the inherent structure of written language.
Importantly, we did not include punctuation marks in our
analysis to stay consistent with the text-filtering approach
used in Ref. [40]. However, this is an interesting direction for
future work. Notably, Ref. [98] shows that punctuation marks
behave statistically like common words and can even improve
the fit to Zipfian distributions.
Also, the analysis of Turkish Twitter data, from the TwTR
corpus, presented specific challenges. Along with increased
data dispersion, we lacked reliable statistics for cases where
L > 5×108 , resulting in somewhat less accurate fits compared
to those for other corpora and languages, though still reasonably robust. Future work that includes more comprehensive
Twitter statistics for Turkish could enhance these findings.
We in addition remark that Eq. (15) is asymptotic, i.e., only
valid for small T T R. Further studies should try to derive analytical expressions for H (T T R) that shed light in the regimes
corresponding to both intermediate and large T T R values.
Finally, it would be interesting to investigate in future work
whether the functional relationship found here between two
diversity measures also holds in data sets from other fields,
such as ecology and genetics, where Zipfs and Heaps laws
have been observed [99,100]. Since our derivation shows that
the entropy–TTR connection follows from these two laws,
one would expect the same relationship to hold in any domain where they apply. However, our analysis has focused
exclusively on language data, and testing this in other contexts could help assess the robustness and limitations of the
connection.
ACKNOWLEDGMENTS

We thank M. A. Tugores for insightful discussions about
the corpora analysis, and J. De Gregorio and E. G. Altmann
for valuable comments and references. This work was
partially supported by the Spanish State Research Agency
(MICIU/AEI/10.13039/501100011033) and FEDER (UE)

The data that support the findings of this article are openly
available [41].
APPENDIX A: COMPUTATION
OF THE ENTROPY AND TTR

For each corpus described in Sec. II, we compile the totality of texts and create a single document with all the content
of the corpus. For the analysis of the six corpora, we compute
entropy, H, vocabulary, V , and type-token ratio, T T R, of
several partitions of different lengths of the compiled corpora
of total length LT .
Given a compiled corpus of length LT , we consider
fragments with lengths l ∈ [2.5×106 , LT ] in steps of l =
2.5×106 tokens. For each value of l, we take 25 random
fragments of l tokens from the total of LT tokens and compute
the distributions of H, V , and T T R. The codes used for the
analysis of the corpora are available in Ref. [41].
In Fig. 7(a) we show the shape of a typical distribution for
an arbitrary value of l. To measure the different magnitudes
corresponding to the length l, we characterize the distribution
of Fig. 7(a) by its mean value and its standard deviation. We
believe that this is an appropriate approach because, as shown
in Figs. 7(b), 7(c), and 7(d), the vast majority of standard
deviations fall below 5% of the mean value of the distribution.
APPENDIX B: CONTRIBUTION TO THE ENTROPY
OF THE SECOND REGIME OF THE
FREQUENCY DISTRIBUTION

The contribution to the entropy of the ranks in the second
regime of the Zipf distribution can be checked using several
numerical ways.
One option is to use ratio of frequencies as a proxy to
determine the contribution to the entropy of the words ranked
beyond the critical value, i.e., the rank at which the Zipf exponent changes from around 1 to approximately 2. As shown
in Ref. [101], the contribution of the ranks below the critical
value (b in Ref. [101], rc in Table VI) is around 80%.
Another option is to directly compute
V
r =r pri ln pri
RH = Vi c
ri =1 pri ln pri
V
ri =rc pri ln pri
= rc −1
,
(B1)
V
ri =1 pri ln pri +
ri =rc pri ln pri
which constitutes the numerical ratio between the entropy of
the ranks above the critical value and the total entropy of
a given corpus of vocabulary V , pri being the normalized
frequency of the word with rank ri , as in Eq. (11). To compute
rc , we find the crossing point between the fits of the two Zipf
regimes in Fig. 1(left). We provide the values of RH for the six
corpora under study in Table VI.
A more theoretical option would be to consider the fit to
Zipf law instead of the empirical values of the frequencies.

033054-9

ROSILLO-RODES, SAN MIGUEL, AND SÁNCHEZ

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

FIG. 8. Range selection for the fits in Fig. 2 for the SPGC (a),
SPA (b), TRCC100 (c), TwEN (d), TwES (e), and TwTR (f) corpora
studying the standard deviation for the entropy distributions σ (H )
in terms of text length L. In vertical dashed lines we show the
selected interval for the fit. We depict the obtained values for both
the plug-in estimator (orange dots) and the NSB estimator (blue
dots). As seen, we do not see significant differences between both
estimators.

FIG. 10. H in terms of T T R for the SPGC (a), SPA (b),
TRCC100 (c), TwEN (d), TwES (e), and TwTR (f) corpora for
L > 2.5×106 tokens using the NSB estimator. With a dashed line we
plot the fit to Eq. (16), whose goodness is assessed in Table VIII.
Inside the insets we show the data and the fit in the confidence
interval, as exemplified in Fig. 4.

Let the distribution of frequencies be described by
 −a1
c1 r
c2 r −a2

f =

if r < rc ,
if r ⩾ rc .

(B2)

We can obtain c1 and c2 imposing continuity and normalizing the frequency distribution, so that
⎡

r
c −1

c1 = L ⎣
⎡

⎤−1
V

ri−a1 +
ri−a2 ⎦ ,
ri =rc

ri =1

c2 = L ⎣rca1 −a2

r
c −1

ri−a1 +

ri =1

V


(B3)

⎤−1
ri−a2 ⎦ .

(B4)

ri =rc

In this sense, we can compute
RH =

c2

c1

rc −1 −a1
ln
ri =1 ri

V



−a2
ln cL2 ri−a2
ri =rc ri



c1 −a1
+ c2 Vri =rc ri−a2 ln cL2 ri−a2
r
L i

(B5)

FIG. 9. Measured entropy H using the NSB estimator in terms
of text length L for the SPGC (a), SPA (b), TRCC100 (c), TwEN (d),
TwES (e), and TwTR (f) corpora. The parameters of the fit and its
goodness evaluation are shown in Table VII.

using the text length, L, and vocabulary size, V , of each
corpus. The results are shown in Table VI.
As seen in Table VI, the low values of both metrics RH
and RH support the assumption that the first regime of the
distribution (the one closest to an exact Zipf law) contributes
mainly to the entropy; specifically, around 80%.

033054-10

ENTROPY AND TYPE-TOKEN RATIO IN GIGAWORD …

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

TABLE VII. Results of the fit of Eq. (13) to the corpora shown
in Fig. 9 using the NSB estimator for the computation of the entropy.
As evaluations of the goodness of the fit, we show the coefficient of
determination, ρ 2 , the Spearman correlation coefficient, ρs , and the
distance correlation, ρd . In all cases, p-value < 0.0001.
2

Corpus

p1

p2

ρ

ρs

ρd

SPGC
SPA
TRCC100
TwEN
TwES
TwTR

0.03
0.05
0.01
0.04
0.04
0.23

6.87
6.90
9.50
6.95
6.98
8.05

0.90
0.96
0.85
0.93
0.88
0.50

0.93
0.98
0.84
0.94
0.96
0.71

0.90
0.93
0.82
0.90
0.90
0.68

TABLE VIII. Evaluation of the goodness of the fit of Eq. (16) for
the NSB estimator of H . We provide the values of the coefficient of
determination, ρ 2 , the Spearman correlation coefficient, ρs , and the
distance correlation, ρd . In all cases, p-value < 0.0001.
Corpus

p3

p4

ρ2

ρs

ρd

SPGC
SPA
TRCC100
TwEN
TwES
TwTR

0.03
0.52
0.08
0.44
0.36
2.11

6.96
5.88
9.40
6.10
6.32
4.10

0.89
0.96
0.69
0.92
0.89
0.51

−1.00
−1.00
−1.00
−1.00
−1.00
−1.00

0.93
0.96
1.00
0.99
1.00
0.98

249 370 < V < 5 500 902, and all the available data for the
TwTR.
APPENDIX C: RANGE SELECTION FOR THE FITS
APPENDIX D: MEASUREMENTS USING NSB ESTIMATOR

As stated in Sec. III, to select the appropriate range in
which to perform the fit of Eq. (13) we search the values in
which the data that we are fitting is not affected either by
the noisy small V regime or by the artificially low σH observed when the sample size approaches the corpus size. For
example, the range for SPA corpus is 0.0025 < σH < 0.025.
This heuristic σH condition works well for all the corpora,
as seen in Fig. 8, with the exception of the Turkish ones.
In both Turkish corpora, σH is systematically higher than in
the Spanish and English corpora, and has a different shape.
Hence, in the case of Turkish corpora we choose a range
of high vocabularies far from the beginning and the end
of the sampling range for the TRCC100, corresponding to

In this Appendix we show the results using the NSB estimator [88] for the word entropy of the texts.
The differences between the results of the PI estimator
and the NSB estimator are relatively small, as can be seen
by comparing Fig. 9 with Fig. 2 (left) and Fig. 10 with
Fig. 6. In general, the coefficient of determination tends to
be slightly lower with the NSB estimator (see Tables VII
and VIII). However, the other metrics used to evaluate the
goodness of fit show favorable outcomes overall. Since the
NSB estimator produces results consistent with those of
the PI estimator, this agreement lends credibility to the PI
results.

[1] W. Johnson, Studies in language behavior: A program of research, Phychol. Monogr. 56, 1 (1944).
[2] M. C. Templin, Certain Language Skills in Children: Their
Development and Interrelationships (University of Minnesota
Press, Minneapolis, MN, 1957), Vol. 26.
[3] A. Hardie and T. McEnery, Statistics, in Encyclopedia of Language and Linguistics, 2nd ed., edited by K. Brown (Elsevier,
Amsterdam, 2006).
[4] K. Kettunen, Can type-token ratio be used to show morphological complexity of languages? J. Quant. Linguist. 21, 223
(2014).
[5] N. Bermel, Corpora and quantitative data in Slavic languages,
Russ. Linguist. 39, 275 (2015).
[6] T. Litvinova, P. Seredin, O. Litvinova, and O. Zagorovskaya,
Differences in type-token ratio and part-of-speech frequencies
in male and female Russian written texts, in Proceedings of
the Workshop on Stylistic Variation, edited by J. Brooke, T.
Solorio, and M. Koppel (Association for Computational Linguistics, Copenhagen, Denmark, 2017), pp. 69–73.
[7] C. W. Hess, K. M. Sefton, and R. G. Landry, Sample size
and type-token ratios for oral language of preschool children,
J. Speech Lang. Hear Res. 29, 129 (1986).
[8] T. C. Manschreck, B. A. Maher, T. M. Hoover, and D. Ames,
The type–token ratio in schizophrenic disorders: Clinical and
research value, Psychol. Med. 14, 151 (1984).

[9] L. Jost, Entropy and diversity, Oikos 113, 363 (2006).
[10] H. Tuomisto, A consistent terminology for quantifying species
diversity? Yes, it does exist, Oecologia 164, 853 (2010).
[11] O. Mazzarisi, A. de Azevedo-Lopes, J. J. Arenzon, and F.
Corberi, Maximal diversity and Zipf’s law, Phys. Rev. Lett.
127, 128301 (2021).
[12] C. Bentz, D. Alikaniotis, M. Cysouw, and R. Ferrer-i-Cancho,
The entropy of words–learnability and expressivity across
more than 1000 languages, Entropy 19, 275 (2017).
[13] M. A. Montemurro and D. H. Zanette, Universal entropy of
word ordering across linguistic families, PLoS ONE 6, e19875
(2011).
[14] C. E. Shannon, A mathematical theory of communication,
Bell Syst. Tech. J. 27, 379 (1948).
[15] T. M. Cover and J. A. Thomas, Elements of Information Theory
(Wiley, New York, 1999).
[16] K. Liu, R. Ye, L. Zhongzhu, and R. Ye, Entropy-based
discrimination between translated Chinese and original Chinese using data mining techniques, PLoS ONE 17, e0265633
(2022).
[17] R. Friedrich, M. Luzzatto, and E. Ash, Entropy in legal language, in NLLP 2020 Natural Legal Language Processing
Workshop 2020. Proceedings of the Natural Legal Language
Processing Workshop 2020 co-located with the 26th ACM
SIGKDD International Conference on Knowledge Discovery

033054-11

ROSILLO-RODES, SAN MIGUEL, AND SÁNCHEZ

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

& Data Mining (KDD 2020) (CEUR-WS, Aachen, Germany,
2020), Vol. 2645, pp. 25–30.
[18] M. Gerlach, F. Font-Clos, and E. G. Altmann, Similarity of
symbol frequency distributions with heavy tails, Phys. Rev. X
6, 021009 (2016).
[19] M. Gerlach, H. Shi, and L. A. N. Amaral, A universal information theoretic approach to the identification of stopwords,
Nat. Mach. Intell. 1, 606 (2019).
[20] M. Mohseni, C. Redies, and V. Gast, Comparative analysis
of preference in contemporary and earlier texts using entropy
measures, Entropy 25, 486 (2023).
[21] I. I. Eliazar and I. M. Sokolov, Diversity of Poissonian populations, Phys. Rev. E 81, 011122 (2010).
[22] J. R. Romero-Arias, G. Ramírez-Santiago, J. X. VelascoHernández, L. Ohm, and M. Hernández-Rosales, Model for
breast cancer diversity and spatial heterogeneity, Phys. Rev. E
98, 032401 (2018).
[23] G. K. Zipf, The psychology of language, in Encyclopedia of Psychology (Philosophical Library, New York, 1946),
pp. 332–341.
[24] G. Herdan, Type-Token Mathematics: A Textbook of Mathematical Linguistics (Moulton & Co, Irvine, CA, 1960).
[25] H. Heaps, Information Retrieval: Computational and Theoretical Aspects (Academic Press, New York, 1978).
[26] E. G. Altmann and M. Gerlach, Statistical Laws in Linguistics,
in Creativity and Universality in Language, edited by M. Degli
Esposti, E. G. Altmann, and F. Pachet (Springer International
Publishing, Cham, 2016), pp. 7–26.
[27] T. Stanisz, S. Drożdż, and J. Kwapień, Complex systems approach to natural language, Phys. Rep. 1053, 1 (2024).
[28] I. Arnon, S. Kirby, J. A. Allen, C. Garrigue, E. L. Carroll,
and E. C. Garland, Whale song shows language-like statistical
structure, Science 387, 649 (2025).
[29] M. Mitzenmacher, A brief history of generative models for
power law and lognormal distributions, Internet Math. 1, 226
(2004).
[30] M. Á. Serrano, A. Flammini, and F. Menczer, Modeling statistical properties of written text, PLoS ONE 4, e5372 (2009).
[31] M. Gerlach and E. G. Altmann, Stochastic model for the vocabulary growth in natural languages, Phys. Rev. X 3, 021006
(2013).
[32] D. Malvern, B. Richards, N. Chipere, and P. Durán, Lexical
Diversity and Language Development (Springer, New York,
2004).
[33] Y. Shi and L. Lei, Lexical richness and text length: An entropybased perspective, J. Quant. Linguist. 29, 62 (2022).
[34] C. Gregori-Signes and B. Clavel-Arroitia, Analysing lexical
density and lexical diversity in university students’ written
discourse, Procedia Soc. Behav. Sci. 198, 546 (2015).
[35] A. Koplenig, S. Wolfer, and C. Müller-Spitzer, Studying lexical dynamics and language change via generalized entropies:
The problem of sample size, Entropy 21, 464 (2019).
[36] A. E. Magurran, Measuring biological diversity, Curr. Biol.
31, R1174 (2021).
[37] B. Comrie, Language Universals and Linguistic Typology: Syntax and Morphology (University of Chicago Press,
Chicago, IL, 1989).
[38] J. R. Taylor, The Oxford Handbook of the Word (OUP, Oxford,
2015).

[39] S. Bird, Nltk: The natural language toolkit, in Proceedings
of the COLING/ACL 2006 Interactive Presentation Sessions
(Association for Computational Linguistics, Sydney, Australia, 2006), pp. 69–72.
[40] M. Gerlach and F. Font-Clos, A standardized project gutenberg
corpus for statistical analysis of natural language and quantitative linguistics, Entropy 22, 126 (2020).
[41] GitHub repository with codes and access to corpora, https://
github.com/pablorosillo/entropy_ttr_gigaword/.
[42] M. Hart, Project Gutenberg (University of Illinois, Urbana,
1971), https://www.gutenberg.org.
[43] J. Dunn, Natural Language Processing for Corpus Linguistics
(Cambridge University Press, Cambridge, 2022).
[44] L. Langer, M. Burghardt, R. Borgards, K. Böhning-Gaese, R.
Seppelt, and C. Wirth, The rise and fall of biodiversity in literature: A comprehensive quantification of historical changes
in the use of vernacular labels for biological taxa in Western
creative literature, People Nat. 3, 1093 (2021).
[45] Q. He, S. Cheng, Z. Li, R. Xie, and Y. Xiao, Can pretrained language models interpret similes as smart as human?
arXiv:2203.08452.
[46] B. Shade and E. G. Altmann, Quantifying the dissimilarity of
texts, Information 14, 271 (2023).
[47] A. Corral and I. Serra, The brevity law as a scaling law, and
a possible origin of Zipf’s law for word frequencies, Entropy
22, 224 (2020).
[48] M.
Davies,
Corpus
del
Español:
Web/Dialects
(Brigham Young University, Provo, Utah, 2016),
https://www.corpusdelespanol.org/web-dial/.
[49] D. Biber, M. Davies, J. K. Jones, and N. Tracy-Ventura,
Spoken and written register variation in Spanish: A multidimensional analysis, Corpora 1, 1 (2006).
[50] D. Daidone, Preterite and Imperfect in Spanish instructor oral
input and spanish language corpora, Hispania 102, 45 (2019).
[51] Common Crawl, Common Crawl Overview (Common
Crawl Foundation, San Francisco, California, 2024), https://
commoncrawl.org/overview.
[52] A. Conneau, K. Khandelwal, N. Goyal, V. Chaudhary, G.
Wenzek, F. Guzmán, E. Grave, M. Ott, L. Zettlemoyer, and
V. Stoyanov, Unsupervised cross-lingual representation learning at scale, in Proceedings of the 58th Annual Meeting of
the Association for Computational Linguistics, edited by D.
Jurafsky, J. Chai, N. Schluter, and J. Tetreault (Association
for Computational Linguistics, Online, 2020), pp. 8440–8451.
[53] G. Wenzek, M.-A. Lachaux, A. Conneau, V. Chaudhary, F.
Guzmán, A. Joulin, and E. Grave, CCNet: Extracting high
quality monolingual data sets from web crawl data, in Proceedings of the Twelfth Language Resources and Evaluation
Conference, edited by N. Calzolari, F. Béchet, P. Blache,
K. Choukri, C. Cieri, T. Declerck, S. Goggi, H. Isahara, B.
Maegaard, J. Mariani, H. Mazo, A. Moreno, J. Odijk, and S.
Piperidis (European Language Resources Association, Marseille, France, 2020).
[54] For our corpora, we will maintain references to Twitter and not
to X throughout the manuscript, as Twitter was the name of the
social network while the posts compilation was performed.
[55] J. Eisenstein, B. O’Connor, N. A. Smith, and E. P. Xing,
Diffusion of lexical change in social media, PLoS ONE 9,
e113114 (2014).

033054-12

ENTROPY AND TYPE-TOKEN RATIO IN GIGAWORD …

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

[56] B. Gonçalves and D. Sánchez, Crowdsourcing dialect characterization through Twitter, PLoS ONE 9, e112074 (2014).
[57] B. Gonçalves, L. Loureiro-Porto, J. J. Ramasco, and D.
Sánchez, Mapping the americanization of English in space and
time, PLoS ONE 13, e0197741 (2018).
[58] J. L. Abitbol, M. Karsai, J.-P. Magué, J.-P. Chevrot, and E.
Fleury, Socioeconomic dependences of linguistic patterns in
Twitter: A multivariate analysis, in Proceedings of the 2018
World Wide Web Conference, WWW ’18 (International World
Wide Web Conferences Steering Committee, Republic and
Canton of Geneva, Switzerland, 2018), pp. 1125–1134.
[59] J. Grieve, C. Montgomery, A. Nini, A. Murakami, and D.
Guo, Mapping lexical dialect variation in British English using
Twitter, Front. Artif. Intell. 2, 11 (2019).
[60] T. Alshaabi, J. L. Adams, M. V. Arnold, J. R. Minot, D. R.
Dewhurst, A. J. Reagan, C. M. Danforth, and P. S. Dodds,
Storywrangler: A massive exploratorium for sociolinguistic,
cultural, socioeconomic, and political timelines using Twitter,
Sci. Adv. 7, eabe6534 (2021).
[61] T. Louf, D. Sánchez, and J. J. Ramasco, Capturing the diversity
of multilingual societies, Phys. Rev. Res. 3, 043146 (2021).
[62] E. S. Tellez, D. Moctezuma, S. Miranda, M. Graff, and G.
Ruiz, Regionalized models for Spanish language variations
based on Twitter, Lang. Resour. Eval. 57, 1697 (2023).
[63] T. Louf, J. J. Ramasco, D. Sánchez, and M. Karsai, When
dialects collide: How socioeconomic mixing affects language
use, arXiv:2307.10016.
[64] J. Dunn, Syntactic variation across the grammar: modelling a
complex adaptive system, Front. Complex Syst. 1, 1273741
(2023).
[65] R. Ghosh, T. Surachawala, and K. Lerman, Entropybased classification of ‘retweeting’ activity on Twitter,
arXiv:1106.0346.
[66] J. Paryani, A. K. TK, and K. George, Entropy-based model for
estimating veracity of topics from tweets, in Computational
Collective Intelligence: 9th International Conference, ICCCI
2017, Nicosia, Cyprus, September 27-29, 2017, Proceedings,
Part II 9 (Springer, New York, 2017), pp. 417–427.
[67] A. Kanavos, G. Vonitsanos, A. Mohasseb, and P. Mylonas,
An entropy-based evaluation for sentiment analysis of stock
market prices using twitter data, in 2020 15th International
Workshop on Semantic and Social Media Adaptation and
Personalization (SMA) (IEEE, Piscataway, New Jersey, 2020),
pp. 1–7.
[68] Andrew Hayden and J. Riesa, Compact Language Detector 2
(CLD2), https://github.com/CLD2Owners/cld2.
[69] D. C. Van Leijenhorst and T. P. van der Weide, A formal
derivation of Heaps’ Law, Info. Sci. 170, 263 (2005).
[70] L. Lü, Z.-K. Zhang, and T. Zhou, Zipf’s law leads to heaps’
law: Analyzing their relation in finite-size systems, PloS One
5, 1 (2010).
[71] I. I. Eliazar and M. H. Cohen, Power-law connections: From
Zipf to Heaps and beyond, Ann. Phys. 332, 56 (2012).
[72] F. Font-Clos, G. Boleda, and Á. Corral, A scaling law beyond
Zipf’s law and its relation to Heaps’ law, New J. Phys. 15,
093033 (2013).
[73] V. Loreto, V. D. Servedio, S. H. Strogatz, and F. Tria, Dynamics on expanding spaces: Modeling the emergence of novelties, in Creativity and Universality in Language (Springer,
New York, 2016), pp. 59–83.

[74] M. A. Serrano, A. Flammini, and F. Menczer, Modeling statistical properties of written text, PLoS ONE 4, e1
(2009).
[75] A. M. Petersen, J. N. Tenenbaum, S. Havlin, H. E. Stanley, and
M. Perc, Languages cool as they expand: Allometric scaling
and the decreasing need for new words, Sci. Rep. 2, 943
(2012).
[76] T. Yamamoto, S. Yamada, and T. Mizuguchi, Negative correlation of word rank sequence in written texts, Eur. Phys. J. B
94, 200 (2021).
[77] R. F. i Cancho and R. V. Solé, Two regimes in the frequency
of words and the origins of complex lexicons: Zipf’s law
revisited, J. Quant. Linguist. 8, 165 (2001).
[78] V. V. Bochkarev, E. Y. Lerner, and A. V. Shevlyakova, Deviations in the Zipf and Heaps laws in natural languages,
in 2nd International Conference on Mathematical Modeling
in Physical Sciences 2013 (IC-MSQUARE 2013), Journal of
Physics: Conference Series Vol. 490 (IOP Publishing, London,
2014), p. 012009.
[79] T. M. Apostol, An elementary view of Euler’s summation
formula, Am. Math. Monthly 106, 409 (1999).
[80] J. Liang and J. Todd, The stieltjes constants, J. Res. Nat. Bur.
Standards Sect. B 76, 161 (1972).
[81] M. W. Coffey, Series representations for the Stieltjes constants, Rocky Mt. J. Math. 44, 443 (2014).
[82] D. S. Jones, Elementary Information Theory (Oxford University Press, Oxford, 1979).
[83] B. Corominas-Murtra and R. V. Solé, Universality of Zipf’s
law, Phys. Rev. E 82, 011102 (2010).
[84] M. Visser, Zipf’s law, power laws and maximum entropy,
New J. Phys. 15, 043021 (2013).
[85] K. W. Vugrin, L. P. Swiler, R. M. Roberts, N. J. Stucky-Mack,
and S. P. Sullivan, Confidence region estimation techniques for
nonlinear regression in groundwater flow: Three case studies,
Water Resour. Res. 43, WR004804 (2007).
[86] G. J. Székely, M. L. Rizzo, and N. K. Bakirov, Measuring and
testing dependence by correlation of distances, Ann. Stat. 35,
2769 (2007).
[87] S. Ghosh, Distance correlation in Python (GitHub, San
Francisco, California, 2014), https://gist.github.com/satra/
aa3d19a12b74e9ab7941.
[88] I. Nemenman, F. Shafee, and W. Bialek, Entropy and inference, revisited, NeurIPS 14, 471 (2001).
[89] A. Arora, C. Meister, and R. Cotterell, Estimating the entropy of linguistic distributions, in Proceedings of the 60th
Annual Meeting of the Association for Computational Linguistics edited by S. Muresan, P. Nakov, and A. Villavicencio
(Association for Computational Linguistics, Dublin, Ireland,
2022), pp. 175–195.
[90] J. De Gregorio, D. Sánchez, and R. Toral, Entropy estimators
for markovian sequences: A comparative analysis, Entropy 26,
79 (2024).
[91] C. Bentz, T. Ruzsics, A. Koplenig, and T. Samardžić, A
comparison between morphological complexity measures:
Typological data vs. language corpora, in Proceedings
of the Workshop on Computational Linguistics for Linguistic Complexity (CL4LC), edited by D. Brunato, F.
Dell’Orletta, G. Venturi, T. François, and P. Blache (The
COLING 2016 Organizing Committee, Osaka, Japan, 2016),
pp. 142–153.

033054-13

ROSILLO-RODES, SAN MIGUEL, AND SÁNCHEZ

PHYSICAL REVIEW RESEARCH 7, 033054 (2025)

[92] W. Ebeling and T. Pöschel, Entropy and long-range correlations in literary english, Europhys. Lett. 26, 241 (1994).
[93] E. G. Altmann, G. Cristadoro, and M. Degli Esposti, On the
origin of long-range correlations in texts, Proc. Natl. Acad.
Sci. USA 109, 11582 (2012).
[94] M. A. Montemurro and P. A. Pury, Long-range fractal correlations in literary corpora, Fractals 10, 451 (2002).
[95] S. Drożdż, P. Oświe¸cimka, A. Kulig, J. Kwapień,
K. Bazarnik, I. Grabska-Gradzińska, J. Rybicki, and
M. Stanuszek, Quantifying origin and character of long-range
correlations in narrative texts, Info. Sci. 331, 32 (2016).
[96] K. Tanaka-Ishii and A. Bunde, Long-range memory in literary
texts: On the universal clustering of the rare words, PloS One
11, e0164658 (2016).

[97] D. Sánchez, L. Zunino, J. De Gregorio, R. Toral, and C.
Mirasso, Ordinal analysis of lexical patterns, Chaos 33,
033121 (2023).
[98] A. Kulig, J. Kwapień, T. Stanisz, and S. Drożdż, In narrative
texts punctuation marks obey the same statistics as words, Inf.
Sci. 375, 98 (2017).
[99] J. Camacho and R. V. Solé, Scaling in ecological size spectra,
Europhys. Lett. 55, 774 (2001).
[100] R. Solé and J. Bascompte, Self-Organization in Complex
Ecosystems. (MPB-42), Monographs in Population Biology (Princeton University Press, Princeton, New Jersey,
2006).
[101] E. G. Altmann, L. Dias, and M. Gerlach, Generalized entropies
and the similarity of texts, J. Stat. Mech. (2017) 014002.

033054-14

