Proofs

that Yield

All Languages
Proof

Nothing

But Their

Validity

or

in NP Have Zero-Knowledge

Systems

ODED GOLDREICH
Technion,

Haifa,

SILVIO

MICALI

Massachusetts

Israel

Institute

of Technology,

Catnbridge,

Massachusetts

AND
AVI WIGDERSON
Hebrew

University,

Jerusalem,

Israel

Abstract. In this paper the generality and wide applicability
of Zero-knowledge
proofs,
a notion
introduced by Goldwasser, Micali, and Rackoff is demonstrated. These are probabilistic and interactive
proofs that, for the members of a language, efficiently demonstrate membership in the language without
conveying any additional knowledge. All previously known zero-knowledge proofs were only for
number-theoretic languages in NP fl CONP.
Under the assumption that secure encryption functions exist or by using “physical means for hiding
information, ‘‘ it is shown that all languages in NP have zero-knowledge proofs. Loosely speaking, it is
possible to demonstrate that a CNF formula is satisfiable without revealing any other property of the
formula, in particular, without yielding neither a satis@ing assignment nor properties such as whether
there is a satisfying assignment in which xl = X3 etc.
It is also demonstrated that zero-knowledge proofs exist “outside the domain of cryptography and
number theory. ” Using no assumptions. it is shown that both graph isomorphism and graph nonisomorphism have zero-knowledge interactive proofs. The mere existence of an interactive proof for graph
nonisomorphism is interesting, since graph nonisomorphism is not known to be in NP and hence no
efficient proofs were known before for demonstrating that two graphs are not isomorphic.
Categories

and Subject Descriptors:

C .2.0 [Computer-Commtmication

Networks]: General—data

This work was done while O. Goldreich was at the Laboratory for Computer Science of MIT. and
A. Wigderson was at the Mathematical SciencesResearchInstitute of UC-Berkeley.
This work was partially supported by an IBM Postdoctoral Fellowship, National Science Foundation
grants DCR 85-09905 and DCR 84-13577, and an IBM Faculty Development Award.
A preliminary version of this paper appeared in Proceedings of the 2 7th Annual IEEE Symposium
on Foundations

of Computer

Science. IEEE,

New York,

1986, pp. 174-187

[42].

Authors’ addresses: O. Goldreich, Department of Computer Science, Techmon, Haifa, Israel: S.
MicaIi, Laboratory for Computer Science, MIT, Cambridge, MA 02139; A. Wigderson, Institute of
Mathematics and Computer Science, Hebrew University, Jerusalem, Israel.
Permission to copy without fee all or part of this material is granted provided that the copies are not
made or distributed for direct commercial advantage, the ACM copyright notice and the title of the
publication and its date appear, and notice is given that copying is by permission of the Association for
Computing Machinery. To copy otherwise, or to republish, requires a fee and/or specific permission.
0

1991 ACM 0004-5411 /91 /0700-0691

$01.50

Journal
oftheAssoelatlan
forComputing
Mach,
nery.Vol 38,No 1,July1991,
pp 691-729

0. GOLDREICHET AL

692

communication,
security and protection; C.2.2 [Computer-Communication
Networks].
Network
Protocols; C.2.4 [Computer-Commrmication
Networks]:
Distributed Systems; D.4.6 [Operating
Systems]: Security and Protectlon—authendcaticm,
cryptographic
controls, veri~madon; E.3 [Data
and
Encryption]; F.1.2 [Computation by Abstract Devices]: Modes of Computation—alternation
nondeterminisrn;
probabilistic
computation:
F.1,3 [Computation by Abstract Devices]: Complexity Classes—reducibility
and completeness, relation among complexity classes; P.2.2 [Aualysis of
of
Algorithms and Problem Complexity]: Nonnumerical Algorithms and Problems–complexity
proof procedures; F.4.1 [Mathematical Logic and Formal Languages]: Mathematical Logic —proo~
theory; F.4.3 [Mathematical Logic and Formal Languages]: Formal Languages—classes defined
algobyresource-bozmded
automata (NP), G.2.2 [Discrete Mathematics]: Graph Theo~–graph
algorithms;
G.4 [Mathematical Software]:
rithms; G 3 [Probability and Statistics]: probabilistic
verification;
K.4.1
[Computers and Society]: Public Policy
reliabdity
and robustness,
K.6.m [Management of Computing and Information Systems]—security
Issues—privacy;
General Terms: Design, Security.

Theory,

Verification

Additional Key Words and Phrases: Cryptographic
protocols, fault-tolerant
distributed computing,
graph isomorphlsm, interactive proofs, methodological design of protocols, NP. one-way functions,
proof systems, zero-knowledge

1. Introduction
It is traditional to view NP as the class of languages whose elements possess
short proofs of membership. A “proof
that x e L‘’ is a witness WX such that
PL( x, WX) = 1 where PL is a polynomial-time
computable Boolean predicate
= O for all y if xfL).
The
associated to the language L(i. e., ~~(x,y)
witness must have length polynomial
in the length of the input x, but need not
be computable from x in polynomial-time.
A slightly different point of view is
to consider NP as the class of languages L for which a powerfid prover may
prove membership
in L to a deterministic
polynomial-time
verifier.
The
interaction between the prover and the verifier,
in this case, is trivial:
the
prover sends a witness (proof) and the verifier computes for polynomial-time
to
verify that it is indeed a proof.
This formalism was recently generalized by allowing more complex interaction between the prover and the verifier and by allowing the verifier to toss
coins and to be convinced by overwhelming
statistical evidence [6, 47]. The
prover has some advantage over the verifier
and, for the definition
to be
interesting,
one should assume that this advantage is crucial for proving
membership in the language (otherwise, the verifier can do this by itself). This
advantage may take either the form of much stronger computing power or extra
information
concerning the input. In other words, we implicitly
assume that
there exist interesting languages (say in PSPACE) that are not in BPP, and be
interested in proof systems for such languages.
A fundamental measure proposed by Goldwasser et al. [47] is that of the
amount of knowledge released during an interactive proof. Informally,
a proof
system is called zero-knowledge
if whatever the verifier
could generate in
probabilistic
polynomial-time
after “seeing”
a proof of membership, he could
also generate in probabilistic
polynomial-time
when just told by a trusted oracle
that the input is indeed in the language. Zero-knowledge
proofs have the
remarkable property of being both convincing and yielding nothing except that
the assertion is indeed valid.
Besides being a very intriguing notion, zero-knowledge
proofs promise to be
a very powerful tool for the design of secure cryptographic
protocol. Typically
these protocols must cope with the problem of distrustful
parties convincing

Proofs

that

Yield Nothing

But

Their

Validity

693

each other that the messages they are sending areindeed computed according to
their predetermined
local program. Such proofs should be carried out without
yielding any secret knowledge. In particular cases, zero-knowledge
proofs were
used to design secure protocols [23, 30, 47]. However, in order to demonstrate
the generality of this tool (and to utilize its full potential) one must present
general results concerning the existence of zero-knowledge
proof systems. Until
now, no such general results were known.
In this paper, we present general results concerning zero-knowledge
proof
systems. In particular,
we show how to construct zero-knowledge
proofs for
every NP-statement. This result has a dramatic effect on the design of cryptographic protocols:
it constitutes the keystone in a methodology
for cryptographic protocol design. The methodology,
presented in another paper of the
authors [43], consists of a “privacy
and correctness preserving”
compiler,
which translates protocols for a weak adversarial model to a fully fault-tolerant
protocol (withstanding the most adversarial behavior).
1.1 WHAT

Is AN INTERACTIVE

PROOF?

Intuitively,

an interactive

proof

system

L is a two-party
protocol for a “powerful”
prover
and a
probabilistic
polynomial-time
verifier
satisfying the following
two conditions
with respect to the common input, denoted x. If x e L, then, with very high
probability,
the verifier is “convinced”
of this fact, after interacting with the
If x #L,
then no matter what the prover does, with very high
prover.
probability,
he fails to fool the verifier (into believing that “x is in L”).
The
first condition is referred to as the completeness
condition, while the second
condition is referred to as soundness.
Before defining the notion of an interactive proof system, we define what we
mean by “expected polynomial-time,
” and recall the notion of an interactive
pair of Turing machines, which captures the intuitive notion of a two-party
protocol.
for

a language

Let
JW be a
Definition
and Discussion
of Expected Polynomial-Time.
probabilistic
Turing machine, and t~( x, r) denote the number of steps taken
by machine A4 on input x when the outcome of its internal coin tosses is a
prefix of the infinite bit sequence r. Clearly, if t~( x, r) is finite it depends
only on a finite prefix of r. Traditionally,
machine A4 is called “expected
polynomial-time
‘‘ if there exists a polynomial
Q such that, for all x e {O, 1}*,
the expectation, taken over the infinite bit sequences r, of tM( x, r) is bounded
above by Q( I x I ) (i. e., E,(t~(x,
r)) < Q( I x I), for all x). One can use this
definition in our paper, however we would like to call the reader’s attention to
weaknesses of this definition that were pointed out by Levin (see also [38] and
[50]). 1 We prefer to follow Levin’s definition [57], saying that a machine &f is
expectedpolynomiai-time
if there exists an ~ >0 such that, for all x e {O, 1}*,
the expectation,
taken over the infinite bit sequences r, of ( tM( x, r))’ is
r))’) < I x I). We say that &l is
bounded above by I x I (i.e., E,((t~(x,
(strictly)
probabilistic
polynomial-time
if t~( x, r) < Q( I x I ) for some
polynomial
Q and all x, r pairs.

1 For example, E7,(t(x, r)) < Q( I x I ) does not imply Er(t2(x,
r)) < Q( I x I)2, and problems as
machine dependency and nonclosure under reduction, of expected polynomial-time
machines, follow.

0. GOLDREICHET AL

694
Definition
tion):

1.

(Interactive

Turing

machines (M. BIum),

private communica-

(1) An interactive
Turing machine ( ITM)
is a six-tape deterministic
Turing machine with a read-only
input
tape, a read-only
random
tape, a
comread/write
work tape, a read-only communication
tape, a write-only
munication
tape, and a write-only
output tape. The string that appears on the
input tape is called the input. The (infinite) contents of the random tape can be
thought of as the outcomes of an infinite sequence of unbiased coin tosses. The
string that appears on the output tape when the machine halts is called the
output. The contents of the write-only communication
tape can be thought of as
messages sent by the machine; while the contents of the read-only communication tape can be thought of as messages received by the machine.
(2) The complexity
of an interactive
Turing machine is measured in terms
of its input (i. e., contents of input tape). Saying, for example, that the
interactive Turing machine &f is polynomial-time
means that there exists a
polynomial
Q such that the number of steps M performs on input x is at most
Q( I x I), no matter what are the contents of its random tape and read-only
communication
tape. When discussing the expected number of steps of an ITM,
the expectation is taken over the contents of the random tape only. ~We do not
count, of course, the steps made by the interactive machine with which Al
interacts as defined below. )
(3) An interactive
pair of Turing machines is a pair of ITMs that share
their communication
tapes so that the read-only communication
tape of the first
machine coincides with the write-only
communication
tape of the second
machine, and vice versa. The computation of such a pair consists of alternating
sequences of computing steps taken by each machine. The alternation occurs
when the active machine enters a special idle state. At this time, the other
machine passes from idle to the active state. The string written
on the
communication
tape during a single nonalternating
sequence of steps is called
the message sent by the active ITM to the idle one.
Notations
(1) Let A be an ITM. Then A(x, r; al, CYz,. . . . a,) denotes the message
sent by A on input x, random tape contents r, after receiving the messages
a ~ through a ~.
(2) Let A and B be an interacting pair of ITMs. Then, [ B( y), A( x)] denotes
the output distribution
of A on input x, when B has input y. The
probability
space is induced by the unbiased coin tosses of both machines.
De~inition
2 (Interactive Proof System [47]).
An interactive
proof system for a language L is a pair of ITMs, (P, V), such that V is expected
polynomial-time
and the following two conditions hold:
(1) Completeness
long x e L

Condition.
l%([P(x),

For every constant
V(x)]

= 1) >1

c >0,
–

(2) Soundness Condition.
For every constant c >0,
machine P*, and all sufficiently
long x ~ L,

Ixl

and all sufficiently
-c.

every interactive

Pr([P*(x),
V(x)]
=0)
z 1 – lX1-C.
Denote by 1P the class of languages having interactive proof

systems.

Turing

Proofs

that

Yield Nothing

But

Their

Validity

695

Remark
1. Clearly, NP G 1P. An example of an interactive proof system,
for a language not known to be in NP, is presented in Section 2.1.
Remark 2.
As is the case with NP, the conditions imposed on acceptance
and rejection are not symmetric.
Thus, the existence of an interactive proof
system for the language L does not imply the existence of an interactive proof
system for the complement of L.
Remark
3. Definition
2 originates from Goldwasser et al. [47]. In [6],
Babai introduced
a different
type of interactive
proof
systems, called
Artlmr-Merlin
games, in which the verifier’s behavior is more restricted than
in the Goldwasser et al. model [47]. Arthur, the verifier in Babai’s model, is
allowed only to generate random strings, send them to the prover, and evaluate
a deterministic polynomial-time
predicate at the end of the interaction. Demonstrating the existence of proof systems is easier when allowing the verifier to
flip private coins (i.e., Goldwasser et al. model [47]), while relating interactive
proof systems to traditional
complexity
classes seems easier if one restricts
oneself to Arthur– Merlin
games. Interestingly,
as Goldwasser
and Sipser
showed, these two models are equivalent,
as far as language recognition
is
concerned [49]. Namely, let L be a language having an interactive
proof
system in which up to Q( I x I) messages are exchanged on input x c L. Then,
L has an Arthur-Merlin
interactive proof system in which up to Q( I x I ) + 2
messages are exchanged on input x e L.
Remark
4.
The ability to toss coins is crucial to the nontriviality
of the
notion of an interactive
proof system. If the verifier
is deterministic,
then
interactive proof systems coincide with NP.
Remark 5.
The fact that the verifier is expected polynomial-time
instead of
being strictly probabilistic
polynomial-time
has no effect on the notion of
interactive proofs. However,
as seen in Remarks 11 and 13, allowing the
simulator (see next subsection) to be expected polynomial-time
plays an important role in the results concerning perfect zero-knowledge
proof systems.
Babai and Moran [8] showed that, for every polynomial
Q, AM(2 Q) =
AM(Q),
where AM(Q)
denotes the class of languages recognized by an
Arthur-Merlin
game of Q( I . I ) message exchanges (last message sent by A@.
This means that the finite level Arthur-Merlin
hierarchy (as well as the finite
AM(k)
= AM(2);
level 1P hierarchy) collapses (i.e., for every fixed k >2,
hereafter abbreviated AM). Note that this does not imply the collapse of the
unbounded level hierarchy ! (For more details, see [2]. ) The bounded level
interactive
proofs hierarchy
is related to the polynomial-time
hierarchy by
Babai’s proof that AM G II: (the second level of the polynomial-time
hierarchy) and that AM G NP B for almost all oracles B. Recently, Nissan and
Wigderson showed that AM = NPB for almost all oracles B [59].
1.2 WHAT
proof

is

practical
with

Is

a proof

A

purposes,
a

ZERO-KNOWLEDGE

that

yields

‘‘ whatever”

can

prover

and

zero-knowledge

believing

that

the

not

the

computation

only

distributions.)

nothing

assertion

Zero-knowledge

it claims
of

Intuitively,

its

be

efficiently

can

be

is indeed

functions
is

PROOF?
but

validity.

a

This
computed

efficiently
valid.

(In

zero-knowledge

means

that

after

for

all

interacting

computed

when

just

‘‘ whatever”

we

mean

but

also

the

generation

a property

of

the

predetermined

of

probability
prover:

Its

696

0.

GOLDREICHET AL

robustness against attempts of the verifier to extract knowledge via interaction.
Note that the verifier may deviate arbitrarily
(but in polynomial-time)
from the
predetermined program. This is captured by the following
formulation:
Let (P, V) be an interactive proof
lle~irzition
3 (Zero-Knowledge
[47]).
system for a language L. We say that the proof system (P, V) is zeroknowledge
(for L) if for every expected polynomial-time
interactive Turing
machine V*, there exists an (ordinary) expected polynomial-time
machine ikfv~
such that the probability
ensembles { iWv,( x)}x=~ and { [P( x), V*( x)]}X, ~
are polynomially
indistinguishable
(see Definition 4 below).
The machine i’blv, is called the simulator
of V*. The simulator of V* has
essentially the same output distribution
as V*; however, &fv, produces this
distribution without interacting with the prover (while V* produces it with the
help of interaction with the prover). The universal quantifier states that this can
be done with respect to every efficient way (not necessarily the proper one) of
interacting
with the prover.
It is not required that the simulator
can be
effectively constructed given a verifier,
but rather that it exists. Nevertheless,
all known demonstrations
(including ours) of the zero-knowledge
property of
protocols are constructive.
needs not generate exactly the ensemble that V*
The simulator,
&fv*,
outputs when interacting with the prover. It suffices to produce something that
is indistinguishable
to polynomial-time
computations.
(This is the reason that
zero-knowledge,
as defined above, is sometimes called computational
zeroknowledge, especially in order to distinguish it from stronger forms of zeroknowledge-see
Remark 7.) For the sake of self-containment,
we recall the
definition of polynomial indistinguishable
ensembles.
Definition
4 (Polynomial Indistinguishability
[46, 68]).
Let S G { O, 1}” be
an infinite set of strings, and let 111 = {IIl(x)}X=~
and Hz = {Hz(x)}XE~
be
two probability
ensembles (i.e., for every i ~ {1,2}
and x e S, H,(x)
is a
random variable assuming values in {O, 1}*). For every algorithm (test) A, let
PI-4(x) denote the probability
that A outputs 1 on input x and an element
chosen according to the probability
distribution
II i( x). Namely,
p?(x)

= ~ Pr(A(x,
a

a) = 1) “Pr(II1(x)

The ensembles HI = {lll(x)}xc~
and Ilz = {Hz(x)}Xe~
indistinguishable
if for every expected polynomial-time
every constant c >0 and for all sufficiently
long x G S
lpf(~)

-Pf(x)l

=

= a).
are Pof’YnomiallY
algorithm A, for

1X1-’.

Polynomially
indistinguishable
probability
ensembles should be considered
equal for all practical purposes, since any application running in polynomial-time
and using either ensemble demonstrates
essentially
the same behavior.
It
follows that the polynomial indistinguishability
of [ P( x), V*( x)] and &fv.( x)
formalizes the intuition that nothing substantial
is gained by interacting with
the prover, except of course conviction in the validity of the assertion x ~ L.
An alternative definition of zero-knowledge
considers the probability distribution on all the tapes of V* during the interaction with P. In fact, it suffices to
consider the contents of all the read-only tapes of V* (i. e., the input tape, the
random tape, and the read-only communication
tape of V*).

Proofs

that

Yield Nothing

But

Their

Validity

697

Definition
5 (Zero-Knowledgealternative definition).
Let ( P, V) be an
interactive proof system for a language L, and V* be an arbitrary ITM. Denote
by (P, V*)(x)
the probability
distribution
on all the read-only tapes of V*,
when interacting with P (the prover) on common input x e L. We say that the
proof
system (P, V) is zero-knowledge
(for
L)
if for all expected
polynomial-time
ITM
V*, there exists an expected polynomial-time
machine
&lv. such that the probability
ensembles { Mv*( x)} .=~ and { (P, V*)( X)}X=~
are polynomially
indistinguishable.
Remark 6. It is easy to see that Definitions
3 and 5 are in fact equivalent.
The output of V* is easily computed from the contents of its read-only tapes
(i.e., V V* 3T* such that [P(x),
V*(x)]
= T*((P,
V*)(x))).
On the other
hand, every V* can be modified
easily to output the contents of its read-only
tapes (i.e., vV*
3 V**
such that (P, V*)(x)
= [P(x),
V**(X)]).
Hence,
ability to simulate the output of every V* implies ability to simulate the
contents of the tapes of every V*. However,
it is not always the case that
ability to simulate the output of a specific
V* implies ability to simulate the
contents of V *‘s tapes. This difference is best demonstrated by considering the
prescribed verifier
V. Consider for example a proof system, (P, V), for an
NP-complete language L, in which P sends to V a witness for membership
which V tests using the witness predicate P~. Then, it is trivial to simulate
{ [P( X), V( X)]}XG~ which is identically
simulate (P, V)(x)
(unless NP s BPP).

1, while

it is probably

impossible

to

Remark 7. In case one can exactly simulate the probability distributions of
rather than produce distributions
that are
the interaction
with the prover,
polynomially
indistinguishable
from them, we say that the interactive proof
system is perfect zero-knowledge.
Formally, an interactive proof system for L
is perfect zero-knowledge
if, for every expected polynomial-time
ITM V*,
there exists an expected polynomial-time
machine iWv. such that for every
x~L
(P,

v*)(x)

= MV*(X).

It is worth noting that in the definition of “perfect zero-knowledge”
the use
of expected polynomial-time
seems to be more crucial than for the other types
of zero-knowledge
(i. e., computational
and almost-perfect):
see Remarks 11,
13, and 16. An interactive proof system is almost-perfect
zero-knowledge
if
for every x e L the distributions
(P, V*)(x)
and AIv.( x) are “statistically
close”, that is, the statistical difference (defined below) between (P, V*)(x)
and iWv.( x) is smaller than I x I – c, for all c >0 and sufficiently large x. The
statistical
difference
(also called variation distance) between two probability
distributions
is the sum of the absolute differences in the probability
mass
assigned by these distributions
to each of the possible elements. An equivalent
definition
can be derived from the definition
of polynomial-indistinguishable
distributions,
when omitting the restriction on the running-time of the algorithm
A (required above to be expected polynomial-time).
Remark
8. Our model of interactive
proof systems is implicitly
asynchronous (i.e., an interactive pair of Turing machines formalizes the standard
notion of an event-driven
protocol for two parties). Thus, one machine cannot
infer the number of steps taken by its counterpart from the “delay”
between the

698
communications.
easy modification

0. GOLDREICHET AL
In real applications,
such inference
of the definition of zero-knowledge

may be possible, and an
will be adequate.

Remark
9. It is not difficult
to see that if a language L has a zeroknowledge proof system in which a single message is sent then L is in Random
polynomial-time
[44, 60]. Thus, the generalization
of NP to 1P is essential to
the nontriviality
of the notion of zero-knowledge.
Clearly, every language that is BPP has a (perfect) zero-knowledge
interactive proof system (in which the prover does nothing). Several number-theoretic
languages, not known to be in BPP, have been shown to have zero-knowledge
proof systems. The first language for which such a proof system was demonstrated is Quadratic Non-Residuosity
[47]. Other zero-knowledge
proof systems
were presented in [23], [32], [36], and [47]. All these languages are known to
lie in NP n CONP.
to a secret bit”, we
1.3 OUR RESULTS. Using any scheme for “committing
present zero-knowledge
proof systems for all languages in NP. A scheme for
‘ bcommitting to a secret bit” can be implemented either by using any one-way
function
(assumed to exist) or by using
“physical
means for hiding
proofs,
information. ” This result demonstrates the generality of zero-knowledge
and is the key for their wide applicability
to cryptography
and related fields.
We also demonstrate that zero-knowledge
proof systems exist “independently
of cryptography and number theory. ” Using no assumptions, we show that both
graph isomorphism
and graph nonisomorphism
have perfect zero-knowledge
interactive proof systems.
1.4 RELATED RESULTS.
quadratic
Using
the intractability
assumption
of
residuosity,
Brassard and Cr6peau have subsequently discovered zero-knowledge proof systems for all languages in NP [16]. These proof systems heavily
rely on particular
properties
of quadratic
residues and do not seem to extend
to arbitrary bit commitment schemes.
Independently
of our work, Brassard et al. showed that, if factoring
is
intractable,
then every NP language has a perfect zero-knowledge
argument 2
[15, 17, 19]. The difference
between an argument
and interactive
proof
systems is that in an argument the soundness condition is restricted to probabilistic polynomial-time
machines (with auxiliary input which is fixed before the
protocol starts). 3 Hence it is infeasible (not impossible) to fool the verifier into
accepting (with nonnegligible
probability)
an input not in the language.
Brassard et al. also proposed an interesting
application
of perfect zeroknowledge
arguments to settings in which the verifier
may have infinite
computing power while the prover is restricted to polynomial-time
computations. In such a setting, it makes no sense to have the prover demonstrate
z The term “argument”
first appeared in [18]. In the original papers of Brassard et al. [15, 17, 19], the
authors referred to arguments by the term interactive proofs, thus creating an enormous amount of
confusion. These two notions are probably distinct (otherwise, some drastic consequences to complexity theory occur). For example, the results of Fortnow [31] and Aiello and Hastad [3], cited below, do
not hold for arguments. In some works arguments are called ‘‘ computationally -sound proofs”.
3 The reader should not confuse arguments (in which soundness depends on a computational restriction
imposed on “cheating provers” ) and interactive proof systems with the additional property that the
prescribed prover may be a probabihstic polynomial-time
machine with an appropriate auxiliary input
(e.g., Protocols 2 and 4).

Proofs

that

Yield Nothing

But

Their

Validity

699

properties (as membership in a language) to the verifier. However, the prover
may wish to demonstrate to the verifier that he “knows”
something without
revealing what he “knows. ” More specifically,
given a CNF formula, the
prover may wish to convince the verifier
that he “knows”
a satisfying
assignment in a manner that would yield no information
as to which of the
satisfying assignments he knows. A definition
of the notion of “a program
knowing a satisfying assignment”
was first sketched in [47], and recently
formalized in [27] and [67].
1.5 SOME SUBSEQUENTRESULTSCONCERNINGINTERACTIVEPROOF SYSTEMSAND
ZERO-KNOWLEDGE. Subsequent results place languages with perfect zeroknowledge proof systems quite low in the polynomial-time
hierarchy.
More
specifically,
if a language L has a perfect (or even almost-perfect)
zeroknowledge proof system then L ~ AM (7 COAM (the L e COAM implication
was shown by Fortnow [31] and subsequently Aiello and Hastad showed the
L e AM part [3]). It follows that, unless all CONP languages have interactive
proof systems, NP-Complete languages cannot have perfect (or almost-perfect)
zero-knowledge
proof systems. It is interesting to note that Fortnow gives a
transformation
of a perfect zero-knowledge
proof system for L into an interactive proof system for ~, that when applied to our perfect zero-knowledge
protocol for graph isomorphism yields exactly our interactive proof system for
Graph Nonisomorphism.
Recently, it was shown that the error probability
allowed in the completeness
condition of interactive proofs is not essential for the power of interactive proof
systems [41]. On the other hand, the error probability allowed in the soundness
condition is essential to the nontriviality
of both interactive proof systems and
zero-knowledge.
Interactive proof systems with no error on NO-instances equal
NP [41], while zero-knowledge
proof systems with no error on NO-instances
equal R [44, 60]. It follows that the error probability on the NO-instances of the
protocols presented in this paper (e.g., the zero-knowledge
protocols for NP
and the interactive proof of Graph nonisomorphism)
cannot be avoided, unless
something dramatic happens (e. g., R = NP or graph nonisomorphism
is in NP,
respectively).
Our result that all languages in NP have zero-knowledge
proof systems, has
been extended to 1P, assuming the same assumptions. (The result was first
proved by Impagliazzo
and Yung, but since their paper [53] contains only a
claim of the result, the interested reader is directed to [11] where a (different)
proof appears.) In other words, whatever can be efficiently
proven can be
efficiently proven in a zero-knowledge
manner. This may be viewed as the best
result possible, since only languages having interactive proof systems can have
zero-knowledge
interactive proof systems.
1.6 CONVENTIONS.
metric

group

of

Let
~

(i.e.,

~

be
the

a finite
group

set.
of

Then

permutations

~ynz(

~ ) denotes
over

the

set

the

sym-

~).

Let

the composition of the permutations T and
T, @ G ~Y@
~ ), then
T o @ denotes
~ (i.e., m “ ~(x) = 7r(~( x))).
When writing a ~~ A, we mean an element chosen at random with uniform
probability
distribution
from the set A. If I A I is a power of 2, then such a
random selection is easily implemented in the standard probabilistic
model (by
tossing log * \ A I unbiased coins). Otherwise, a random choice can be implemented in the standard model using an expected number of O(log I A I )

0. GOLDREICHET AL

700

(unbiased) coin tosses. If one wants to avoid infinite (or long) runs, such a
random choice can only be approximated
(very well) and all the constructions
we use have to be slightly modified. When writing Pra= ~ ( P( a)), we mean the
probability
that P(a) holds when the probability
is taken over all choices of
a e A with uniform probability
distribution.
The notation I “ I is used in three different ways. As denoting the cardinality
of a set, the length of a string, and the absolute value of a real. We trust that the
reader will figure out the meaning by the context.
We consider simple (i.e., no parallel edges) undirected graphs. By V, we
denote the vertex set, and by E the edge set of the graph G. Let n denote the
cardinality
of the vertex set, and m the cardinality
of the edge set (i. e.,
n = I V 1, m = I E I). The graph G( V, E) will be represented by the set E,
in an arbitrary fixed order (e. g., lexicographic).
In all our protocols the error probability
(in the soundness condition)
is
exponentially decreasing with m and thus negligible in the input size. In fact, it
would have sufficed to make the error probability decrease faster than 1/ rnc for
C>o.
1.7 ORGANIZATIONOF THE PAPER. In Section 2, we present zero-knowledge
interactive proof systems for graph isomorphism
and graph nonisomorphism.
These protocols serve as good examples of the notions of interactive proof
systems and zero-knowledge
proof systems, and of the techniques used to prove
that a protocol indeed satisfies these properties.
We also discuss complexity
theoretic implications
of the existence of an interactive proof system for graph
nonisomorphism.
In Section 3, we show how to use any bit commitment
scheme in order to
construct a zero-knowledge
interactive proof system for any language in NP.
2. Proofs

Systems for

Graph

Isomorphism

and Graph

Nonisomorphism

We start by presenting a (probably nonzero-knowledge)
interactive proof system for graph nonisomorphism.
Next we present a zero-knowledge
interactive
proof system for graph isomorphism,
and for graph nonisomorphism.
Two graphs G( V, E) and H( V, F) are isomorphic
if and only if there
exists a permutation
m e Sym( V) such that (u, v) e E iff (T(u), r(v)) =F. We
then write H = T G. We say that the graph H( V, F) is a random isomorphic
copy of the graph G( V, E) if H is obtained from G by picking m CR Sym( V)
and letting H = x G.
The language G1 (graph isomorphism)
consists of all the pairs of isomorphic graphs (i.e., GI = {(G, H): ~ T such that H = zG} ). Its complement,
graph nonisomorphism
( GNI), is the set of all nonisomorphic
pairs.
The language G1 is in NP, is not known to be in CONP, and is believed not
to be NP-complete.
The fastest algorithm known for the corresponding (search
and decision)

problems

runs in time exponential

in ~=

[7].

2.1 AN INTERACTIVEPROOF SYSTEM OF GRAPH NONISOMORPHISM. In this section, we exempli~
the notion of an interactive proof system by presenting an
interactive proof system for graph nonisomorphism.
The fact that graph nonisomorphism has an interactive proof system is interesting as it is not known to be
in NP, and hence is not known to have efficient
‘‘ noninteractive”
proof
systems. Moreover,
the existence of an interactive
proof system for graph
nonisomorphism
has interesting complexity – theoretic consequences.

Proofs

that

Yield Nothing

But

Their

Validity

’701

In the following protocol, the prover may be a probabilistic
machine with access to an oracle for graph isomorphism.
Protocol

1.

common

input.

Two graphs Gl( V, El)

polynomial-time

and GO( V, EO).

(1) The verifier chooses at random m bits, Ui e~ {O, 1}, 1< i < m. The
verifier computes m graphs Hi such that Hi is a random isomorphic copy
of G.,. The verifier sends the Hi’s to the prover.
(2) The prover answers with a string of P,’s (each in {O, 1}), such that Hi is
isomorphic to G6,.
(3) The verifier tests whether Ui = ~,, for all 1 s i s m. If the condition is
violated then the verifier rejects; otherwise it accepts.
THEOREM 1.
tem for Graph
PROOF.
verifier
hand,

If
follow

G1

and

probability
because,

if

Protocol
1 constitutes
Nonisomorphism.

the

graphs

the
GO

G ~ and

Go

are

then

the

verifier

protocol,
are

isomorphic

at least

~,

GI

GO are

and

a (two-move)

even

Pr(al

then,

if the

prover

isomorphic,

isomorphic,
always

and

both

accepts.

for

each

i,

does

not

follow

we

If

have

the

proof

sys-

prover
on
u,

the
#

protocol.4

and
other

~i

with

This

is

then

= 1 \ verifier

The probability that the verifier
❑
most 2–m.

not

interactive

sent H,)

= ~ .

does not reject two isomorphic

graphs is thus at

The above theorem has interesting consequences on the computational
plexity of the graph isomorphism problem. Namely,

com-

COROLLARY
1.
Graph Isomorphism
is in ( NP (1 CONP) A, for a random
oracle A. A [so, Graph Nonisomorphism
can be recognized
by a (nonuniform)
family
of nondeterministic
polynomial-size
circuits ( i. e., GNI ~
NP/poly)
.
By Theorem
1, GNI e 1P(2). Using Goldwasser
and Sipser’s transPROOF.
formation
of 1P(k) protocols
to AM( k + 2) protocols,
GNI c AM(4).
By
Babai’s
proof
of the finite
AM(”)
collapse,
GN1 c AM G NP A for a
random oracle A. Finally, it has been pointed out by Mike Sipser that AM is

contained in nonuniform
BPP G p/poly) . ❑

NP

(the

proof5

is analogous

COROLLARY2.
If Graph Isomorphism
is NP-Complete,
mial-time
hierarchy collapses to its second level.

to the

proof

that

then the polyno-

4 The probability is exactly ~ if the prover answers with (3, c {O, 1}, and O if (the prover is foolish
enough to answer with) (3, @{O, 1}.
5 To prove that AM c Np/POIY, ~c ~Onsider ~ t~o-step Arthur– Merlin proof sYstem for a language
L E AM.

Without loss of generality, the error probability on (both “yes”
and <‘no”) instances of
length n is bounded above by 2 -n (this can be achieved by running 0(n) copies of the game in
parallel and ruling by majority). It follows that there exists a sequence r of coin tosses (for Arthur)
such that, for all x e {O, 1}n, x e L if and only if there exists (an answer of Merlin) y e {O, 1}* such
that Arthur accepts x in the conversation (r, y).

0. GOLDREICHET AL

702
PROOF.
mial-time
GN1

Boppana

et al.

hierarchy

collapses

showed
to

GNI

c 1P(2),

assuming

that

the Corollary

follows.

❑

that

if

AM

CONP

G ~~

~

[14].

is CoNP-Complete

AM,

then

Since

Theorem

the

entire

polyno-

1 states

that

yields CONP G 1P(2), and

An alternative
proof
to Corollary
2 was obtained
independently
by
Schoening, using totally different techniques [64]. Corollary 2 may be viewed
as providing
support for the belief that Graph Isomorphism
is not NP-Complete.
2.2 A ZERO-KNOWLEDGE
the

knowledge

proof

system

for

has

efficient

proof

graph

isomorphism

can

revealing

the

isomorphism
fact

that

without
In

the

mial-time
input

notion

of

PROOF FOR GRAPH

exemplify

zero-knowledge
graph

isomorphism,

systems

isomorphism.

systems
be proved

The

is clear,

In
by

this

mere

as h is in

section,

presenting
fact

NP.

in zero-knowledge,

We

a zerothat

graph

However,

the

and

in particular

is interesting.

following

protocol,

the

machine

that

as an auxiliary

gets,

ISOMORPHISM.

proof

prover

needs

only

input,

be

a probabilistic

an isomorphism

polynobetween

the

graphs.

Protocol

2

common

input.

Two graphs Gl( V, El)

Let ~ denote the isomorphism
following four steps are executed
coin tosses.

and GO( V, EO).

between G, and GO (i.e., GI = ~GO). The
m times, each time using independent random

(PI)

The prover generates a graph H, which is a random isomorphic copy of
GI. This is done by selecting a permutation
m CRSym( V), and computing
H = mGI. The prover sends the graph H to the verifier.
(Vi) The verifier chooses at random CYe~ {O, 1}, and sends a to the prover.
(Intuitively,
the verifier asks the prover to show him that H and Ga are
indeed isomorphic.)
(P2) If CY= 1, then the prover sends x to the verifier, else (i.e., a # 1) the
prover sends m “ O. (Note that the case a ~ {O, 1} is handled as CY= 0.6)
(V2) If the permutation
(~) received from the prover is not an isomorphism
between G. and H (i.e., H # ~ G.), then the verifier stops and rejects;
otherwise, he continues.
If the verifier

has completed

m iterations

of the above steps, then he accepts.

The reader can easily verify that the above constitutes an interactive proof
system for graph isomorphism.
Intuitively,
this proof system is zero-knowledge
since whatever the verifier
receives is “useless, ”
because he can generate
random isomorphic copies of the input graphs by himself. This is easy to see in
case the verifier follows the protocol.
In case the verifier deviates from the
protocol, the situation is much more complex. The verifier may set the CY’s
depending on the graphs presented to him. In such a case, it cannot be argued
that the verifier only receives random isomorphic copies of the input graph. The
6 It may be considered more natural to have the prover halt in case a ~ {O, 1} (as done in an earlier
version [42] ). However, demonstrating that the above version is zero-knowledge is easier since it
avoids dealing separately with the case a ~ {O, 1} (in the simulation).

Proofs

that

Yield Nothing

But

Their

Validity

703

issue is fairly involved, as we have to defeat a universal quantifier that is not
well understood (i. e., all possible polynomial-time
deviations from the protocol).
We cannot really trust our intuition in such matters, so a formal proof is indeed
required.
THEOREM

tive proof
PROOF.

2.
Protocol
2 constitutes
a (perfect)
system for Graph Isomorphism.

We

start

for

graph

isomorphism.

the

prover

can

easily

the graphs

are

not

by

proving
First,

supply

isomorphic,

that
note

the

Protocol

that

if the

permutations

then,

no matter

zero-knowledge

2 is an interactive
input

graphs

required
what

by

interac-

proof

are

isomorphic,

the

verifier.

the prover

does,

system
then
In

the

case

graphs

H sent by him (in step Pl) cannot be isomorphic to both GI and GO. It follows
that when asked (in step P2) to present an isomorphism
between H and G.,
2 ~.
where CYER {O, 1}, the prover fails with probability
We now come to the difficult part of this proof demonstrating that Protocol 2
is indeed zero-knowledge.
It is easy to see that the prover conveys no
knowledge to the specified
verifier. We need, however, show that our prover
conveys no knowledge to all possible verifiers,
including cheating ones that
deviate arbitrarily
from the protocol. In our proof we use Definition
5.
Let V* be an arbitrary, fixed, expected polynomial-time
interactive machine.
We will present an expected polynomial-time
machine iWv* that generates a
probability distribution which is identical to the probability distribution induced
on V *‘s tapes during its interaction
with the prover. In fact it is more
convenient to include in both distributions
also the contents of the write-only
communication
tape of V*.
Our demonstration of the existence of such an Nfv* is constructive: given an
interactive machine V*, we use it in order to construct the machine &fv..
Machine Alvx uses V* as a subroutine (many times) while placing strings of its
choice on all the read-only tapes of V*, and reading the intermediate and final
contents of V*’S write-only tapes. In particular,
Alv. chooses the input to V*,
the contents of the random tape of V*, and the messages for the read-only
communication
tape of
communication
tape of V*; and reads the write-only
V*. Intuitively
speaking, ikfv~ tries to guess which isomorphism the machine
V* will ask to check. It (i.e., &fv*) constructs the graph H such that it can
answer V* in case it were lucky. This is done by constructing
a random
isomorphic copy of G ~ starting with either GI or with GO. Such a lucky case
becomes part of the output of &lv*. The cases in which Alv. fails are ignored
(i.e., do not appear in its output). It is crucial that, from the point of view of
V*, the case which leads to &fv. success and the case which leads to a failure
look identical. By throwing away the instances where we failed, we only slow
down our construction,
but we do not change the probability
distribution
that
V* “sees. ”
In all
Following
is a detailed description of the simulating machine Alv..
of V*, machine &lv. will place x = ( GI, GO) on the input tape of
invocations
V* and a fixed sequence of randomly chosen bits on its random tape. So, the
first thing &fv. does is choose at random the contents of the random tape of the
Fixing the
interactive machine V*, and fix it for the rest of the simulation.
contents of the random tape of V* makes its actions depend only on the
contents of its read-only communication
tape that will be written by MV*.

0. GOLDREICHET AL

704

There is a subtle problem in implementing
this plan, to be discussed in the
following paragraph.
The easy case is when V* is strictly polynomial-time.
Namely, all the runs of
V* on input x take at most Q( I x I) steps (independent of the contents of the
random tape !), where Q is a fixed polynomial.
In this case choosing a random
input amounts to choosing r CR {O, 1} Q(I XI). However, in the general case V*
is (only) expected polynomial-time,
and there may be no bound on the number
of coin tosses it may use on a particular input x. In this case, we need to choose
at random an infinite bit sequence. Fortunately, this needs not be done a priori.
Intuitively,
each time V*
We select the random input of V* adaptively.
requires a new random bit, we select one and store it for all future executions of
V* on x. Formally,
Al ~~ selects ri CR {O, 1} the first time that V* tries to
scan the ith cell in the random tape in some execution on input x. In all future
runs on V* on x, the contents of the ith cell of the random tape of V* is
initialized to rl (and never changed!). We denote by r the imaginary infinite
sequence of bits chosen (and fixed) for P’* by ilfv,
in a halting computation on
input x. Note that in any finite execution of V*, only a finite prefix of r is
scanned, and only this prefix will be output by A4v. as part of its output.
Jumping ahead we stress that ikl ~. will conduct additional coin tosses, which it
will never present to 1’*.
The output of machine &?v* will be compiled on special record tapes: the
random-record
tape and the communication-record
tape. The random-record
tape will contain the prefix of r scanned by V* (on input x, random tape
contents r, and the conversation appearing on the communication-record
tape).
The contents of the communication-record
tape is constructed in the following
,rn rounds (initially the communication-record
is empty and i = 1).
Round

i:

(S1) &fv. chooses at random D CR {O, 1} and a permutation i e~ Sym( V). It
computes I? = $ GO.
(S2) Machine
&fv*
sets a = V*(x,
r; Hl, ~1, . . .. Hl_l. +i_l, H).
(cY is
the message V* sends on input x and internal coins r after receiving
messages Hl, 41, . . . , H,_l, ii- ~, H.) Without 10SS of generality,
a e
{O, 1} (since otherwise it is treated as u = O). There are two cases.
Case 1. a = ~ (lucky for AZv.).
Machine &fv* appends (H, a, J) to
communication-record
tape, sets H, ~ H, a, ~ a, ii -4,
and proceeds to the next round (i. e., i - i + 1).
Case 2. a # ~ (unlucky for A4v.).
Machine &fv* is going to repeat the
current round. Nothing is appended to the record tape, i is not increased,
and steps (S 1) and (S2) are repeated.
its

If all rounds are completed then AZvx halts outputting (x, r’, ~), where r’ is
the prefix of r scanned by V* on input X, internal coin tosses r and
communication
record -y. We stress that Al ~. outputs the prefix of r determined by V* actions in the conversation
that is being output, and not the
possibly longer prefix that Alv. has used in previous attempts!
We now have to prove the validity of the construction.
First, we prove that
Next, we
the simulator A4v. indeed terminates in expected polynomial-time.
prove that the output distribution produced by A4 ~. equals the distribution over
V*’S tapes when interacting with P. Once these two claims are proven, the
theorem follows.

Proofs

that

Yield Nothing
Machine

CLAIM 2.1.
Let

PROOF.

~j

=

( Hj,

But

Mv+

Their

Validity

terminates

705

in expected polynomial-time.

~~); and T(’) denote ~1, . . . . ~i. For each repetition

of the i + 1st round, ~ and H are statistically
independent (since H is a
random isomorphic
copy of G, given either values of ~). Given that (3 ~~
{O, 1}, we get
Pr(V*(x,

r; ~ (“H)=6

)=;.

Thus, the expected number of times that A4 “. repeats each round is exactly 2.
❑
The claim follows from the fact that V* itself is expected polynomial-time.
CLAIM

2.2.

distribution
PROOF.

(P,
Let

The probability
V*)(GIGO).
x =

(Gl,

distribution

GO).

A

typical

Mve( GIGO)

element

in

the

is identical

support

of

to the

~v.(

x)

V*)( x)) consists of the input
X, a random
tape prefix
r’, and a
sequence of m triples (HI, al, *1), . . . , ( Hn, an, ~~). Both distributions
depend in fact on r, the infinite sequence of coin tosses for the verifier, which
in both cases is chosen uniformly.
It suffices thus to show that for every fixed
value of r the residual (conditional)
distributions
are equal. These residual
distributions,
depending on r, consist of a prefix
r’ and a sequence of m
triples. Note that r’, the finite prefix of r scanned by V* is determined by r
and the messages that V* has received.
For any fixed infinite sequence r, and O < i < m, let II~~;i)
denote the
probability
distribution
defined by the i first rounds of message exchange
between P and V* on common input x when V* uses r as its source of
internal coin tosses. Similarly,
II:”’)
denotes the probability
distribution
defined by the i first triples output by ikfv. on input x when fixing r as the
verifier’s
source of internal coin tosses. The claim follows by proving that
IIfi’” ~) = Hfi~’; ~), and this equality is proven by induction on i.
(and

(P,

Induction

Base (i = O).

Hold vacuously.

Induction
By induction

Step (i ~ i + 1).
hypothesis

Conditioning

on the event

Let -y(i) be an element in the support of IIfl.

we consider the i + 1st triple in ll~r>i+ 1) (resp., H~~rJi+ 1)), denoted II:
(resp., 11~~~)). We show that both distributions
are uniform over the set
S=

{( H,a,

~):

H=

~GaACY

= V*(x,

1)

r,-y(z)H)}.

The set S is in 1 – 1 correspondence
with the set Sym( V). The correspondence
is given by the mapping
(H, u, ~) ~ ~ o ~“ – 1. This mapping is 1– 1 since

collision implies equal H’s (as H = ~ G. = ~ o ~“ -1 Gl), equal H’s imply
equal a‘s (as u is determined by H), and equal ct’s imply equal ~ ‘s. The
where
U(Z) =
inverse
mapping
is
n- ~ (m-Gl, u(z)> T, “ ~l-a(m)),
V*( x, r, -y(i)( mGl)). The inverse mapping coincides with the way an element

0. GOLDREICHET AL

706
k chosen in the distribution
H$~~),
Another way of sampling uniformly

and thus this distribution
is uniform on S.
the set S is exhibited by n~~,l ): choosing

uniformly
~ ~ {0, 1} and ~ in Sym( V) and outputting (tGP, 6, +) if B =
V*( x, r, -y(i)(IJ Gfi)). In case there is output, it is uniformly
distributed in S.
Thus,

Combining

(1) and (2), the claim follows.

Combining

the two claims,

the theorem

El
follows.

❑

Remark
10.
Serial execution
vs. parallel
execution:
the case where
intuition
fails?
Although
one’s intuition
may insist that the above zeroknowledge protocol remains zero-knowledge
even when the m rounds are
executed in parallel instead of serially, we do not know how to prove this
statement. In fact, recent work of Krawczyk
and Goldreich
[40] shows that
the parallel version is unlikely to be zero-knowledge,
since its alleged zerosimulation, unless
knowledge property cannot be proven using a “black-box”
G1 = BPP. Interestingly,
a modification
of the parallel version (in which the
verifier uses “secret coins”)
yields a constant-round
perfect zero-knowledge
proof for G1 [9]. Getting back to the proof of Theorem 2, the reader should
note that the argument used in the proof is based on the fact that the verifier’s
request for the ith graph only depends on the first i graphs. Thus, changing the
i + 1st graph does not affect the requests for the previous i graphs. This may
not be the case in a parallel execution of the protocol, where the prover first
sends m isomorphic copies and only then receives the verifier’s
requests. In
this case, the verifier’s
request for the ith graph may depend on all the other
graphs. If we try to satisfy all the requests by choosing the iYI’s beforehand, we
have only a negligible
probability
of succeeding (i.e., 2-*).
If we try to
construct a good sequence of HI’s, by choosing the H,’s at random and
replacing the bad H,’s hoping that the new a i’s will match these graphs better,
we are likely to fail as the u i’s corresponding to the good Hz’s may change too.
Remark
11. It seems that allowing the simulator to be expected polynomial-time (rather than strictly probabilistic
polynomial-time)
is essential to the
perfect
zero-knowledge
property
of Protocol 2, even when restricting
the
verifier to be strictly probabilistic
polynomial-time.
In particular, the simulator
presented in the proof of Theorem 2 has (rare) super-polynomial
runs. An
easy modification
sacrifices the perfectness of the simulation to get strictly
polynomial-time
simulators for strictly polynomial-time
verifiers. This modification consists of repeating each round in the simulation at most m times and
stopping in the highly unlikely case that all m tries were unsuccessful. The
resulting simulator has running time bounded by m times the running time of
the verifier and produces a probability
distribution
with a statistical difference
m2–m from the distribution of the interactions with the real prover. Thus, using
“strictly
polynomial-time”
instead of ‘ ‘expected polynomial-time”
in the
definition
of zero-knowledge,
we get that Protocol 2 is almost-perfect
zeroknowledge.

Proofs

that

Yield Nothing

2.3 ZERO-KNOWLEDGE
active

proof

probably

system

not

But

Their

PROOF SYSTEM
for

zero-knowledge:

graph

Validity
FOR GRAPH

nonisomorphism
a user

interacting

707
NONISOMORPHISM.
presented
with

the

in
prover

The

inter-

Section

2.1

is

may

use

the

in order
to discover
which
of the
given
grapl-is
( G1 and GO) is
isomorphic to a third graph G~ (for more details, see [44] and [60]). The way to
fix this flaw is to let the verifier first “prove”
to the prover that he “knows”
an isomorphism between his query graph H and one of the input graphs. This
is done by using a parallel version of Protocol 2 in order to prove that H is
isomorphic
to either GI or Go. We do not require this subprotocol to be
zero-knowledge
but rather to “hide”
the isomorphism
used in the proof.
Formulating
the appropriate
definition
of what it means for a machine to
“prove knowledge of something”
is quite complex and beyond the scope of this
paper. We only note that the definitions proposed in [27], [47], and [67] do not
suffice. We prefer to present our zero-knowledge
proof system for GNI, and
demonstrate its validity
“directly”,
without using a notion of a “proof
of
knowledge”.
The modification
to Protocol 1 follows the underlying
ideas of the zeroknowledge proof system of quadratic nonresiduosity
that appeared in [47]. A
unified and generalized presentation appears in [67]. The presentation of the
protocol is further simplified using the “pairing
trick”
of Benaloh [10].7

prover

Protocol

3

common

input.

Two graphs Gl( V, El)

The following
five steps are executed
random coin tosses.
(Vi)

and GO( V, Eo).

m times,

each time using independent

The verifier
chooses at random u e~{ O, 1}, and a permutation
m =~
Syrn( V). The verifier constructs H = T G.. (The graph H is a random
isomorphic copy of either G1 or Go. ) The graph H Will be called the
question. In addition to the graph H, the verifier constructs n2 pairs8 of
graphs such that each pair consists of one random isomorphic COPYof GI
and one random isomorphic
copy of GO. The graphs in each pair are
placed at random order. These pairs will be called the test pairs, as they
will be used by the prover to test whether the verifier is not cheating.
Specifically,
for each 1 s i s n2, the verifier chooses at random a bit
~i,l
> ~i,o
CR ~~rn( V > and comPutes>
‘Yi ‘R. {o> 1} and two Permutations
for J e {O, 1}, ~j = 7ijGj+,,
~Od2. The verlfler
sends H and the

(Pi)

(V2)

sequence of pairs ( T1,1, T1,O), . . . ; ( Tn2,1, T.z ~) to the prover.
The prover chooses at random, a subset 1 G {1,2,.
. . . n2}. (1 is chosen
with uniform probability
distribution
among all 2 “’ subsets.) The prover
sends 1 to the verifier.
n2 } then the verifier halts and rejects.
If lisnota
subset of {1,2, ...,
Otherwise,
the verifier
replies w~th { (Ti, ri, 1,_7,,o): i c ~) and { ( CY+
“):
i~I},
where
1={1,2,
. . ..n2}
-1.
‘Yj mod 2, ‘z,(ci+~zmod2)T
Namely,

for

i e 1 the verifier

shows an isomorphism

between the input

7 The underlying idea of this simplification
appears also in [26].
8 nz is an arbitrary choice of a function which is bounded above by a polynomial in n and bounded
below by the logarithm of the complexity of testing isomorphism @etween two graphs on n nodes).
This choice is of course not optimal (especially in light of [7]).

0. GOLDREICHET AL

708

graphs and the ith pair, while for i ~ j the verifier shows an isomorphism
between H and one of the graphs in the ith pair. Intuitively,
for i e I thg
verifier shows that the ith pair is properly constructed, while for i e I
the verifier shows that if the ith pair was properly constructed then so
was H.
between Ti ~
The prover checks whether ~I,J is indeed the isomorphism
and G(J+Y,~Odz),
for
every
i e 1 and j ~ {O, 1},
and whethir

(P2)

– 1 is_ indeed
an isomorphism
between T, (a+ ~z~ ~~~, and
~1, (a+7,
mod2)~
H, for every i e 1. If either condition
is violated,
the prover stops.
Otherwise, the prover answers with ~ ~ {1, 0}, such that H is isomorphic to GO. (If no such D exists, the prover answers with ~ = O.)
The verifier tests whether a = ~. If the condition is violated, the verifier
stops and rejects; otherwise, he continues.

(V3)

If the verifier

has completed

m iterations

of the above steps, then he accepts.

When verifying that the modified protocol still constitutes an interactive proof
system for graph nonisomorphism,
we have to show that the information
revealed by the verifier in Step (V2) does not yield information about a (in case
the graphs are isomorphic!).
When proving that Protocol 3 is zero-knowledge,
we use the information
revealed in Step (V2) to help the simulator.
THEOREM3.
Protocol
3 constitutes
a (perfect)
tive proof system for graph nonisomorphism.
PROOF.
1) is

still

First,

we

prove

that

an interactive

proof

condition

still

completeness
isomorphic,

Protocol
system

holds

3 (which
for

(i. e.,

nonisomorphism.

if

graphs

the

and

both

prover

and

verifier

follow

accepts).

If,

on

the

other

hand,

G ~ and

graphs

and

sent

by

isomorphic
that

if

copies

G ~ and

if the prover

of both

graphs

Go

are

isomorphic

does

not

follow

the

the

verifier

and

protocol.

the
Go

in Steps

yield

then

no

a #

interac-

is a modification

graph

always

permutations

zero-knowledge

the
not

G,

and

Go

protocol,

then

the

are

are

isomorphic

(V 1) and

information

B with

of Protocol
Clearly,

probability

(V2)

about

verifier
then

are
a.

the

random

It follows

at least

~,

even

the five steps m times we
does not reject two isomorphic

Repeating

conclude that the probability
that the verifier
graphs is at most 2-‘.
We now turn to show that Protocol 3 is indeed zero-knowledge.
Again, we
use Definition 5. As in the proof of Theorem 2, we present a machine AZv. for
every interactive machine V*, such that &fv*( x) = (P, V*)( x). The machine
Afvy uses V* as a subroutine. The structure of the simulators we construct here
is different from the simulators constructed in the proof of Theorem 2. In the
proof of Theorem 2, the simulator produced conversations
by guessing in
advance what his subroutine
V* will ask. In this proof, the simulator will
produce conversations by extracting from V* the knowledge it has about its
questions. In doing so, we implicitly
use the notion of a “machine
knowing
something”.
(Since there is no explicit use of this notion, there is no need to
present a definition here.)
Following
is a detailed description of &fv*. In this description,
we assume
that the interactive machine V* is strictly polynomial-time.
The modification
to
expected polynomial-time
is along the lines discussed in the proof of Theorem
2. Machine &lv, starts by choosing a random tape r e ~ {O, 1} g for V*, where

Proofs

that

Yield Nothing

But

Their

Validity

q is a bound on the running time of V* on input
record tape and proceeds in m rounds as follows.
Round

709
G ,GO. &fv. places r on its
(Initially
t = 1.)

t:

(S1) AZv* initiates V* on input GIGO and random tape r, and reads the graphs
H, and (Tl,l, Tl,o), . . . . ( ~.~,l, T.z o) from the communication
tape of
V* (i.e., H, (Tl,l, TI ~), . . . . (T~,,’l, T., o) - V*(GIGO,
r)).9 Machine
iWv. chooses a random’ subset 1 and places it on the communication
tape
of V*. Mvt also appends 1 to its record tape.
(S2) &fv,
reads {(~i,
~iJ,
~j,o): i
e
1} and {(a
+
71 mod 2,
‘i,

(a+y,

-1,:

mod2)T

i e

1},

from

the communication

tape of

V*

(i.e.,

{(a + -yi .mod2, ~i,(a+T, mOd2)m-1):
i cJ} {(7i, 7i,l, 7,,0): ie l},
V*(GIGO,
r; 1)). Machine
ikfvx checks that ~i,j is an isomorphism
between ~,j and G(j+y, mOd2), for every iel
and je{O,
1}. It also
checks that

71~u+~zmOd2jm– 1 is an isomorphism

between

Ti ~a+Yr,~Od~,

and H, for every i e ~. If either conditions is violated then &fv. outputs
its record tape and stops. Otherwise, &fv, continues to Step (S3).
(S3) The purpose of this step is to find an isomorphism between H and G..
This is done by repeating the following procedure (until such an isomorphism is found).
(S3. 1) Machine A4 V* chooses at random a subset K q { 1, 2, . . . . n2}.
Machine Mva initiates V* on input G, Go, (the same!) random
tape r, and places K as the first message on the read-only
machine Mv,
reads
communication
tape of V*. Consequently,
and {(a + bi mod2, ui,(a+8,,~Odz)m– 1):
{(ai~oi,l,
al,~): ieK}
i e K},
from
the communication
tape of
V*.
(That
is,
{(t?i, Oi,l, ai,O): ieK},
{(a + ~i mod2,
oi,(u+6, mO~2)r- 1): ie
~}
(S3.2)

~

V*(GIGO,

~ K).)

For every i ~ 1 fl K, if O,,(a+a ~Od2)T-’ is indeed an isomorphism
between T,,(a+~,,UOd21 and ~ then T~<~+8,modz)o, ~a+a ~Od21r- 1

is an isomorphism between G. and H. Analogously,’ for ~e ~ (7 K.
If an isomorphism was not found, go to Step (S3. 1).
(S3 .3) In parallel, try to find an isomorphism between H and either input
graphs by exhaustive search. One trial is done per each invocation
of V*. (In case Mv.
finds that H is not isomorphic to either
input graphs, Mv. acts as if it has found an isomorphism between
H and Go.)
(S4) Once an isomorphism between H and G6 (D={ O, 1}) is found,
MV* appends ~ to its record tape, thus completing round t.

machine

If all rounds are completed then Mv. outputs its record and halts.
The intuition behind the construction of the simulator M V* is that if V* has
~ probability
of passing Step (P2) in the protocol then the same holds with
QThe notation V*(G, Go, r) is accurate only for the first round (t = 1). In subsequent rounds, V*
actions depend also on the transcript of the previous rounds; hence, V *( G, Go, r) should be substituted
by V*(G, Go, r, II(t– 1)), where H (t– 1) is the transcript (conversation) generated for the previous
t– 1 rounds. The notation V*(G, Go, r) is suitable also for the parallel version of the protocol
(discussed in Remark 12).

0. GOLDREICHET AL

710

respect to JWV* entering Step (S3). In this case, the simulator has to come up
with the right answer concerning the isomorphism
between H and one of the
input graphs. To do so, the simulator will invoke V* again with the same
random tape (causing the verifier to produce the same question and the same
test pairs) and ask him about a different subset K. The proper conclusion of
Step (S2) has provided
the simulator
with isomorphisms
between the test
graph-pairs and the input graphs (for the tests with index in 1). If V* supplies
an isomorphism
between H and one of the test graphs (for a test with index
i e ~) and i 6 I then an isomorphism between H~nd one of the input graphs is
constructed (by transitivity).
Analogously for i e 1 (1 K. It all boils down to the
question what is the probability
of getting from V* a good answer on a
rando~ly
chosen K # 1. This probability
is almost e (the difference may be
= 2”” ). Thus the expected number of times &fv* repeats Step (S3) on the
condition that it passes Step (S2) is 0(1/c),
provided that e > 2- ‘2. This
guarantees expected polynomial-time
simulation for every value of c ~ 2 “ 2- ‘2.
But what happens if ~ = 2 -‘2 (this may happen if V* constructs his test pairs
so that he can answer on a single subset (he can do so without knowing the
isomorphism
between H and either input graphs)). This extreme case is
handled by Step (S3. 3): the simulator finds an isomorphism
by running an
ordinary algorithm (e. g. exhaustive search). Note that this is done only in the
unlikely event (occurring with probability
2- “2) that A4v+ passed Step (S2).
Without
Step (S3. 3) the simulator
would have produced almost the same
distribution
as in the prover-verifier
conversations and hence Protocol 3 would
have been “only”
proven to be almost-perfect zero-knowledge.
We now prove the validity
of the construction.
First, we prove that the
simulator ikfv. indeed terminates in expected polynomial-time.
Next, we prove
that the output distribution
produced by Alv, does equal the distribution
over
V*’S tapes (when interacting with P). Once these two claims are proven, the
theorem follows.
CLAIM

3.1.

PROOF.

We

Machine

iWvh terminates

consider

the

expected

in expected polynomial-time.

running

time

on

a single

round,

for

any

r. The reader can easily extend the proof to all rounds. We
call asubset1G{l,2,
...,
n2 } good if V* answers properly on message 1
(i.e., 1 is good iff V*(GIGO,
r; 1) consists of isomorphisms between the ~,,
~.,. and GI, GO for Vie I and an isomorphism
between one of the Ti,~’s
fixed

random

tape

and H for V i ~ ~). Denote by g, the number of good subsets (g, depends of
course also on V*, the input graphs and previous rounds which are all fixed
here). Clearly, O < g, s 2“2. We compute the expected number of times V* is
invoked at round t as a function of gr. We need to consider three cases.
Case 1 (g, z 2).
In case the subset 1 chosen in Step (S 1) is good, we have
to consider the probability that a randomly selected subset K is good and # 1.
In case the set chosen in Step (S 1) is bad, the round is completed immediately.
Thus, the expected number of invocations of V* is

l+*.

gr–l

()
—

2 ‘2

-1

=1+

g,

———— s 3.
gr–l

Case 2 (g, = 1). With exponentially
small probability
(i.e., 2 ‘“2)
subset 1 chosen in Step (S 1) is good. In this case, we find the isomorphism

the
by

Proofs

that

Yield Nothing

But

Their

Validity

711

exhaustive search (i. e., n! steps). Otherwise, the round is completed immediately. Thus, the expected complexity
of Afv* in Case 2 is bounded by one
invocation of V* and an additional n!” 2 -‘2 < 1 step.
Case 3 (g,
kfv. invokes

= O). The subset 1 chosen in Step (S1) is always bad, and thus
V* exactly once.

The claim follows

by the fact that V* is polynomial-time.

CLAIM 3.2.
The probability
distribution
(P, V*)(GIGO).
PROOF.
each

of

Both
which

distributions
is either

Gp) or a bad 1, where
The theorem follows.

(1,

distribution

consist
~)

(with

1 is a random

Mv~(GIGO)

and

is identical

of a random

r,

good

/3 so that

1 and

subset of {1,2,

D

sequence

to the

of elements,

H is isomorphic
❑
. . . . n2}.

to

❑

Remark
12. Protocol 3 was presented as a sequential application of m
copies of a five-step protocol. However, the validity of Theorem 3 does not rely
on the fact that these copies are executed sequentially, rather than in parallel.
The five-step protocol in which copies of the five-step subprotocol (of Protocol
3) are performed in parallel is also a zero-knowledge
interactive proof system
for graph nonisomorphism.
The simulator can handle all copies concurrently,
by first by choosing a subset 1, for each copy t,and next choosing subsets K,
for each copy t.The fact that Protocol 3 can be parallelized follows from the
fact that its proof technique only needs “something
good” (choosing a good ~~)
to happen once per each copy (and not necessarily concurrently!).
In the proof
of Theorem 2, we need “something
good” (choosing a lucky ~t) to happen
concurrently in all copies.
Remark
13. As in Theorem 2, it seems that allowing the simulator to be
expected polynomial-time
(rather than strictly probabilistic
polynomial-time)
is
essential to the perfect
zero-knowledge
property of Protocol 3, even when
restricting the verifier to be strictly probabilistic polynomial-time.
However, the
situation here is more acute. Bounding the number of iterations (of Step (S3)) of
our simulator by a particular polynomial may result in an output with nonnegligible statistical difference from the distribution
of the interactions with the real
prover. (The statistical difference
achieved by this strictly polynomial-time
simulator can be guaranteed to be less than one over a related polynomial,
but
not less than any polynomial. ) Thus, we do not know whether Protocol 3 is
almost-perfect zero-knowledge,
when using “strictly
polynomial-time”
instead
in the definition of zero-knowledge.
of “expected polynomial-time”

3. All Languages

in NP Have

Zero-Knowledge

Proof

Systems

In this section, we present zero-knowledge
interactive proof systems for every
language in NP, assuming the existence of secure encryption functions (see
definition below). We begin by presenting a zero-knowledge
interactive proof
system for graph 3-colorability.
Using this interactive proof system and the
NP-Completeness
of graph 3-colorability,
we present zero-knowledge
proof
systems for every language in NP.
In this section, we assume the existence of secure encryption
schemes.
Security is defined (see below) analogously to the definitions of Goldwasser and

0. GOLDREICHET AL

712

Micali [46]. However, the encryption schemes need not be “public-key.”
In
fact, it suffices to have “bit commitment schemes” (which using recent results
of Naor [58], Impagliazzo
et al. [52], and Hastad [51] exist. assuming the
existence of one-way functions). 10 A concrete and more efficient implementation (of secure encryption),
assuming the intractability
of factoring, appears in
[4]. Here we only use encryptions for four messages; namely, O, 1, 2, and 3.
This allows a more specific presentation of the notions of an encryption scheme
and its security.
Definition
6 (Secure Encryption
[46]).
An encryption
function
is a
x {O, 1}*
polynomial-time
computable two-argument
function f: {O, 1.2,3}
~ {0,1}*
satisfying
VX# Y={O, 1,2,3}
and Vr, s~{O,l}*
f(x,
r) #
f(Y, s).
A probabilistic
random variable
{o, l}n.
An encryption

encryption
of a message x with security
fn( X) = f ( x, r), where f is an encryption
function

f

parameter
n is a
function and r ●R

is secure if, for v x # y ● {O, 1,2, 3}, the ensem-

bles { fn( x)}. and { fn( y)}. are polynomially
indistinguishable.
An encryption function f is nonuniforndy
secure if the above ensembles
are indistinguishable
by polynomial-size
circuits.
Namely,
for Q x # y e
{O, 1,2, 3}, every polynomial
Q and every family of Boolean circuits { C.}.,
where C’. is a circuit of size Q(n),
every constant c >0
and sufficiently
large n
lPr(C~(f~(x))

= 1) -

Pr(C,(f.(y))

=l)l<;.

PROOF SYSTEM FOR GRAPH 3-COLORABILITY. A graph
3.1 A ZERO-KNOWLEDGE
E) is said to be 3-colorable
if there exists a ~mapping ~: V+ { 1,-2, 3}
(called a proper coloring)
such that every two adjacen~ vertices are assigned
different colors (i.e., each (u, v) e E satisfies o(u) # +(v)). Such 3-coloring
induces a partition of the vertex set of the graph to three independent sets. The
language graph 3-colorability,
denoted G3 C, consists of the set of undirected
graphs that are 3-colorable.
Graph
3-colorability
is known
to be NPcomplete [35].
G( ~,

The common input to the following protocol is a graph G( V, E), which we
assume without loss of generality to be simple and connected. In the following
protocol, the prover needs only to be a probabilistic
polynomial-time
machine
which gets a proper 3-coloring of G as an auxiliary input. Let us denote this
coloring
by @ (r$: V-+ {1,2,3}).
Let n=
\V\,
m=
IEI,
and Sq=
Sym({ 1, 2, 3}). Since the graph is (simple and) connected,
n and m are
polynomially
related (i.e.,
n – 1 < m < n2 /2). For simplicity,
let V =
{1,2,...,
n}.
To clarify the presentation of our protocol, we first present an implementation of it which uses “physical
means of hiding information. ” To be more
specific, we assume that the prover has at its disposal a large supply of boxes
each having a lock with a corresponding key. All keys are different.
10The notion of one-way function originates from [25]. A seemingly weaker, yet equivalent,
formulationappearsin [68]. Notableconcretesuggestionsare dueto [61] and [63].

Proofs

that

Yield Nothing

Protocol

4 (Physical

common

input.

The following
coin tosses.
(Pi)

But

Their

713

Validity

Implementation)

A graph G( V, E).
four steps are executed

m2 times, each time using independent

The prover chooses at random an assignment of three colors to the three
independent sets induced by ~, colors the graph using this 3-coloring, and
places these colors in n locked boxes each bearing the number of the
corresponding vertex. More specifically, the prover chooses a permutation

T CR S3, places T( 0( i)) in a box marked i (Vi= V), locks all boxes and
sends them (without the keys) to the verifier.
(Vi) The verifier chooses at random an edge e ●RE and sends it to the prover.
(Intuitively,
the verifier asks to examine the colors of the endpoints of
eeE.)
(P2) If e = (u, v) e E, then the prover reveals the colors of u and v, by
sending him the keys to boxes u and v. Otherwise,
the prover does
nothing.
(V2) The verifier opens boxes u and v using the keys received and checks
whether they contain two different elements of { 1, 2, 3}. If the keys do
not match the boxes, or the contents violates the condition then the verifier
rejects and stops. Otherwise, the verifier continues to the next iteration.
If the verifier

has completed

all m2 iterations

then it accepts.

It is easy to see that Protocol 4 constitutes an “interactive
proof system” for
Graph 3-Colorability.
If the graph is 3-colorable and both prover and verifier
follow the protocol, then the verifier accepts with probability
1. If the graph is
not 3-colorable and the verifier follows the protocol then, no matter how the
prover plays, at each round the verifier will reject with probability
at least
1/m. It follows that the probability
that the verifier will accept (i.e., complete
is wrong”)
is bounded
all the m2 rounds wi~hout detecting that “something
above by (1 – m-l)~= exp(–m).
Loosely speaking, Protocol 4 is “zero-knowledge”
since the only information received by the verifier
at each round is a pair of different randomly
selected elements of { 1, 2, 3}. It is crucial that the prover uses at each round an
independently selected random permutation of the colors. Thus, the names of
the three classes (of the partition ~) at one round are uncorrelated to the names
at another round. It follows that the values of every random permutation at the
end-points of one edge reveal no information
about the coloring d.
In the above paragraphs, the terms interactive proof
and zero-knowledge
were used in quotes since these were not defined for a physical setting. The
adaptation is straightforward
and is left to the reader.
We now present the digital implementation
of Protocol 4. In this protocol, a
standard (polynomial-time)
algorithm for evaluating f is part of the programs
of both prover and verifier.
Protocol

4

common

input.

The following
coin tosses.

A graph G( V, E).
four steps are executed

m2 times, each time using independent

O. GOLDREICHET AL

714

The prover chooses a random renaming of the 3-coloring, encrypts it, and
sends the encryption to the verifier. More specifically,
the prover chooses
a permutation x CR Sq, and random n-bit r,’s (V v ~ V, let r, •~ {O, 1}”).
The prover computes FV = ~( T( @(v)), ry) (for every v c V), and sends
the sequence FI, Fz, . . . , F. to the verifier.
(Vi) The verifier chooses at random an edge e e~ E and sends it to the prover.
(P2) If e = (u, v) e E, then the prover reveals the coloring of u and v, and
“proves”
that they correspond to their encryptions. More specifically, the
prover sends ( T(4( u)), rU) and ( T(+( v)), r,) to the verifier.
If e ~ E,
then the prover acts as if e = e., where eO is an arbitrary fixed edge in
El]

(PI)

provided in Step (P2). Namely, the
checks the “proof”
(V2) The verifier
verifier
checks whether
“FU = Y( m(~( u)), rU), F,, = f(m(~( v)), r,),
m(+(u)) # ~(~(v)),
and T(rj(u)),
m(rj(v)) c { 1, 2, 3}. If either condition
is violated the verifier rejects and stops. Otherwise, the verifier continues
to the next iteration.
If the verifier

has completed

all rnz iterations,

then it accepts.

If f is a nonuniformly
secure encryption
function,
PROPOSITION4.
Protocol
4 constitutes a zero-kno wledge interactive proof system for
3-Colorability.

then
Graph

PROOF. First, we show that Protocol 4 constitutes an interactive
proof
system for G 3 c. The argument is as in the paragraph following
the physical
implementation
of Protocol 4, except that k is important to stress that also in the
digital implementation
the prover cannot change the information
hidden in his
messages. This is due to the fact that each encrypted message has a unique
decryption.
Our demonstration that Protocol 4 is indeed zero-knowledge
follows the lines
of the proof of Theorem 2. Namely, the construction of A4v. uses the same
underlying ideas used in the proof of Theorem 2. However, additional technical
difficulties
arise in proving the validity of the construction. The source of these
difficulties
k the fact that a cheating verifier may select his question based on
the encryption of the coloring presented to him. The security of the encryption
is carefully
used to show that even doing so does not provide him any
noticeable advantage.
As in the proof of Theorem 2, we present a machine &lv.
for every
interactive machine ~*. This time, Tvfv.( x) and (P, V*)(x)
will not be equal,
but instead h will be shown that they are polynomially
indistinguishable.
Typically,
we try to guess which edge the machine V* will ask to check. We
encrypt an illegal coloring of G such that we can answer P’* in case we are
lucky (i. e., V* asks for the edge we chose). The cases in which we failed
will be ignored. It is crucial that from the point of view of V* the case that
leads to our success and the case that leads to our failure are polynomially
indistinguishable.
Again, we use Definition
5, including
in the distributions
(for sake of
convenience) also the contents of the verifier’s write-only communication
tape.
‘‘ Here, as in Protocol 3, we have again preferred this <‘unnatnral” conventionthat simplifies the
zero-knowledgeargument.

Proofs

that

Yield Nothing

But

Their

Validity

’715

As in the proof of Theorem 3, we consider only probabilistic
interactive
machines that are strictly polynomial-time.
The argument is easily extended
to interactive
machines that are expected polynomial-time
(see proof of
Theorem 2).
Following is a detailed description of ~v~. The machine kfv. uses V* as a
subroutine. Machine A4v. starts by choosing a random tape r ~~ {O, 1} q for
V*, where q is a bound on the running time of V* on input G. Machine Afv.
places r on its record tape and proceeds in rnz rounds as follows.
Round

i:

(S1) Afv* picks an edge (u, v) e~ E and a pair of integers (a, b) e~ {(i, j):
i#j~{l,2,3]}
at random. WI V* chooses random r,’s (r, e~ {O, 1}”)
and computes Fi = ~( Ci, ri) for each i c V, where c1 = O for i e V –
= b. Machine itlv~ sets R ~ (Fl, Fz, . . . . F.).
{u, v}, cU=aandcv
(S2) Machine A4V* sets e = V*(G, r; Rl, R~, . . . . Ri_l, R~_l, R). (e is
the message that V* sends on input G and random tape r after receiving
messages Rl, R~, . ... Ri_l, R~_l, R, where Rj is the jth sequence of
encrypted colors, R is the current sequence of encrypted colors, and R;
is the jth revealed encryption).
Without loss of generality,
e e E (otherWe
wise, e is treated as eO—the fixed edge used in the protocol).
consider two cases.
sets
R, + R,
Case 1. e = (u, v) (lucky for &fv.).
Machine
&fv.
ei G e, R; e ((cU, r~), (c,, r,)), appends (R,, ei) R;)
to
its
record
tap%
and proceeds to the next round (i. e., i +- i + 1).
Case 2. e # (u, v) (unlucky
for &fv.).
Machine
iWv* is going to
repeat the current round. Nothing is appended to the record tape, i is not
increased, and Steps (S 1) and (S2) are repeated.

When
halts.

all

rn2 rounds

are completed,

machine

&fv,

outputs

its record

and

We now have to prove the validity of the construction. First, we prove that
the simulator ikfv. terminates in expected polynomial-time.
This amounts to
showing that, each time a round is repeated, the verifier’s
request (i. e., e)
equals the chosen (u, v) with probability
essentially 1/ m (otherwise,
V* can
the encryption
function
~).
be transformed into a circuit family that “breaks”
Next,

we prove

indistinguishable

that the output

distribution

from

V *‘s tapes when interacting with
between these probability distributions,
but this

the distribution

P. (There is clearly a difference
be “detected”
difference cannot
two

claims

technical
coloring

are proven,

produced

by ~v.

is polynornially

over

in probabilistic
the proposition
follows.

polynomial-time.)
We start with

Once these
the following

lemma
that asserts, as a special case, that the encryption
of the
sent by the prover and the encryption
of the “garbage”
sent by the

simulator
are indistinguishable
by polynomial-size
circuits.
special case of a theorem
by Goldwasser
and Micali
[46].
sketched here for the sake of self-containment.

Notatio_n.
Letci=
(al,...,
k. Then ~n(a) denotes j.(al)

Uk), where
“ “ “ ~.(cxk).

CXiC{O, 1,2,3}

The lemma
is a
and its proof
is

for all 1 s i s

0. GOLDREICHET AL

716

LEMMA 4.0.
Let P be a polynomial,
and CY(l), U(2), a(3), . . . and P(l),
sequences such that a(n) = (a!”), . . . . Uy))
&),
/3(3), . . . be two infinite
and (j(”) = (~~~) ,. ... ~~!),
where a~”), d~”)e {0, 1,2,3}
and k. < P(l).
Then for every polynomial
Q, every family
of (bounded
size) Boolean
c >0
and sufficiently
circuits
{ C.: size(C~) s Q(n) )., every constant
large n

lPr(cn(jn(a’”J))

= 1) - Pr(cn(;n(B(’’)))

= 1)1 < +.

PROOF SKETCH. The statement is proven by considering
encryptions
of
hybrids of prefixes of a(”) and suffixes of ~(”). A polynomial-size
circuit
family that distinguishes the encryptions of the extreme hybrids (i.e., CY(”)and
~(”)) also distinguishes encryptions of two adjacent hybrids. Incorporating
the
hybrid messages into the circuits one can construct a family of (polynomial-size)
circuits that distinguishes the encryptions of x # y c {O, 1, 2, 3}. This contra❑
dicts our assumption that f is a nonuniformly
secure encryption function.
Notations.
For~:{l,2,
...,
n} ~ { 1, 2, 3} and r e~q, denote by msg~’~
the sequence (m(@(l)), 7r(q5(2)), . . . . ~(~(n))).
For u, VE {1,2, . . . . n} and
a, b ~ { 1, 2, 3}, denote by msgfi’”)’(”~)
the sequence (c,, Cz, . . ., c.), where
cU=a,
cV=b,
andcI=Oforic
{1,2, . . ..n{u.
v} v}.
CLAIM 4.1.

Machine

Mv,

terminates

in expected polynomial

time.

PROOF. Let l?(’-l) denote l?l, R’ 1~...~
Ri_l, R:._l, where Rj and R; are
as in Step (S2) above. In each repetition of the ith round, machine &lv, places
a probabilistic
encryption of msgfi’ “).(”’ ~) on the communication
tape of ~*,
where (u, v) ~~ E and a # b e~ { 1, 2, 3}. Using Lemma 4.0, we show that
the probability
that V* asks to reveal the colors of u and v when seeing the
tape approximately
equals the
encryption of msg~(“,v),(”, b) on its communication
probability
V* asks so when seeing the encryption
of msg~’)(”~)
on its
communication
tape, V( r, s) = E. It follows that a repetition of round i is
completed successfully with probability
= 1/m. A detailed proof follows.
We use V*(enc)
as a shorthand for V*(G, r; R(Z- 1), enc). First, we bound
the probability
that round ~ is completed successfully. This probability
equals
the probability
that V*( fn( msgfi’”)(”’~)))
= (u, v), where (u, v) e~E and
a#be~
{1,2,3}.

=

X

(U, wz

A
m

“

pra~b=R{1,2,3} (V*(~.(msg&v)(”’)))

= (u, v)).

Let (r, s) e E. Then by Lemma 4. O,_V* has on input ~~( msgfi’’)(”~))
aPProximately the same output as on input fn( msgM““)’(a’~)). Otherwise, V* and R(’ - 1)
can be incorporated
into a circuit
that distinguishes
the encryptions
of
(ti, v), (a, b)
msg~
and msg~’(r ‘)’t~’~) (for some u, v, r, s, a, b). It follows that the

Proofs

that

Yield Nothing

above probability

(u,

v)cE

Their

Validity

717

is bounded above by

1
—“

>X

But

(

m

?r a#~c,{l

z sl-(v*(ln(mSgtiS)

’(a’’)))

>,

= (u, ~)) -

~
n- )

1
>—”
m
1
—
— —.
m
—
—

1
2m “

(In the second inequality we use the fact that m < n’ /2.) We conclude that the
expected number of times that each round is repeated is bounded below by 2 m.
❑
The claim follows by the hypothesis that V* is polynomial-time.
CLAIM
{(p,

The

4.2.

V*)(G)}~e~,c

PROOF.

The

proof

is

graph.

We

assume

family

of

polynomial-size

one

probability

of essentially

ensembles

are polynomially

that

two

{ Mv,(G)}~GG~c

by

contradiction,

and

the

two

probability

ensembles

circuits

and

derive

a contradiction

First,

we

restrict

our

ways.

and

indistinguishable.
is

first

sketched
can

attention

be
to

in

this

told

apart

Lemma

to a single

paraby

a

4.0

in

round

of

the (P, V*) conversation and its simulation.
Next, we consider two cases. If
the distribution
of the ‘‘ verifier’s
query”
(i.e., the edge e) is substantially
different in the conversation and in the simulation, then the program V* can be
directly used to contradict Lemma 4.0. If these two distributions
are close
enough, we modify the circuits guaranteed by the above hypothesis to derive a
contradiction
to Lemma 4.0. The reader should note thqt the circuits in the
hypothesis receive as input a text that is not of the form fn( U), for a sequence
a, but rather a text consisting of such a sequence and two elements used for the
randomization of the encryption. The location of these elements in the sequence
may be determined by the entire sequence. This creates difficulties that need to
be resolved with some care.
Let { Cn}.
be a circuit
family
of polynomial
size that distinguishes
{ kfv*(G)}~=~,C
from {(P, V*)(G) }~=~,c. Namely, there exist a polynomial
Q and a constant c >0 such that the size of C. is less than Q(n) and an
infinite sequence of graphs Gj( Vi, Ei) such that for every i

pr(cl

Kl(Jf~.(Gi))

=

1)- Pr(clvl((p)

v*)(Gi))

=

1)

>

~

Let us consider this circuit family. Without loss of generality, we assume that
each circuit in the family has a single output bit. For sake of simplicity,
we
carry out our argument while referring to an arbitrary graph, denoted G( V, E),
in the above sequence of graphs and to the corresponding
circuit C I v 1. It is
important to note that all polynomials mentioned in the rest of the argument are
fixed for the entire sequence and are independent of the generic graph G. Let 4
denote the fixed coloring
of G( V, 1?) used by the prover,
n = I V I and
m=l
E\.

0. GOLDREICHET AL

718

The next two paragraphs are devoted to show that it suffices to consider a
simulation of a single round. The argument follows the “hybrid”
technique
first used in [46].
A typical element in the support of Alv.( G) (resp. in the support of
(P, V*)(G))
consists of the input graph G, the random tape r e {O, 1}’, and a
sequence of m2 triples (Rl, el, l?;), . . . ,(l?~~, e~z, l?~-). For O s i s m2,
let H(Z) denote the ith hybrid distribution
defined by taking G, r 6 {O, 1} g and
the first
i triples
(l?l, el, R~), . . . , (R,, e,, R~.) from
the distribution
(P, V*)(G),
and producing
the remaining
m2 - i triples by running AZv.
starting at the i + 1st round using the random tape r and the history
Ri, R;. Note that II(o) equals iWvi(G),
while II(rn ) equals
Rl, Rj, ...,
(P, V*)(G).
Clearly, the circuit C. that distinguishes the extreme hybrids (i. e., H(o) and
11(~’)) also distinguishes two neighboring
hybrids (i.e., 11(’) and 11(’+ 1), for
1}). N~mely, ~her~ exists an i such that
some ie{O,l,
..~, m2–
Pr(C~(II(i))

= 1) – Pr(C,Z(II(i+l))

= 1) >

m

21 ~ .
“n

Let e = l/(nz2 “ nc). Note that e–l as well as m / c are polynomials
in n
(since man—l).
obtained from H(’) by omitting the last m2 – j
Let H(i’~) be the distribution
triples. It is easy to see that this circuit family can be modified, maintaining the
“distinguishing
gap” (i.e., e) and the polynomial upper bound on the size of its
members, so that it distinguishes
11(”+ 1) and II(i+ 1‘z+ 1). (This is done by
into the circuits and applying it to construct the last
incorporating
klv+
m2 – (i + 1) pairs. We get a probabilistic
circuit that can be converted into a
deterministic one while maintaining the “distinguishing
gap”. )
Let us take a closer look at 11(’”+*) and II(i+l’i+l).
Intuitively,
11(’+1’’+1) is a
distribution
obtained by taking the first i + 1 triples of (P, V*) ( G), while
II(i” + 1) is a distribution obtained by taking the first i triples of (P, V*)(G) and
letting &fv, produce the i + 1st triple. Let 11~( H,) be a random variable such
that H(i’i+ 1) = 17tH~( Hi), where Hi is chosen according to H(’’i). Similarly,
let HPv(lYi)
be a random variable such that H(Z+ l’i+ 1) = IYZIIP ~(111), where
again Hi is chosen according to II(iZ). Intuitively,
HM( Hi) (resp., IIP V( HI))
denotes the i + 1st triple produced by A4v. (resp., (P, V*)) when V*’S input
and communication
tapes currently consists of the “history”
H,. Since the
circuit c~ distinguishes II (~>t+ 1) from ~ (Z+ 1‘’+ 1) it follows that there exists an
H, such that the circuit
C. distinguishes
(equally well) H,II~(
H,) from
HZIIP V( HZ). (This was just an averaging argument.) Incorporating
this H, into
HM( Hi) from IIP V( H,).
the circuit C., we get a circuit that distinguishes
Namely,

pr(C(~M(H,))

= 1) – pr(cn(Hpv(H1))

= 1) > E

(-m2:nc)
–

Recall that ~: { 1,2, . .
n} ~ { 1, 2, 3} is a fixed coloring of G. Note that
r.), (T(O(U)),
r,)),
where
~Pv(Hi)
equals (j (mSgkg),
Lu, v), (x-(4(u)),
m e~s~, (u, v) = V4(G, r; Hi, ~.(msg~>;))
and rti (resp., r,) is the randomization used to encrypt the uth (resp., vth) element in msg$;.
on the

Proofs

that

Yield Nothing

other
wherg

hand,
HM(HI)
u, v, a, b are

But

Their

Validity

719

(u, v), (a, rU), (b, r-y)),
equals
(1.( rnsg~“’v)(a’~)),
chosen by some distribution,
(u, v) = V*( G, r;
(u.v),(u,b)))
and
rU (resp.,
used to encrypt
rv) is the randomization
Hi, fn( msg~
the uth (resp., vth) element in msg~(~,p).(u,~). A typical element in both
distributions is an encryption of an n-element vector and two pairs corresponding to the decryption of two of its entries (the uth and vth entry).
We derive a contradiction
(to Lemma 4.0) by using the circuit
C. to
construct a circuit C: of polynomial-size,
that distinguishes the encryptions of
the following
two messages msgl and msgz, each being a sequence of 3 n
while the
elements of {O, 1, 2, 3}. The sequence msg ~ consists of 3 n Zeros,
sequence msgz consists of a sequence of n ones followed by a sequence of n
twos and a sequence of n threes (i. e., msgl = 03n and rnsgz = 1“2”3”).
The Construction
of C;.
The circuit
C;, incorporating
the circuit C., the
coloring
@, the (verifier’s)
program
V* and the history lli,
operates as
follows. On input a text tl t2 “-‘ t3n,where tl G {O, 1} *, the circuit C; selects
v},
the
at random (u, v) ~~E,
Ze~S3 and rti, rve~
{O, I}n. For jc{u,
C: sets Cj G T( 4( j)) and ij + ( Cj – 1) o n + j and constructs
circuit
text+-

tl, ti,

o“ c t,u_, f(cU,

rU)ti

.

+, ..0

ti _, f(cV,
“

rV)ti

“+1

“ “ “ tin.

(For j~{l,2,
...,
n} – { u, v}, the ~th element in text is the ~th element in
the T( @(~))th third of the input. The uth element in text is f ( Cu, r,,) and the
vth element in text is f ( c v, r,).) The circuit C; then runs V* on Hi and text.
If
V*(H,,
text) # (u, v), then C; stops outputting
O. If V*( H,, text) =
(u, v), then C; uses the circuit
C. and stops outputting
Cn( text, (u, v),
❑
(cU, rU), (cv, rv))e {O, 1}.

We are interested in the behavior of the circuit_ c; on the input distributions
Og input distribution
fn( msgl), the circuit C: runs

~n( msgl) and fn( msg2).
V* on input distribution

~n( ms~~“’v)(a’~)),

for

(u, v) ~~

E

and

a # b CR

{1, 2, 3}. On_ input distribution
fn(msg,),
the circuit C; runs V* on input
distribution
fn( msgj’$),
for x ERS3, We consider two cases. The easy case is
the one where the distribution of V*’s question (i.e., the edge it asks to reveal)
is substantially
different
on the two input distributions.
In this case V*
constitutes a contradiction
to Lemma 4.0. The second case is when the
on V*’s question is indistinguishable
(on the two input distribudistribution
tions) so that the circuit C; runs the circuit Cn with probability
= 1/m, on
both input distributions.
In this case, the circuit C: will distinguish the inputs
relying on the distinguishing
gap of C~. A detailed argument follows.
Let 111 (resp., ~z ) denote~he probability distribution of text, constructed by
111
C;, on input distribution
~n( msgl )(resp., fn( msgz )). The distribution
(resp., ~2~ depends on (u, v), m, rU, rv chosen by ~.. Fixing such a choice,
we get a distribution
Q[U’V)T’’U”P (resp.2 ~~’V)’m>’U”V), which is determined by
ll$”’v)’m’run)
the input distribution fn( msgl ) (resp., j~( msg2)). The distribution
consists of u – 1 encryptions of O followed by f ( T( @(u), rU)), another v – u
– 1 encryptions
of O, followed
by Y( 7( +( v), r,,)) and n – v additional
encryptions of O. The distribution
11~’ ‘)’” ‘I” ‘v consists of the concatenation of
the
distribution
fn(~(~(l))),
. . . . f.(r(o(u
- l))),
the
element
f(~(q5(u),
rU)), the distribution
fn(m(o(u
+ l))), . . . . f.(~(o(v
– l))),
the element
f(~(~(
v), r,)),
and the distribution
fn(~(~(
v + l))),

0. GOLDREICHET AL

720

. . . . ~~(~(o(n))).
We first prove that V*, invoked by the circuit, has essentially the same output distribution,
regardless of whether the input distribution
is DI or Dz.
CLAIM 4.2.1

lPr(v*(Hi,

Dy”’-’.)

= (u, v))

Dp”)’-’j

–p@’*(Hi,

= (u, V))l < ;

,

where the probability
is taken over all choices of (u, v) ~ E, z ~ SB, and r,,,
r,e {o, l}n, with uniform probability
distribution.
PROOF.

Assuming

on the

contrary

that

Claim

4.2.1

does

not

hold,

using

an

exist (fixed) u, v, and m such that V*
(with auxiliary input H,) distinguishes D~”’’’m’u’’u’rv from ~~”)’~’’u””,
for r.,
ru~~
{0, l}*.
Noting that these distributions
are probabilistic
encryptions
of two n-element sequences, we derive a contradiction
to Lemma 4.0 (by
❑
constructing a circuit incorporating
V* and Hi).
averaging

argument,

we

infer

that

there

We are now ready to show that C; distinguishes
that of msg~.

the encryption

of msg ~ from

CLAIM 4.2.2
lPr(C~(~(msgl))

PROOF.

Let

~ be

= 1) - Pr(C~(~(rnsg,))

a random

variable

{O, 1}” x {0, 1}”. We use D[
(resp., D~VJ~’u~p).
By the construction
Pr(C~(~(msgl))

of C;,

= 1)1>

~.

uniformly

distributed

upon

Di)

as a shorthand

of

(resp.,

E X S~ x
ll~”’v)>m’’u>’p

we have

= 1) = Pr(V*(~,,

~i)

“ Pr(C~(D~,

= (u> v))

$’) = 11 V*(H,,

D~)

= (U, v)),

Sq x {O, 1}” x {O, 1}”
where & = ((u, v), m, rU, rV) CR Ex
(u, v), (7r(q5(u)), r,,), (7r(d(v)),
rV). Similarly,
Pr(C;(~(msg,

)) = 1) = Pr(V*(lli,

~~)

- Pr(C~(D~,

(1)

and

$’ =

= (~,~)).

(2)

= (u, v))

$’) = II V*(~,,~~)

By Claim 2.1, we have
lPr(V*(H,,
By observing
long as me~

D~)

= (u, v))

that D~’’’T’”u””’”
S~ and rU, r,c~

- Pr(V*(lY,,

D~)

= (u, v))l

is independent of the choice
{O, 1}”, we get

< &.

(3)

of (u, v) ~ E as

(4)

Proofs

that

Yield Nothing

and using the structure
Pr(C~(llj,

Pr(C~(ll~,
Combining

of (P,

~’) = 1 I V*(Hi,

By the construction

Their

Validity

721

V*)

we get

D;)

= (U, V)) = I’r(C~(~~~(H,))

of the simulator,

~’) = 1 I V*(H,,
(1-6)

But

D:)

= 1).

(5)

= 1)

(6)

I-fi))

= 1)

Lemma 4.0, and thus our hypothesis

that

&fv*,

we have

= (u, v))

= pr(c.(~~(~l))

we get

where A is the absolute value of ,he difference between Pr( C~(ll~(
and Pr(C~(IIpv(Hi))
= 1).
❑
Recalling that A > e, Claim 2.2 follows.
Once proved,

Claim 2.2 contradicts

{ ~~x(G)}~,~sC
and {(P, V*)(G)}~=~qC
❑
contradicted. Claim 4.2 follows.
Combining

Claims

are polynomially

1 and 2, the Proposition

follows.

distinguishable

is

❑

Remark
14. The above protocol needs mz rounds. There are two alternative ways of modifiing
the above protocol so to get a constant-round
zeroknowledge protocol for graph 3-colorability.
In both modifications,
the idea is
to have the verifier commit himself to all his queries (i.e., which edge he wants
to check for each copy of the colored graph) before the prover sends to the
verifier the corresponding colored graphs. The two modifications
differ by the
manner in which the verifier commits to his queries. One modification
is based
on the intractability
of factoring or more generally on the existence of clawfree
pairs of one-way permutations (see [48] for definition).
The second modification is based on a relaxation of the definition
of a proof system so that the
prover is also restricted to polynomial-time
(and his “computational
advantage”
over the verifier consists of an auxiliary input). This relaxation, referred to as
an argument (see Section 1.4), is natural in the cryptographic
applications. The
details of the first modification
are currently
being worked out by Oded
Goldreich and Ariel Kahn. Carrying out the sketch of the second modification is
much more involved and is a corollary of a recent work by Feige and Shamir
[28]. Assuming the existence of a bit commitment scheme (the same assumption
as the one made in this paper), they show that any language in NP has a
bounded-round
(computational)
zero-knowledge
argument. Using a stronger
assumption, Brassard et al. independently showed that any language in NP has
a bounded-round
perfect
zero-knowledge
argument [18]. The reader should
note that the three results mentioned above are incomparable:
Goldreich and
Kahn use a specific intractability
assumption and get a (computational)
zeroknowledge proof, Feige and Shamir use a general complexity assumption and
get a (computational)
zero-knowledge
argument, while Brassard et al. use a
specific intractability
assumption (incomparable
to the one of Goldreich and
Kahn) and get a perfect zero-knowledge
argument.
Remark
15. Protocol 4 is zero-knowledge
assuming
function used is nonuniformly
secure. We do not know

that the encryption
whether Protocol 4

722

0. GOLDREICH ETAL

remains zero-knowledge
if the encryption
function
is “only”
(uniformly)
by polynomial-time
algorithms).
A difficulty
secure (i. e., cannot be “broken”
encountered when trying to prove the statement is that the existence of a
sequence of graphs for which the simulator fails does not yield a contradiction
to the security of the encryption function, since there may be no efficient way to
graphs. However,
a weaker statement can be
generate these “problematic”
proven. An interactive proof system will be called “zero-knowledge
on samif it is infeasible to find an instance (i. e., a triple
pleable distributions”
(x, y, z), where x is the common input, y is a private input for the prover and
z is a private input for the verifier) on which the simulator fails. For details,
see Goldreich [39].
Remark 16. Allowing the simulator to be expected polynomial-time
(rather
than strictly
probabilistic
polynomial-time)
is not essential to the zeroknowledge property of Protocol 4, provided that the verifier is also restricted to
be strictly probabilistic polynomial-time.
An easy modification
of the simulation
makes it strictly polynomial-time
without losing much in the quality of the
conversations produced. In the modified simulation, each round is repeated at
most m2 times and the simulator stops in the (highly unlikely) case that all m2
tries where unsuccessful. Thus, using “strictly
polynomial
time”
instead of
“expected polynomial
time ‘‘ in the definition of zero-knowledge,
we also get
that Protocol 4 is zero-knowledge.
3.2 ZERO-KNOWLEDGEPROOF SYSTEMSFOR ALL NP.
The following
theorem
asserts that every language L 6 NP has a zero-knowledge
proof system. We
know of three alternative ways of proving the theorem. The first two ways
consist of incorporating
the standard reductions into a protocol for 3-colorability (either an arbitrary protocol or Protocol 4). A subtle difficulty
arises from
the fact that the cheating verifier has x c L and not only the graph into which x
is mapped. This might assist him when trying to extract “knowledge”
from the
proof that the corresponding graph is 3-colorable. We show that this cannot be
the case by using additional facts. The first alternative is to use the fact that the
reduction is invertible;
while the second alternative is to use the fact that
Protocol 4 has been proven zero-knowledge
using a black-box simulation (and
thus is “auxiliary
input zero-knowledge”
[44, 60]). The third way to prove the
theorem consists of presenting a zero-knowledge
proof system for L directly,
that is, using the nondeterministic
circuit recognizing
L (M. Blum, private
communication).
Here, we use the first alternative.
THEOREM5.
If there exists a nonuniformly
secure encryption
function,
then every language in NP has a zero-knowledge
interactive proof system.
PROOF. (For NP-Completeness
terminology
and results consult [34].) Let
L e NP, and t be the polynomial-time
computable and invertible reduction of L
to 3-Colorability
( G3 C). Namely, t is the composition of the standard reduction of L to 3SAT (obtained by Cook’s proof) and the standard reduction of
3SAT to G3C (presented in [34]). Recall that x e L iff f(x) is 3-colorable. A
zero-knowledge
interactive proof system for L proceeds as follows:
On common input x, each party computes G ~ t(x). The prover uses an
(arbitrary) zero-knowledge
interactive proof system to prove that G is 3-colorable. The verifier acts according to the result of this subprotocol.

Proofs

that

Yield Nothing

But

Their

Validity

723

Clearly, the above protocol constitutes an interactive proof system for L. To
see that the protocol is indeed zero-knowledge,
one should note that t is
polynomial-time
invertible (i.e., there exists a polynomial-time
algorithm
t-1
such that t-1(t(x)) = x). Details follow:
Let V* be an ITM that interacts with P, the prover specified for L. Note
x and initiates
P~~c, the prover
that P applies algorithm
t to the input
V** which interacts with
specified
for G3 C, on t ( x). We consider the ITM
P~~c on common input t(x) and auxiliary input x (i.e., (P~~c, V**( x))(t( x))
which has an auxiliary input, is not of the
= (P, V*)(x)).
Note that V**,
form allowing the application of the fact that P~~c is a zero-knowledge
prover.
Instead, we construct an ITM V*** that on input t(x), first computes x and
then applies V**. (Here, we use the fact that t is polynomial-time
invertible.)
Now, by the fact that P G3C is a zero-knowledge
prover, it follows that there
exists an ikfvx.+ such that { (PG3C, V***)(t(
x))} X,-~ and { Ivfv*..(t(
x))},=~
are polynomial
indistinguishable.
Let
&fv.( X) = ~v,,~( t( x)).
Since
x)), the theorem follows.
❑
equal (PG,C, ~ ***)(t(
(P, V*)(x)
Theorem 6 adapts Theorem 5 to a cryptographic
scenario in which all players
are bounded to efficient computation.
What is needed is to notice that the
standard reductions also provide (implicitly)
efficient
transformation
between
the solutions to the instances.
THEOREM6.
If there exists a nonuniformly
secure encryption
function,
then every language in NP has a zero-kno wledge interactive proof system in
which the prover is a probabilistic
polynomial-time
machine that gets an
NP proof as an auxiliary
input. (An NPproof
of” x ~ L” is a sequence of
nondeterministic
choices leading a fixed NP machine to accept x. Formally, let P~: {0, 1}* x {O, 1}* ~ {O, 1} be a polynomial-time
computable
predicate such that x ~ L iff ] y such that P~( x, y) = 1. Then, y is called
an NPproof
of “x~L”.
)
PROOF.
Let t be as in the proof
of Theorem
5. Let t‘be a polynomial-time
computable function transforming
the sequence of nondeterministic
choices
leading to acceptance of x into a proper 3-coloring of the graph t(x) (i.e., if
P~( x, y) = 1, then t’(y) is a 3-coloring of t(x)). Note that the fact that such a
function is polynomial-time
computable is guaranteed by neither Karp’s nor
Cook’s definition of NP-completeness. 12 Nevertheless, the standard reduction
of L to G3 C, has this property. Recall that the prover in Protocol 4 may be a
probabilistic
polynomial-time
machine that gets a 3-coloring
as an auxiliary
input. It follows that the prover in the protocol presented in the proof of
Theorem 5 may be a probabilistic
polynomial-time
machine that receives as
input x G L and y such that P~( x, y) = 1. (The prover computes G - t(x)
and ~ - t‘( y), and participates in Protocol 4 using the 3-coloring
@ of G.)
❑
The theorem follows.

Remark 17. Another useful strengthening of the results of Theorems 5 and
6, is to prove that the interactive proof systems suggested above are in fact
this means that whatever the
“auxiliary
input zero-knowledge. ” Intuitively,
verifier can efficiently compute after interacting with the prover on input x c L
and having additional
information
z, can be efficiently
computable from x
12Interestingly,
polynomial-time
computable
definition of NP-completeness [56].

transformation

of witnesses is guaranteed by Levin’s

0. GOLDREICHET AL

724

and z (without interacting with anybody). Here the auxiliary input is to the
verifier who, even with it in his possession, cannot extract “knowledge”
from
the prover. It is easy to see that Protocol 4 as well as the protocol presented in
the proof of Theorem 5 are in fact auxiliary-input
zero-knowledge.
For further
details see [44] and [60]. The reason that this extension is important
to
cryptographic
applications is that in typical applications, zero-knowledge
proof
systems are used as subprotocols inside another protocol. The party playing the
role of the verifier may have extra information,
obtained in previous stages of
the protocol, which he might use in the (zero-knowledge)
subprotocol in order
to try to extract “knowledge”
from his counterpart (who plays the prover).
Remark
18. Another issue of importance for practical applications is the
efficiency of a zero-knowledge
proofs ystem, and in particular the efficiency of
a zero-knowledge
proof system for a language L as function of the nondeterministic Turing machine complexity
of L. There are two standard efficiency
measures that may be considered:
complexity
of the proof system (i. e., number of steps
(1) The computational
taken by either or both parties).
complexity
of the proof system. Here one may
(2) The communication
consider the number of interactions,
and/or
the total number of bits
exchanged. ‘3 ( For example, in Protocol 4 the number of interactions is
0( m2) and the number of bits exchanged is 0( nz . m2).)
A nonstandard measure for the efficiency of a zero-knowledge
proof system
is its tightness.
Intuitively,
tightness is the ratio between the time it takes
the simulator to simulate an interaction with the prover and the time the interaction really takes. Formally,
the knowledge-tightness
(tightness)
of a zeroknowledge proof system is a function
t: N ~ N (from integers to integers)
satisfying the following:
For every polynomial-time
ITMs P’*, there exists a
machine A4v. such that { A4v,( x) } ~=~ is polynomially
indistinguishable
from
{(~,

v*)(x)

}XGL, and
time(Mv*(x))
time( V*(x))

< ‘(1 ‘1)’

where time( A ( x)) is the expected number of steps taken by the machine
(resp., lTM) ~ on input x. The definition of zero-knowledge
only guarantees
that the knowledge-tightness
does not have to grow faster than a polynomial.
However, the definition
does not guarantee that the knowledge-tightness
can
be bounded above by a particular
polynomial.
It is easy to see that the
knowledge-tightness
of Protocols 2 and 3 is a constant while the tightness of
Protocol 4 is m (i.e., the number of edges). We believe that the knowledgetightness of a protocol is the most important efficiency measure to be considered, and that it is very desirable to have it be a constant. Furthermore,
using
the notion of knowledge-tightness
one can introduce more refined notions of
zero-knowledge
and in particular constant-tightness
zero-knowledge.
Such refined notions may be applied in a nontrivial manner also to languages in P.
‘3A third measure.theimportanceof which hasbeenrealized only recently (see [55]), is the number of
‘ ‘locked boxes”

to be used in a physical Implementation

of the system.

Proofs

that

Yield Nothing

But

Their

Validity

725

The protocols obtained in Theorems 5 and 6 are not the most efficient
possible. Protocols with constant knowledge-tightness
and a number of iterations which is (merely) super-logarithmic
exist for all languages in NP (assuming, of course, the existence of secure encryption).
Suggestions are due to
J. Benaloh, M. Blum, D. Chaum, R. Impagliazzo,
M. Rabin, A. Shamir and
possibly others. The most efficient suggestion (concurrently
in all measures) is
a protocol that uses the circuit value problem. For more details, see [37].
3.3. APPLICATIONS
dramatic

effect

on

—AN
the

EXAMPLE.
design

of

Owing
cryptographic

to its

generality,

protocols.

Theorem
Let

us

6 has

a

demonstrate

by using Theorem 6 to present a simple solution to a problem that
this point
until recently was considered very complex:
verifiable
secret sharing.
The
more general implications of Theorem 6 are investigated in [42] and [43].
The notion of a verifiable secret sharing was presented by Chor et al. [21],
and constitutes a powerfid tool for multiparty protocol design. Loosely speaking, a verifiable
secret sharing
is an n + 1-party protocol through which a
sender can distribute,
to then receivers,
pieces of a secret s recognizable
through an a priori known “encryption”
f(s).
The n pieces should satisfy the
following three conditions (with respect to 1<1<
u s n):
(1) It is infeasible to obtain any knowledge about the secret from any 1 pieces;
(2) Given any u pieces, the entire secret can be easily computed;
(3) Given a piece, it is easy to verify that it belongs to a set satisfying condition (2).
The notion of a verifiable secret sharing differs from Shamir’s secret sharing
[65] (invented independently by Blakely [13]), in that the secret is recognizable
and that the pieces should be verifiable
as authentic (i.e., condition (3)).
Following
the first implementation
presented in [21], improvements
in effiappeared in [5] and (P. Feldman and S. Micali, private
ciency and “tolerance”
communication).
These solutions are conceptually
complicated,
and rely on
specific properties of particular encryption functions.
Assuming the existence of arbitrary
one-way permutations,
we present a
conceptually simple solution allowing
u = 1 + 1 s n. Our scheme combines
Theorem 6 with Shamir’s (nonverifiable)
secret sharing [65]. Let p be a prime
and p > n. To share a secret s e GF( p) recognizable through r = f(s),
the
sender proceeds as follows: First, the sender chooses at random an l-degree
polynomial over GE’(p) with free term s, and evaluates it in n fixed nonzero
points (these are the pieces in Shamir’s scheme). Next, the sender encrypts the
ith piece using the public encryption algorithm of the ith receiver, and sends all
encrypted secrets to all receivers. Finally, the sender provides each receiver
with a zero-knowledge
proof that the encrypted pieces correspond to the
evaluation of a single polynomial over GF’( p), and that applying f to the free
term of this polynomial yields s. This statement is an NP-statement and hence
can be proven in zero-knowledge.
Recently, Feldman found a more efficient implementation
of verifiable secret
sharing based on the intractability
of factoring [29].
4. Conclusions
The primary motivation for the concept of zero-knowledge
proof systems has
been their potential use in the design of cryptographic
protocols. Early exam-

0. GOLDREICHET AL

726

pies of such use can be found in [23], [30], and [47]. The general results in this
paper allowed the presentation of automatic generators of two-party and multiparty cryptographic
protocols (see [69] and [43], respectively).
Further improvements are reported in [33], [45], and [53].
An elegant model for the investigation of multiparty cryptographic
protocols
was suggested in [12]. This model consists of processors connected in pairs via
private channels. The bad processors have infinite computing resources (and so
using computationally
hard problems is useless). Hence, computational
complexity restrictions and assumptions are substituted by assumptions about the
communication
model. Work in this model is inspired by our results and the
results in [43] but does not use them explicitly.
In particular,
an automatic
generator of protocols for this model, tolerating
up to a < ~ fraction of
malicious processors, has been presented in [12] and [20]. Augmenting
the
model by a broadcast channel, tolerance can be improved to < ~ fraction [62].
(The augmentation is necessary, as there are tasks that cannot be performed if a
third of the processors are malicious (e.g., Byzantine Agreement).) Beyond the ~
bound, only functions of special type (e. g., in the Boolean case only, the
exclusive-OR of locally computed functions) can be privately computed [22].
4.1.
results

A

“POSITIVE”

have

mostly

way

to give

out

a

“positive”

general

results

every

NP-statement)

for

a particular

evidence
use
of

USE

had

OF

NP-COMPLETENESS.

a “negative”

utility:

It was

to the

intractability

of a problem.

of

NP-completeness:

Its

Theorems

5 and

from

Proposition

NP-complete

6 (i.e.,

So

far

NP-completeness

(and

is)

the

most

practical

Here,

we

want

to point

primary

role

zero-knowledge

4 (i. e.,

a zero-knowledge

in
proof

deriving

the

systems
proof

for

system

problem).

We wish to thank Baruch Awerbuch, Manuel Blum, Benny
ACKNOWLEDGMENTS
.
Chor, Shimon Even, Mike Fischer, Shafi Goldwasser,
Dick Karp, Leonid
Levin, Albert Meyer, Yoram Moses, Michael Rabin, Charlie Rackoff, Ron
Rivest, and Mike Sipser for helpful discussions concerning this work.
We are grateful to Josh (Cohen) Benaloh for suggesting the simplification
in
Protocol 3. Special thanks to Gilles Brassard, Ariel Kahn, Hugo Krawczyk,
Eyal Kushilevitz,
Yair Oren, and the anonymous referees for their remarks on
earlier versions of this manuscript.

REFERENCES
The Design and Analysis of Computer
1. AHO, A. V., HOPCRAFT. J E,, AND ULLMAN, J. D.
Addison-Wesley,
Reading.
Mass., 1974.
Algorithms.
2. AIELLO,
W.,
GOLDWASSER,
S., AND HASTAD, J,
On the power of interaction. In Proceedings of
the 27th Annual IEEE Symposium on Foundations
of Computer Science. IEEE, New York,
1986, pp. 368-379.
languages can be recognized in two
3. AXELLO, W , AND HASTAD, J. Perfect zero-knowledge
rounds. In Proceedings of the 28th Annual IEEE Symposium on Foundations
of Computer
Science. IEEE, New York, 1987,pp. 439-448.
C. P. WA and Rabin functions: Certain
4. ALEXI.W.. CHOR,B., GOLDREICH,O., ANDSCHNORR,
parts are as hard as the whole SIAM J. Comput. 17, 2 (1988), 194-209, (Extended abstract m
Proceedings of the 25th Annual IEEE Symposium
on Foundations
of Computer Science.
IEEE, New York, 1984.)
5. ALON. N., GALIL, Z.. AND YUNG,M. A fully polynomial simultaneous broadcast in the presence
of faults, Unpublished manuscript, 1985.

Proofs
6. BABAI,

that
L.

Yield Nothing
Trading

group

Symposium on Theory
pp. 421-429.

But

theory

Their

for

Validity

randomness.

of Computing

In

(Providence,

727

Proceedings of the 17th Annual ACM
R. I., May 6-8). ACM, New York, 1985,

7. BABAI, L., KANTOR, W. M., AND LUKS, E. M.
Computational complexity and classification of
finite simple groups. In Proceedings of the 24th Annual IEEE Foundations
of Computer
Science. IEEE, New York, 1983, pp. 162-171.
8. BABAI, L., AND MORAN, S. Arthur-Merlin
games: A randomized proof system, and a hierarchy
of complexity classes. J. Comput. Syst. Sci. 36, 2 (1988), 254-276.
9. BELLARE, M., MICALI, S., AND OSTROVSKY, R. Perfect zero-knowledge in constant rounds. In
Proceedings of the 22nd Annual ACM Symposium
on Theory of Cotnputing
(Baltimore,
Md., May 12- 14). ACM, New York, 1990, pp. 482-493.
10. BENALOH (COHEN), J. D.
Cryptographic capsules: A disjunctive primitive for interactive protocols. In A. M. Odlyzko, ed., Proceedings of Advances in Cryptology — Crypto86.
Lecture
Notes in Computer Science, vol. 263. Springer-Verlag,
New York, 1987, pp. 213-222.
11. BEN-OR, M., GOLDREICH, O., GOLDWASSER, S., HASTAD, J., KILLIAN, J., MICALI, S,, AND
ROGAWAY, P. Everything provable is provable in zero-knowledge. In Proceedings of Advances
in Cryptology— Crypto88. Lecture Notes in Computer Science, vol. 403. Springer-Verlag,
New
York, 1990, pp. 37-56.
12. BEN-OR, M., GOLDWASSER, S., AND WIGDERSON, A.
Completeness theorems for non-cryptographic fault-tolerant
distributed computation.
In Proceedings
of the 20th Annual
ACM
Symposium on Theory of Computing
(Chicago, Ill., May 2-4). ACM, New York, 1988, pp.
1-1o.
13. BLAKELY, G. R. Safeguarding cryptographic keys. In Proceedings
Conference, vol. 48. AFIPS Press, 1979, pp. 313-317.
14. BOPPANA, R., HASTAD, J., AND ZACHOS, S.
Proc. Lett. 25 (May 1987), 127-132.
15. BRASSARD, G., CHAUM, D., AND CR~PEAU, C.
Comput. Syst. Sci. 37, 2 (1988), 156-189.

of National

Computer

Does CO-NP have short interactive

proofs? hf.

Minimum

disclosure proofs of knowledge.

J.

simulation of Boolean circuits. In A, M.
16. BRASSARD, G., AND CR6PEAU, C. Zero-knowledge
Odlyzko, ed., Proceedings of Advances in Cryptology — Crypto86. Lecture Notes in Computer
Science, vol. 263. Springer-Verlag,
New York, 1987, pp. 223-233.
17. BRASSARD, G., AND CRfiPEAU, C. Non-transitive
transfer of confidence: A perfect zeroknowledge interactive protocol for SAT and beyond. In Proceedings of the 27th Annual IEEE
Symposium on Foundations
of Computer Science. IEEE, New York, 1986, pp. 188-195.
C.,
AND YUNG, M.
Everything in NP can be argued in perfect
18. BRASSARD, G., CRtiPEAU,
zero-knowledge in a constant number of rounds. In Proceedings of the 16th Annual International Colloquium
on Automata
Languages and Programming.
Lecture Notes in Computer
Science, vol. 435. Springer-Verlag,
New York, 1989, pp. 123-136.
19. CHAUM, D.
Demonstrating
that a public predicate can be satisfied without revealing any
information
about how.
In A.
M.
Odlyzko,
ed.,
Proceedings
of Advances
in
Cryptology–
Crypto86.
Lecture Notes in Computer Science, vol. 263. Springer-Verlag,
New
York, 1987, pp. 195-199.

20. CHAUM, D., CR6PEAU, C., AND DAMGARD, 1. Multiparty unconditionally
secure protocols. In
Proceedings of the20th Annual ACM Symposium on Theory of Computing
(Chicago, Ill.,
May2-4).
ACM, New York, 1988, pp. 11-19.
21. CHOR, B., GOLDWASSER, S., MICALI, S., AND AWERBUCH, B. Verifiable
secret sharing and
achieving simultaneity in the presence of faults. In Proceedings of the 26th Annual IEEE
Symposium on Foundations
of Computer Science. IEEE, New York, 1985, pp. 383-395.
22. CHOR, B., AND KUSHILEVITZ, E. Azero-one
law for Boolean privacy. In Proceedings of the
21st Annual ACM Symposium on the Theory of Computing
(Seattle, Wash., May 15-17).
ACM, New York, 1989, pp. 62-72.
23. COHEN, J. D., AND FISCHER, M. J. A robust and verifiable cryptographically
secure election
scheme. In Proceedings of the 26th Annual IEEE Symposium on Foundations
of Computer
Science. IEEE. New York. 19S5, pp. 372-382.
The complexity of theorem-proving
procedures. In Proceedings
of the 3rd
24. COOK, S. A.
Annual ACM Symposium on the Theory of Computing
(Shaker Heights, Ohio, May 3-5).
ACM, New York, 1971, pp. 151-158.
25. DIFFIE, W., AND HELLMAN, M. E.
IT-22, 6 (Nov. 1976), 64-654.

New directions in cryptography.

IEEE

Trans. Znf. Theory,

728

0. GOLDREICHET AL

A randomized protocol for signing contracts.
26. EVEN, S., GOLDREICH, O., AND LEMPEL, A.
Commun.
ACM28,
6 (June 1985),637-647.
27. FEIGE, U., FIAT. A., AND SHAMIR, A.
Zero-knowledge
proofs of identity. J, Crypto.
1, 2
(1988), 77-94.
Zero-knowledge proofs of knowledge in two rounds. In Proceed28. FEIGE, U., AND SHAMIR, A.
ings ofxldvances
in Cryptology —Crypto89.
Lecture Notes in Computer Science, vol. 435,
Springer-Verlag,
New York, 1990, pp. 526-544.
29. FELDMAN, P. A practical scheme for verifiable secret sharing. In Proceedings of the 28th
Annual IEEE Symposium on Foundations
of Computer Science. IEEE, New York, 1987, pp.
427-438.
30. FISCHER, M., MICALI, S., RACKOFF, C.. AND WITTENBERG, D. K.
equivalent to factoring. Unpublished manuscript, 1986.

An oblivious

transfer protocol

The complexity of perfect zero-knowledge. In Proceedings of the 19th Annual
31. FORTNOW, L.
ACM Symposium on the Theory of Computing
(New York, N. Y., May 25-27). ACM. New
York, 1987, pp. 204-209.
A private interactive test of a Boolean predicate and
32. GALIL, Z., HABER, S., AND YUNG, M.
minimum-knowledge
public-key cryptosystems, In Proceedings
of the 26th Annual
IEEE
Symposium on Foundations
of Computer Science. IEEE, New York, pp. 360-371.
33. GALIL, Z.. HABER, S., AND YUNG, M.
Cryptographic computation: Secure fault-tolerant protocols and the public-key
model. In C. Pomerance, ed., Proceedings
of Advances
in
Cryptology— Crypto87.
Lecture Notes in Computer Science, vol. 293. Springer-Verlag,
New
York, 1987, pp. 135-155.
34. GAREY, M. R., AND JOHNSON,D. S. Computers
NP-Completeness.
Freeman, New York, 1979.

and Intractability:

35. GAREY, M. R., JOHNSON, D. S., AND STOCKMEYER, L.
problems. Theoret. Comput. Sci. 1 (1976), 237-267.
36. GOLDREICH, O. A zero-knowledge
Unpublished manuscript, 1985.

proof

A Guide to the Theory of

Some simplified

that a two-prime

moduli

37. GOLDREICH, O. Zero-knowledge and the design of secure protocols
TR-480. Comput. Sci. Dept., Technion, Haifa, Israel, 1987.

NP-complete

is not a Blum

(an exposition).

graph
integer.

Tech. Rep.

38. GOLDREICH, O. Towards a theory of average case complexity
Comput. Sci. Dept.. Techruon, Haifa, Israel, 1988.

(a survey), Tech. Rep. TR-531.

treatment of encryption
39. GOLDREICH, O. A uniform-complexity
TR-568. Comput. Sci. Dept., Technion, Haifa, Israel, 1989.

and zero-knowledge.

On the composition of zero-knowledge
40. GOLDREICH, O., AND KRAWCZYK, H.
Proceedings of the 17th Annual
International
Colloquium
on Automata
Programming.
Lecture Notes m Computer Science, vol. 443. Springer-VerIag,
pp. 268-282.

Tech. Rep.

proof systems. In
Languages and
New York, 1990,

Interactive proof systems: Provers that never
41. GOLDREICH, O., MANSOUR, Y., AND SIPSER, M.
fail and random selectlon. In Proceedings of the 28th Annual IEEE Symposium on Foundations of Computer Science. IEEE, New York, 1987, pp. M9-461.
O., MICALI,
S., AND WIGDERSON, A.
Proofs that yield nothing but their validity and
42. GOLDREICH,
a methodology of cryptographic protocol design. In Proceedings of the 27th Annual IEEE
Symposium on Foundations
of Computer Science. IEEE, New York, 1986, pp. 174-187.
43. GOLDREICH, O., MICALI, S., AND WIGDERSON, A.
How to play ANY mental game or a
completeness theorem for protocols with honest majority. In Proceedings of the 19th Annuai
ACM

44.
45.

46.
47.
48.

Symposium

on

Theory

of

Computing

(New

York,

N. Y.,

May 25 –27).

ACM,

New York,

1987, pp. 218-229.
GOLDREICH,
O , AND OREN, Y.
Definitions and propermes of zero-knowledge proof systems.
Tech. Rep. TR-6 10. Comput. Sci. Dept., Technion, Haifa, Israel, 1990.
R. How to solve any protocol problem—An efficiency improveGOLDREICH, O., AND VAINISH,
ment. In C. Pomerance, ed., Proceedings
of Advances in Cryptology— Crypto87.
Lecture
Notes in Computer Science, vol. 293. Sprmger-Verlag,
New York, 1987, pp. 73-86.
GOLDWASSER, S., AND MICALI, S, Probabdistic encryption.
J. Comput.
Syst. Sci. 28, 2
(1984), 270-299.
GOLDWASSER,S., MICALI, S., AND RACKOFF, C. The knowledge complexity of interactive proof
systems. SIAM J. Comput.
18, 1 (1989), 186-208.
GOLDWASSER,
S.,
MICALI,
S.,
AND
RIVEST,
R. L.
A digital signature scheme secure against
adaptive chosen-message attacks. SIAM J. Comput. 17, 2 (1988). 281-308,

Proofs

that

Yield Nothing

But

Their

Validity

729

49. GOLDWASSER, S., AND SIPSER, M.

Private coins versus public coins in interactive proof systems.
In Proceedings of the 18th Annual A CM Symposium on Theory of Computing
(Berkeley,
Calif., May 28-30). ACM, New York, 1986, pp. 59-68.
Comput. Res. Lab.,
50. GUREWCH, Y. Average case completeness. Tech. Rep. CRL-TR-03-88,
Univ. Michigan, Ann Arbor, Mich., 1988.
51. H~STAD, J. Pseudo-random generators under uniform assumptions. In Proceedings of the 22nd
Annual ACM Symposium
on Theory of Computing
(Baltimore, Md., May 12- 14). ACM.
New York, 1990, pp. 395-404.
52. IMPAGLIAZZO, R., LEVIN, L. A., AND LUBY, M. Pseudorandom generation from one-way
functions. In Proceedings of the 21st Annual ACM Symposium on Theory of Computing
(Seattle, Wash., May 15- 17). ACM, New York, 1989, pp. 12-24.
53. IMPAGLIAZZO. R., AND YUNG, M. Direct minimum-knowledge
computations. In C. Pomerance,
ed., Proceedings of A dvances in Cryptology— Crypto87. Lecture Notes in Computer Science,
vol. 293. Springer-Verlag,
New York, 1987, pp. 40-51.
54. KARP, R. M. Reducibility among combinatorial problems. In R. E. Miller and J. W. Thatcher,
eds. Cotnplexity
of Computer Computations.
Plenum Press, New York, 1972, pp. 85-103.
55. KILIAN, J., MICALI, S., AND OSTROVSKY, R. Minimum resource zero-knowledge proofs. In
Proceedings of the 30th Annual IEEE Symposium
on Foundations
of Computer Science.
IEEE, New York, 1989, pp. 474-479.
56. LEVTN, L. A. Universal search problems. Prob. Pere. Znf. 9 (1973), 115-116. Translated m
Prob. Inf. Trans. 9 (1973), 265-266.
57. LEVIN, L. A. Average case complete problems. SIAM J. Comput. 15 (1986), 285-286.
58. NAOR, M. Bit commitment using pseudorandomness. In Proceedings of A dvances in Cryptol-

New York,
ogy— Crypto89.
Lecture Notes in Computer Science, VO1. 435. Springer-Verlag,
1990, pp. 128-137.
59. NISSAN, N., AND WIGDERSON, A. Hardness vs. randomness. In Proceedings of the 29th
Annual IEEE Symposium on Foundations
of Computer Science. IEEE, New York, 1988, pp.
2-11.
60. OREN, Y. On the cunning power of cheating verifiers: Some observations about zero-knowledge
proofs. In Proceedings of the 28th Annual IEEE Symposium on Foundations
of Computer
Science. IEEE, New York, 1987, pp. 462-471.
61. RABIN, M. O. Digitalized signatures and public-key functions as intractable as factorization.
Tech. Rep. MIT/LCS/TR-2
12. MIT, Cambridge, Mass., 1979.
62. RABIN, T., AND BEN-OR, M. Verifiable secret sharing and multiparty protocols with honest
majority. In Proceedings of the 21st Annual ACM Symposium
on Theory of Computing
(Seattle, Wash., May 15- 17). ACM, New York, 1989, pp. 73-85.
63. RIVEST, R. L., SHAMIR, A., AND ADLEMAN, L. A method for obtammg digital signatures and
public-key cryptosystems. Commun.
ACM 21, 2 (Feb. 1978), 120-126.
64. SCHOENING,U. Graph isomorphism is in the low hierarchy. In Proceedings of the Symposium
on Theoretical Aspects of Computer Science (STA CS 87). Lecture Notes in Computer Science,
vol. 247. Springer-Verlag,
New York, 1987, pp. 114-124.
65. SHAMIR, A. How to share a secret. Commun. ACM 22, 11 (Nov. 1979), 612-613.
66. STOCKMEYER,L. J. The polynomial-time hierarchy. Theoret. Comput. Sci. 3 (1977), 1-22.
67. TOMPA, M., AND WOI,L, H. Random self-reducibility and zero-knowledge interactive proofs of
possession of information. In Proceedings of the 28th Annual IEEE Symposium on Foundations of Computer Science. IEEE, New York, 1987, pp. 472-482.
68. YAO, A. C. Theory and applications of trapdoor functions. In Proceedings of the 23rd Annual
IEEE Symposium on Foundations
of Computer Science. IEEE, New York, 1982, pp. 80-91.
69. YAO, A. C. How to generate and exchange secrets. In Proceedings of the 27th Annual IEEE
Symposium on Foun~ations
of Compute~ Science. IEEE, New Y~rk~ 1986, pp. 162-167.
RECEIVEDAPRfL 1988; REVISEDMARCH 1989. SEPTEMBER

1989, AND

Journal of the Assoaanon

MARCH

fm Cmnputmg

1990; ACCEPTED

Mxhmay,

MAY

1990

VO1 38, NO 3, July 1991

