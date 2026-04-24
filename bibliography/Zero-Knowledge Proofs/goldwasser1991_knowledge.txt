The KnowledgeComplexity of Interactive Proof-Systems
(ExtendedAbstract)
ShafiGoldwasser SilvioMicali CharlesRackoff
MIT
MIT
Universityof Toronto
1. Introduction
In the first part of the paper we introduce a
new theorem-provingprocedure,that is a new eflcierlt method of communicafirrg a proof: Any such
method implies,directly or indirectly, a definition of
proof. Our “proofs” arc probabilisticin nature. On
input an II-bits long statement,we may erroneously
be convincedof its correctnesswith very smallprobability, say, -$, and rightfblly be convincedof its
correctnesswith very high probability, say, 1 - -.1
2”

Our proofs are Clreruclhre.To eficicntly verify the
correctnessof a statement,the “recipient” of the
proof must activelyaskquestionsand receiveanswers
from the “prover”.
In the secondpart of the paper,we addressthe
following question:
How much knowledge should be communicated
fir proving a theorem T?
Certainly enough to see that T is true, but usually

much more. For instance,to prove that a graph is
Hamiltonianit sufficesto exhibit an Hamiltoniantour.
This appears,however, to contain,much additional
knowledge than the single bit “HamiltonianInonHamiltonian”.
We give a computationalcomplexitymeasureof
knowledge and measuretic amount of additional
knowlcdgccontainedin proofs.
Permission to copy without fee all or part of this material is granted
provided that the copies arc not made or distributed for direct
commercial advantage. rhe ACM copyright notice and the title of the
publication and its date appear, and notice is given that copying is by
permission of the Association for Computing Machinery. To copy
otherwise, or to repubhsh. requires a fee and/or specific permission.
@

1985 ACM 0.89791-l51-2/85/005/0291

$00.75

We propose to classify languagesaccordingto the
amount of additional knowledge that must be
relcascdfor provingmembershipin them.
Of particularinterestis the casewherethis additional knowledgeis essentially0 and we show that is
possibleto interactivelyprove that a number is quadratic non residue mod m releasing0 additional
knowledge.This is surprisingas no efficient algorithm
for deciding quadraticrcsiduositymod m is known
when m’s factorizationis not given. Moreover, all
known NP proofs for this problemexhibit the prime
factorizationof tn. This indicatesthat adding interaction to the provingprocess,may decreasethe amount
of knowledgethat must be communicatedin order to
provea theorem.

2. InteractiveProof Systems
Much effort has been previously devoted to
make precisethe notion of a theorem-provingprocedure, NP constitutesa very successfulformalization of this notion. Looselyspeaking,a theoremis in
provablein NP if its proof is easyto verify onceit has
been found. Let us recall Cook’s [C] (and independently Letin’s [t]) influential definition of NP in this
light.
The NP proof-systemconsistsof two communicating Turing machinesA and a : respectively,
the prover and the verifier. The prover is
exponential-time.the verifier is polynomial-time.
Both A and f? arc dctcrministic,reada common
input and interactin a veryelementaryway. On
This research was supponcd in part by 1B.M Young Faculty
Development Award dated Scptcmber 1983. IBM Young
Fzrulty
Dcvelopmcnt Award dated Scptcrnber 1984, and
NSF grant DCR-8413577

input a string .Y, belongingto an NP language
L, A computesa string y (whose length is
bounded by a polynomial in the lcngtb of X)
and writesy on a specialtape that B can read.
B then checksthat fLib)=x (where f, is a
polynomial-timecomputablefunction relativeto
the language1,) and, if so, halts and accepts.
This processis illusuatcdin figure 1.

Fig. 1: The Nf proof-system(‘)
What is intuitively required From a theoremproving procedure? First that it is possible to
“prove” a true theorem.Sccomd,that it is impossible
to “prove” a false theorem.Third, that communicating a proof shouldbe -.cfhcient.in the following sense.
It doesnot matter how long must the provercompute
during the proving process,but it is essentialthat the
computationrcquircd from tbc verifier is easy.
Theorem-proving procedures differ in the
underlying definition of a proof. The notion of a
proof, like the notion of a computation,is an intuitive
one. Intuition, however,may alndmust be formalized.
Computability by (detcrminist.ic)Turing machinesis
an elegantexampleof formalizationof‘thc intuitive
conceptof a computation. Each formalization.however,cannotentirely captureour original and intuitive
notions,exactlybecausethey are intuitive. Following
our intuition, probabilistic algorithms [R] [SS] are
meansof computing,though they arc not in the previous formal model. Similarly, NP is an elegantformalization of the intuitive notion of a theorem---------___-_____
(9 (By ---->
we denote ii read/write head. by
---R

->

a read-only head and by ---M-‘->

a write-only head)

292

provingprocedure.Howcvcr,NP only capturesa particular way of communicatinga proof. It dealswith
those proofs that can be “written down in a book”.
In this paper we introduce interactiveproof-systems
to capture a more gcncral way of communicatinga
proof. We deal with those proofs that can be
“explained in class”. Informally, in a classroom,the
lecturer can take full advantageof the possibilityof
interacting with the “recipients” of the proof. They
may ask questionsat crucial points of the argument
and receive answers.This makes life much easier.
Writing,down a proof that can be checkedby everybody without interaction is a much harder task. In
somesense,becauseone hasto answerin advanceah
possiblequestions.Let us now formally set up the
propercomputationalmodel.
2.1 InteractiveTuring machinesand interactivepairs
of Turing machines

&kyygK

T.

Fig,,2: an interactivepair<f Turing machines
An interactiveTuring machine(ZTIIf) is a Turing machinewith a read-onlyinput tape,a work tape
and a random tape. The random tape containsan
infinite sequenceof random bits. The random tape
can be scannedonly from left to right. When we say
that an interactivemachineflips a coin we meanthat
it readsnext bit in its own randomtape. This tape is
the only sourceof randomnessfor the machine.In
addition an interactivemachinehas a read-onlycommunication tape and B write-only communication
tape.The head writing on the latter tape movesonly
from left to right, writesonly on a blank cell and cannot moveto the right without writing.
Two ITM’s A and B form an brterucrivepair of

Turirrg rtmhiws(/l

1)
2)

J) by ,I.13,. , ,::

letting A and B share the same input tape and

letting n’s write-only communication tape bc
A’s read-only communication tape and vice
versa.
The interactive pair (A ,B) is ordered and machine 8
starts rhc computation. The machines take turns in
being active. When, say, A is active it can perform
internal computation, mad and write on the proper
tapes and send a mcssagc to B by writing on the
appropriate communication tape. The ith messageof
A is the entire string that A writes on the communication tape during its ith turn. The ith mcssagcof B
is similarly defined. Either machine can, during its
turn, terminate the computation of the pair. Consider
a computation of (A .B) on input x. Let the computation consist of II turns and let a, be A *s ith message
and b, be B’s ith message.Thea the lext of rhe comis defined to be the scqucncc
pulalion
{b l,Ul, . . b ,b,,u,,). (a, is empty if it is 13 that halts the
computation of (A ,B) in its n th turn). The text of all
possible computations of A and B on input x will be
of re!cvance to our analysis and it will bc dcnotcd by
(A .B)[x]. This set has the structure of a probability
space in the natural way. The probability of each
computation in (A ,B)[x] is taken over the coin tosses
of both machines.
2.2 lntcractivc proof-systems

Let I,ClO.l}’
be a language and (A ,B) an
interactive pair of Turing machmes. We say that
(A ,B) is an inreraclive proofsysrem for L if A (the
prover) has infinite power, B (the ver$er) is polynomial time and they satisfy the following properties.
1) For any x EL given as input to (A ,B), B halts
and accepts with probability at least 1-s

2)

for

each k and sufficiently large n.
For any ITM A’ and for any,rx not in L given
as input to (A ‘,B), B accepts with probability at
most .L,~ for each k and sufficiently large n.

Here 11denotes the length of the input and the probabilitics arc taken only over B’s own coin tosses.

Condition 1 csscntially says that. if xEL, there
exist a way to easily prove this fact to B that succeeds
with ovcrwhclming probability. This way is A’s algorithm. In other words, it is possible to prove a true
thcorcm so that the proofs arc easily verified (B is
polyllomial-tilnc). Condition 2 says that, if x not in
L, thcrc exist no strategy, for convincing B of the
contrary, that succeeds with non negligible probability. In other words, no one can prove a false theorem.
In fact, B needs not to trust (or to know) the machine
with which it is interacting. It is enough for B to
trust the randomness of its own coin tosses. Notice
that, as for NP, the emphasis is on the “yesinstances”: if a string is in the language we want to
show it, if it is not WCdo not care. Let us consider an
example of an interactive proof-system.
Example 1: Let Zl dcnotc the set of integers
bctwccn 1 and Tutthat arc relatively prime with m.
An elcmcnt afZi is a quadruhc residue mod n if
a =x2 mod tn for some x CZi. clsc it is a quadruric
nonresidue. Now let I. -7{()~ .x) l x EZZ is a quadratic
nonrcsiduc }. Notice that IAENP: a prover needs only
to compute the factorization of ~1 and send it to the
verifier without any further interaction. nut looking
ahead to zero knowledge proof-systems, WCwill consider a more interesting interactive proof-system for
L. The vcrificr B begins by choosing n = lnr 1 random mcmbcrs of Zi, (rl,r2 ,...,r”}. For each
i, l<isn,
hc flips a coin, and if it comes up heads
hc forms r, = r,’ mod tn, and if it comes up tails he
forms ~,=x-r,~ mod m. Then B sends fl,fz,...,r, to A.
The prover, having unrcstrictcd computing power,
finds which of the r, arc quadratic rcsiducs, and uses
this information to tell B the results of his last n coin
tosses.If this information is correct, B accepts.
Why dots this work? If (m,x)EL, then A
correctly predicts all last II coin tossesof B who will
dcfinitcly accept. If (m.x) not in L. then the {Ii} are
just random quadratic rcsiducs. and the prover will
respond correctly in the last part of the computation
with probability $.

In fact. for each of the last n

coin tosses of B, A has probability exactly l/2 of
guessing it correctly.

that the inclusion is a strict one. We also believe that
our “intcractivc hierarchy” dots not collapse, i.e. that
Il’(k] is strictly contained in fl’[k +l]. In any case,
intcractivc proof-systems arc the right proof model to
both analyze and rcducc the knowlcdgc complexity of
a language. Next section is dcvotcd to the discussion
of this more subtlc notion. Let us also mention Papadimitriou’ [P] “games against nature”. This is an
elegant characterization of PSPACE, though not an
efficient :method of communicating a proof.

A more complex intcractivc prloof-system for L. that
releases essentially 0 additional knowlcdgc, can be
found in section 4.2.
2.3 Intcractivc Complrxity Classes
We dcfinc IP, Interactive Pol)?totttial-ritt~e,to be
the class of languages possessingan intcractivc proofsystem. In this case we may also say that I, is intcractively provable. To cmphasizc that the prover has
unlimited power, we may write IP, for If. To closer
analyze the role of the prover, we dcfmc If”,,,, to be
the class of languages having an interactive proofsystem whose prover runs in time T(n). To focus on
the role of mtcmction, we Ict fPLf(n)] denote the
class of languages having a proof-system that, on
input a string x of length tl, halts within f(n) turns.
Here f is a non decreasing function from natural
numbers to natural numbers.
Interactive proof-systems should be contrasted
with the “Arthur-Merlin” games of Babai [B]. In
those games Merlin plays the role of n and Arthur
the role of R. The big difference is that Merlin sees
all results of Arthur’s coin tosses.This allows Babai to
prove that arbitrary interaction lis not necessaryin his
framework: it is suficicnt to al’low Arthur to talk to
Merlin and have Merlin respo:nd; at least as long
they alternate a constant number of times. Actually
Arthur’s message to Merlin consists exactly of the
sequence of its own coin tosses. (See figure 3).
1N Pu-r

fig. 3: The Arthur-Merlin proof-system
If membership in a language L can bc proved by an
Arthur-Merlin game (LfAN)
then, for any random
oracle 0, I; GNP0 with probability 1. It is apparent
that AMCIP (actually, AMcf.P[l]) and we bclicvc

3. K~~owledge
Complexity
Communication is a tool for transferring or
exchanging knowledge. Knowlcdgc has received a lot
of attention in a model-theoretic framework [FHV],
[HM]. In this context, roughly speaking,
1)

All parricipanrs are considered to have i&ire
cotqxuing power. (E.g. each participant “knows”
all logical conscqucnccsof the information in his
hands) and
2)
The objecr Ihey rty lo “know berfer” is not an
availablepublic input. (Rather some event occurs
that is witnessed or noticed by w
but not 4
participants. To give an elementary example,
one participant flips a coin and tells the outcome
to a few others who now “know” it. The
remaining participants do not “know” what the
outcome was and they have to decide between
two possible worlds: one in which “heads” came
up and one in which “tails” came up).
This scenario may not bc realistic in many practical
contexts. In physics. for example, scientists have
bourtded <resourcesand the object they try to know
better is a public ittpur: nature. Our point of view is
that
1) Knowledge is a norion relafive IO a spectftcmodel
of cotnputa!iotJ wirh specifiedcottlpuring resources
and
2) One studies and gains knowledge about available
objecrs
In this paper WCmcasurc the amount of knowledge
that can be gained from a communication by a participant with polynomially bounded resources and

294

invcstigatc how much knowledge must bc communicatcd for proving a thcorcm!‘) Our computational
complexity measure of knowlcdgc is. howcvcr. of
wider applicability. For example, as skctchcd in scction 6. ir constitutes a powerful tool for dcvcloping a
mathematical theory of cryptographic protocols, The
following concept will be crucial to our analysis.

3.1 Degreesof distinguishabilityfor probabilitydistributions
Let I be an infinite set of strings and c a positive constant. For each x EI with length n, Ict lI, be
a probability distribution over the II’-bit strings.
Then w Bay ti i&~tr.(IT~ 1u E8) is a I-c-ensemble.
By saying that l-I is an erlsembleor a I-eruemble we
mean, respectively, that there exist I and c or simply
c such that iI is a I-c-ensemble.
A disrillguishet is a probabilistic polynomial-time
algorithm D that on input a string s outputs a bit b.
Let II,={Il,,,IxE1}
and l12={lI~,xIxEZ} bc two
I-c-ensembles. Let p$ denote the probability that D
outputs 1 on input a 1x 1‘-bit long string randomly
selected with probability distribution lI,,X. Symmetrically, pf’* denotes the probability that D outputs 1 on
input a Ix (‘-bit long string randomly selected with
probability distribution II,,. Let p:N+[O,l]. . We say
that the ensembles II, and n2 arc al most p
disrirlguishable if for all distinguishers D,
1~:~ -p$

I < p( I x I) + &

for all k and suf’fi-

ciently long X.
Of particular interest will be the notion of at
most O-distinguishability (or indistinguishability). In
this case the two ensembles are “equal” with respect
to any polynomial-time computation. In section 4.2
we will prcscnt an interesting example of indiscinguishablc cnscmblcs. In this example. the n,,, and
172,Xarc indistinguishable in a stronger scnsc. In fact
the probability that they assign to each 1x (‘-bit
string is identical except for a set of stings strings
------------______
(2) Our definitions may be given with respect to any time
bound. but wc restrict our attention to polynomial-time both
to Amplify the matter a bit and because we believe that it
constitutes the most important case.

295

1
whose total probability dots not exceed -24”l

for

some constant d bctwccn 0 and 1. Such strong indis
tir.guishability is a luxury not always available and, in
any case. is ?ot ncccssaryto dcvclop our theory.
Notice that our distinguishcrs are Fed with a single I x I’-bit string at a time. One may consider dis
tinguishcrs that arc fed with more strings of length
I x I c at the same time. In this case, if two ensemble
are O-distinguishable,they will remain undistinguishable (as long “more” < poly ( I x I )). If the two ensembles arc at most p-distinguishable, they may remain at
most p-distinguishable or the probability of “distinguishing” them may become much higher. (This
plays a role for deciding whether a certain cryptographic protocol may be played securely more than
once using the same secret key).
Related notions of indistinguishability. have
been previously considered in [GM] in the context of
probabilistic encryption and then in [y] and [GGMJ in
the context of pseudo-random number generation.

3.2 The knowledgecomputablefrom a communication
Which communications convey knowledge?
Informally, those that transmit the output of an
unfeasible computation. a computation that we cannot
perform ourselves. For example, if A sends to B n
random bits, this will be 11 bits of information. We
would say this contains no knowledge, however,
because B could generate random bits by himself.
Similarly, the result of any probabilistic polynomialtime computation will not contain any knowledge.
With this in mind we would like to derive an upper
bound (exprcsscd in bits) for the amounf of
knowledge that a polynomially bounded B can
extract from a communication.
First a bit of notation. Notice that any probabilistic Turing machine Al gcneratcs the ensemble
wl=Mxl3,cl. where ,U[x] dcnotcs the set of possible outputs of Al (on input xEI) taken with the
probability distribution induced by Al’s coin tosses.
Similarly, we will dcnotc by (n.B)l] the cnscmble
associated to an interactive pair of Turing machines

(n,B).
tion.

WC arc now ready to introduce our dclini-

Dclinition: I.ct (A J) be an intcractivc pair of
Turing machines and I the set of its inputs. Ict B be
polynomial-time and f :N-+N bc non dccrcasing. WC
say that A corwmnica/es al IUOSIf (II) bits of
kjlowledge fo B if there exists a probabilistic
polynomial-time machine A4 such that the Iensembles ,\!I] and (A ,B)l] are at most 1 -A-2f (n)
distinguishable. WC say that A conmmicates at-most
f(rr ) bifs of k now1edge if for all polynomial-time
ITM’s B’ A communicates at most for) bits of
knowledge to B’.
Remark 1: Assume AI, on input x, tries to select
a string “as undistinguishable as possible” from a
computation randomly sclectcd in (A ,O)[x]. Note
that in this attempt no information is hidden from Jl:
A ‘s program, R’s program and x arc all inputs of M.
A{ may have “built in” the description of A. This,
however, is not of great help, as A ‘s algorithm may
be absolutely inefficient.
A non mathematical discussion: Let us try to
illustrate the above definitions. Assume that a crime x
has happened, B is a reporter and ,4 a police officer.
A understands the rights of the press but, for obvious
reasons, also tries not to communicate too much
knowledge. Should reporter B call the police officer
n to know more about x? It depends. If he has probability csscntially equal to 1 of gcncrating at home,
in front of his typewriter, the “same” conversations
about this specific
x that he might have with A, he should not bother
to call. A will give him essentially 0 knowledge about
x. If, instead. say, he may gcncrare an honest conversation about x with probability lr’4 (i.e. what he generates is at most 3/4-distinguishable from the “real”
conversations), then the officer may tell him something that he dots not know. Tlhis knowledge however, will not exceed two bits and may not bc of the
“useful” kind! Still, it may pay off to call. If. finally,
B has only chance 1 in 2’O”of generating the possible
conversations about x with the police ofliccr, then A
is a real gossiper and B should rush to the telephone!

Assume now that B is so news-hungry that is ready to
bccomc dishonest during the phone conversation, i.e.
hc is ready to transform himself to B’. Dcspitc this, if
the officer is so skillful to bc one who communicates,
say, at most 2 bits of knowledge, no matter how tricky
questions 8’ asks and how much he cheats, he will
not get out of him more than two bits about x. (Here
WC arc implicitly assuming that a cheating reporter
still remains a polynomial-time one!)
Example 2: Consider the ITM (A ,B) of example
1. Restrict its inputs only to the strings in L. Then
A communicates at most 0 bits of knowledge to B.
In fact, them exists a probabilistic polynomial-time
machine AI such that (for those inputs) generates
exactly the same cnscmblc that (,4 ,B) does. Essentially, Al can simulate B. as B is polynomial-time,
and simulates A by_looking at R’s coin tosse3as follows. When U sends r, computed by squaring r,, M
will answer “quadratic residue”. When B sends r,
computed by squaring r, and then multiplying it by x,
A,/ answers “quadratic nonresidue”.
Notice, however, that, if the problem of deciding quadratic rcsiduosity is not in probabilistic polynomialtime, A does
.- not communicate at most 0 bits of
knowledge. in fact, some machine B’, interacting with
A, may decide to create the Ii’s in a different way.
For instance, such a B may send the, sequence of
integers r, - i and therefore receive an answer about
their quadratic residuosiry that it may not be able to
compute by itself.
An interesting ITM A that communicates at most 0
bits of knowledge may be found in section 4.2.
3.3 The knowledge complexity of a Isnguage
How much knowledge should be communicated
to provide a proof of a tbcorem T? Certainly enough
to verify that T is true. Usually, much more. For
example. to prove that a certain aC2; is a quadratic
rcsiduc, it is sufficient to, communicate an x such that
a =x2 mod tn. This communication, however, contains more knowledge than just the fact that P is a
quadratic residue. It communicates a square root of
a. We intend to measure the additional knowledge
that a prover gives to a verifier during a proof, and

investigate.
whcther:this,additionalknowledgema) bc
essentially0.
Definition: Let L bc a languagepossessing
an
intcractivcproof-system(A ,B). Let f: N --)N be non
decreasing.WCsay that L has knowledge cotnplexily
f(n) if, when restrictingthe inputs of (R,R) to the
strings in L A communicatesat most f(n ) bits of
knowledge.We denotethis fact by L EKC( f(n) ).
.4n informaldiscussion.Let us recallthat WCarc
concentratingon the “yes-instances”.When a string
x is not in the languagethe prover“givesup” and WC
do not mcasurc knowledge. When, instead,xEL,
what is the verifier’s point of view at the end of an
intcractlveproof? First, it is “convinced” (correctly
with overwhelmingprobability) that x EL. This was
the goal of the proof-systemin the first place.Second,
it possesses
the text of the entire computationwith
the prover on input X. This text, has been used to
verify that xEL, but dots not contain more than
f(n) bits of additional knowledge. In fact, on input
xEI,, we are guaranteedto be able to easilygenerate
such texts with probability distribution ak most (l-&)-distinguishable from the “real” texts,no maftcr
with which machineB’ A is interacting.The special
caseL EKC (0) is of particular interest. In this case,
by interactingwith A and from the text of the computation, B can verify that x EL , but, with respectto
polynomial-timecomputation,the text is irrclcvantfor
any other purpose,no matter with which B’ A is
interacting.In fdct,on input a guaranteedxEL, such
texts can be easily selectedwith essentialiythe right
probabilitydistributionand without A.
We believethat.knowledgecomplexityis one of
the fundamental parameters of a language or,
equivalently, of a theorem-proving procedure.
Theorem-provingproceduresare intended to communicateknowlcdgcand it is very natural to classify
them accordingto the amount of knowledge they
communicate.
Note that knowledgecomplexityis also defined
for NP proof-systemsas they are a specialtype of
interactiveproof-system.However, their knowledge
complexitytendsto be very high.

237

A rvcryimportantapplicationof knowledgecomplcxity is that it cnablcsprovingcorrectness
of cryptographicprotocolsin a modular way(seesection6).
4. Languagesin KC(O)
Every languagein P or RP or BPPhas trivially
knowledgecomplexity0. If L is not in probabilistic
polynomial-time, no NP proof-systemfor L can
release0 additionalknowledge. However,there may
bc a more interactiveproof-systemfor L that does
relcasc0 additional knowledge. A natural question
arises, Do meaningful examples of languagesin
KC(O) exist or is KC(O)-BPPa fancy way to define
the empty set?A similar questioncould bc askedfor,
say, RP. Namely, is RP-P a fancy name for the
empty set?The bestsignof a possiblenegativeanswer
to the latter questionis constitutedby the fact that
primality testingis in RP [SS][R] and, while the problem of dctcnninistically deciding primality has
received a lot of attention for centuries, no
polynomial-timealgorithm is currently known. Similarly, it is of great intcrcst to find candidatesfor
languagesin KC(O)but not in, say,BPP. This is the
best one can do, given our current knowledgeabout
provinglower-bounds.
We know of two interestinglanguagesthat have
knowledgecomplexity0. Both are algebraic.The first
one is the following languageBL proposedby Blum
in [Bll] wherehe givesall the essentialingredientsto
prove BL UC(O). Let )I be an integer with prime
factorizationn =p:l -p:‘. Then n f BL if the number
of different p,s congruentto 3 mod 4 is even.The
other languagethat is known to belong to KC(O) is
the well known quadratic non-residuositylanguage.
We give a proof of this fact in this section.
For y EZ: WCdefine
.

I

0 if y is a quadraticresiduemod m

QmW = 1 otherwise

Then .L = {(J,M) 1 Q,,,(y)=l) is the quadratic
non-rcsiduositylanguage.
Our proof that LEK(0) dots not dcpcnd on
any unprovedcomputationalcomplexityassumptions.

WC first rcvjew what is known about the complexity
of decidingmembershipin this Ilanguage.
4.1 The QuadraticRcsiduosity.Problcm
The quadraticresiduosityproblemwith parametcrs mEA’ and xEZ~ consistsof computing Q,,(x).
If the factorizationof m is known, it is trivial to compute Q,,,.If the factorizationof m is unknown, then
there is no known efficient procedurefor computing
Q,,,. This decisionproblem is one of the four main
problemsdiscussedby Gaussin “DisquisitionesArithmeticac” (1801)(along with primality testing,integer
factorization and Solvability o:f Diophantinc Equations). A polynomialtime soluti.onfor it would Imply
a probabilistic polynomial time solution for other
open problemsin Number Theory such as deciding
whethera compositeintegerm is a productof 2 or 3
primes.
The Jacobisymbol(2) for nrEN and xfZ: is
a polynomialtime computablefunction that evaluates
to 1 and -1 and provides some information about
Qm(x). Namely, if (:)= -1 then Q,,,(x)=l. However, when (i)=l

then computing Q,(x) is a hard

problem. n fact.,it is not even known how to efficiently producea single “guaranteed” quadraticnonresiduemod nt with Jacobisymbol1.
4.2 A “0” KnowledgeInteractiveProof Systemfor L
In the proof system,(A,B:), that we exhibit for
O,,m)EL the prover A is only rcquircd to be a probabilistic polynomial time Turing machine with the
additional power of being able to evaluateQ,. ( Of
course,it remainstrue that no infinitely powerful A’
can convince13that y is a quadraticnon-residuemod
m if that is not the case).
For simplicity, we only consider proving that
(y,?ft)EI, when the Jacobisymbol(x)=1. The case
where (ij=

-1 is uninteresting. We specifyA and

B by giving-theirexplicit programat eachstepof the
interaction.

The basicidea is that B generatesnumbersof
two types:x =9 mod I)?(type 1) and x =y.r2 mod m
(type 2) where r is randomlychnscn,and quizzesA
about them. If indeed(y .nt) is in L, then A camtell
the typesof thesenumbers.If @,m) is not in L , they
look all the sameto A and it will fail the quizzeswith
very high probabiilty. The dangerwith this basicidea
ariseswhenindeed~,uI) is in L as A , whenanswering the quizzes, may releasesome knowledgeother
than b,m)EL (e.g. the quadratic residuosity of
specificother xG$ chosenby a cheating B’). We
ovcrcomcthis danger,by having A make sure that
the machinewith which it is interacting“knows” what
are the typesof the numbersit quizzesA about.

A andB’sInteractiveProgram
Input: b,nr)EL suchthat (i)=l

and n =logzm.

Initialize ilerarion =O.
Step 1:
B first choosesa random to from Zi, and then
tosses a coin C, . If C, =O, then B sets
x=ri mod n, else if C, =l , B sets
x =,y-t-02
mod n . B sendsx to A.
Then, B choosestwo random sets,eachof size
n,
T = { 11,12,...,tn 1 tl = c2mod m )
and,
S =’ { ~~+~,l~+~,...,t~~ f it = y$ mod m )

B sendsto A the elementsin TUS in random
order.
Step2:
A picks a random subsetZCT US of size n
and sendsit backto B.
Step3:
For eachzEZ, B sendsto A r suchthat I = 9
mod m or z = y-i2 mod m.
Supposethat the sizes of T-Z and S -Z
differ by d. Then. B choosesd randomelements
from the larger set, + ,..., ‘id and sendstheir
respective r,,, . . . , rid to A. (i.e l, =$ or
I

ft,=y*ri, mod m for some1 5 i, < 2t1).
sets X =T-2 -(II, . . , I,,,
B
Y=S-z-(f,,
,..., f$,*
l

Ifx=rJ

with probability exactlyt and that evenwith infinite
and

modm,Blets:

X’ = {ro’r, = Jzmod

n 1 f,EX }
Y’ = fy*roq = JY*x*~, mod n 1 Ii EY }.

elseif x =y.ri mod m, B Us:

f: f gsros4= ~/y-x-f, mod n 1 I,EX 3
-ro-rl = JF& mod n 1 f,EY 3
B then sendsthe elementsin X’U Y’ to A in
randomorder.
step 4:
A checksthat X’U Y’ is of the form specified
in step3 (i.e for all wEX’U Y’, ti=f,x mod m
or w2=f,-x-y mod m for someIi EX U Y) and
that IX’U Y’J > f. If this is not the case,A
halts detectingcheating.Otherwise,A sendsB
the valuev =Q,,(x).
Step5:
If v#C, then B halts detectingcheating,otherwise iteration =iferafion + 1 (this is the end of
an iteration).
If ilerafiorl 2 n, then B acceptsb,m)EL, otherwiseB goesbackto step1.
Let us first prove that (A,B) constitutesan interactive
proof-systemfor L.
Remark 2: Note that if A,B both operate
accordingto specification,then eachiteration of the
programwill be completedwith probability > l-f
for 0 < c 5: 1.
The following claims l&2 hold for each complctcd iteration.
Claim 1: If (y .nr) is not in L, then A ( or any other
A ’ ) correctly gucsscdC, ( i.e sends v=C,), with
1
probabilityexactlyT.

computation power A’ can’t distinguishbetween a
computation with B in which C, =0 from one in
which C, =l. The latter can be seenas follows.
SupposeC,‘=O.
Then, in step 3 for all r,EX, A receives
ror, =dG
=dm
mod m. Note that
q =1,*x mod 1~ is a random square,(as f, is)
and ror, is a randomsquareroot of e, mod m.
all
for
A
receives
w,
dym
mod VI. Note that
f, =y+x =y2*r$x mod m is a randomsquare,
(as r,2is) and y$ro-r, is a randomsquareroot of
f, mod m.
SupposeC, = 1.
Then, in step 3, for a11 f,EX, A receives
y-rO-rt=dy.f;x =dy’r:rl
mod m. Note that
Zi=y-f,.x mod 1~ is a randomsquare,(as both
y and f, arc now squaresand r, is a random
square)and y~,r, is a randomsquareroot of 2,
mod m.
for all f,E Y, A receivesy-to-r, = d z mod m,
Note that f, =I,.x =y’-$.ri mod m is a random
square,[as r: is) and y-roar, is a randomsquare
root of j, mod m.
Thus, for both C, =0 and C, =1 A will still receive
randomsquarerootsof randomsquares.ThereforeA
can’t haveany advantagein predictingC,.
Claim 2: If (y,,n) in L, then A correctlycomputedC,
in step4.
Theorem1: (A.B) is an interactiveproof-systemfor L.
Proof: For every(y .nr)E L givenasinput to (A,B), B
hahs and accepts with probability greater than
(1- f) for all constants0 < c 5 1 and sufficiently
large n . This follows by claim 2. For any machineA ’
and for any ~,TH) not in L, givenas input to (A ‘J),
B acceptswith probability at most f by claim 1 and
remark3.
We now proceedto show that L hasknowledge
complexity0.

proof: The proof folIows from the fact that C, =0

293

Theorem 2: L has knowledge complexity 0.
Proof: To show that (A .R) constitutes a 0 knowledge
proof-system for L, we must show that for each
polynomial-time ITM B’. thcrc exists a probabilistic
polynomial-time Turing Machine M, such that the two
enscml&s 1!!1] and (A ,B ‘)I ] are indistinguishable.
The basic idea is that Ai can easily simulate B’, as B’
runs in polynomial time. On the other hand, M will
succeed in simulating A, by running B’ twice with the
same coin tosses.
A more precise description of M is the following: On
input (~~.rn)cL, M randomly fills the random tape of
B’ with a sufficiently long string R, and makes B’
perform “its own version” of step 1. (B’ may in fact
execute a different algorithm than. R during step 1.)
Simulating A in step 2 is easy for M, as all A does
here is picking a random subset. Next, M makes 8’
perform its own version of step 3. Now, M must
simulate A in step 4. Notice that it is easy to check
whether A will halt in step 4. ‘Thcrcfore it will be
easy for M to simulate A in a computation with B’ in
which A halts in step 4. Difficulti:es arise if A won’t
halt but continue, This implies that A, must compute
Q,,,(x) correctly as A does. This is easy to do for A
who has enough power to decide the quadratic residuosity of X. Notice that this would also be easy for
AI if B’, either generated x by squaring mod m an ro
that A! may observe ( in which case M knows that
Q,(x)=O), or if B’ generated x bly squaring mod R
an r. and multiplying by y ( in which case M knows
that Q,(x)=l).
However, life may be not so easy.
B’ might have generated x in some other way (e.g.
at random) which would make it h.ard for M to compute Q,,,(X). We overcome this difficulty as follows.
we denote fixed, positive constants
BY CI.C~.C~,...
depending on A and B’. Without. loss of generality,
we may assume that on input @,tn), A will halt in
step 4 with probability less than 1 -- -. ’
p*

(Otherwise

by simulating A and B’ for steps 1.,2and 3. as above,
and having A halt in step 4. WCtriv.ially gcncrate computations which arc indistinguishable from
(A 9mJJ,mll.
At the end of step 3, Al savesall messagessent so far

by B’ and the “virtual” A. M now runs B’ again with
the same input (y,m) and the same content R in the
random tape of R ‘, For this second compuation, M
simulates A anew. by flipping new coins. Four things
will happen in this second computation.
1)
2)

3)

B ’ sends in step 1 the same sets 5’ and T, as in
its first computation.
In step 2, A will select a random subset
iC_TUS.
With probability greater than
1-L
Z#Z (where Z denotes the set
2czn ’
chosen in the first computation).
In step 3, B sends the sets k and p. (The
respcctivc sets in the first compuation were X’
and Y ‘). With probability > 1 - 4,
2 and y
23
are of the right form (i.e could not cause the
legal A to halt).

4)

With probability
h

> 1 - 4,
24

2*:x’

and

Y’.

M now sclccts an element r,E(T - X’)n,$*
As
I,ET-X’,
in the first computation B’ sent its
corresponding ri. As r, Ef . in the second computation B’ sends 4 x!, mod m or J xr,V mod In. Now,
in whatever case, it is just a matter of algebra for M
to easily compute r. such that ri =x mod m or
ri-y=x mod tn. If O),m)EL, exactly one of,these
casts may occur. Therefore M, having computed rh
can simulate A by sending a v = Q&).
QED

5. A parentheticalsection.
Remark 3: A stronger way of saying that A
communicates at most f(rl) bits of knowledge with
respect to polynomial-time computation, is the foklowing.
For all ITM B’ there exist a polynomial-time
ITM Al that by interacting with B’ (but also
reading the random tape of B’!) produces an
ensemble at most (l- &)-distinguishable
(A .B’)H.

from

This notion is stronger as it allowsB’ not to bc bound
to polynomial-time computation while A needs not to
know what the computing power of B’ is. Full details
will be given in the final paper. Intcrcstingly. the
interactive proof-system for quadratic non-rcsiduosity
of section 4.2 rcleascs 0 additional knowledge even
with respect to this stronger definition.
An informal dcfinitiow One advantage of the
point of view of Remark 3 is that it allows one to
express in a clean way notions like “the polynomialtime machine B knew x at some point of its computation”. Let us consider a particular example. Assume
that machine B started computing on input k and
outputs a k-bit integer M. B may have randomly
selected two primes p1 and pz, multiplied them
together to produce m, then “erased” pl and p2 and
output ~1. What could one mean by saying that B
knew the factorization of m? A natural choice is that
B is able to compute it. In a narrow scnsc, this may
mean that, in performing next instruction, B will output 01’s factorization or that it was written, say, at the
beginning of B’s work-tape at some point in time. In
a broader sense it may mean that if a probabilistic
polynomial-time machine A4 “monitors” the sequence
of istantaneous descriptions of B’s computation, then
M outputs nt’s factorization with very high probability in poly(k) time. This, however, may not be general enough. In fact, “extracting” N’S factorization
may not be easy for M, and still B had enough
“potential” to efficiently compute it (though B’s program may never explicitly do so). WC believe that the
following (informal) definition achievesthe right level
of generality. Let M be a probabilistic polynomialtime machine that monitors B’s computation from the
start till it outputs m. In particular, M reads all the
inputs (random and not) of B and all its outputs.
Informally we say that B knew m ‘sfic~orizu~iurrif M
can now USCB to compute M’S factorization. This
use of B may bc very general. For example. M may
run R more than once after altering the content of its
tapes. An example of this is imphcit in section 4.2.
Full details will be given in the final paper.

6. Applicationsto Cryptographic
Protocols
Given our current state of knowledge about
lower bounds, the security of a cryptographic protocol
must bc proved based on the intractability assumption
of some candidate hard problem. lln~s one must
accept that further analysis may reveal some candidate hard problems to be efficiently solvable. What
is not acceptable is that a protocol may be broken
without violating the rclativc intractability assumntion.
In traditional computational complexity or communication complexity, the goal is to communicate as
much knowledge as possible as.efficiently as possible.
Since all participants arc considcrcd good friends, no
one carts if more knowlcdgc than ncccssary is communicatcd. The situation with respect to cryptographic
protocols is very different. In this cast there is generally no problem at all communicating the
knowlcdgc efficiently, but the whole problem is making sure not too ntuch knowledge has been communicated.
Model theoretic knowledge has been used to
analyze protocols. For example,in [HR] it has been
used co prove Rabin’s “Oblivious Transfer” correct In
some setting. Howcvcr. as pointed out in [FMR],
Rabin’s oblivious transfer still lacks a proof of correctnessin a complexity theoretic framework.
We believe that knowledge complexity provides
the right framework to discuss the correctness of
crytographic protocols. Applying rhcsc ideas, [FMR]
modified Rabin’s oblivious transfer so that it can be
provedcorrect. A sketch of this can be found in sec-

tion 6.1.
Knowledge complexity helps in proving or
disproving the correctness of cryptographic protocols
as thcsc arc based on the secrecy of some private
information and should prcscrve this secrecy. The
privacy of some information is what gives us an
advantage over our advcrsarics. Let A(licc) possess
the prime factorization of an integer n (say n =pi*p2),
while B(ob) only knows tr. During a protocol with
B, A must protect the privacy of her information.
Assume that A can perform each step of the protocol
without having even to look at the value of pi and pz.
Then it is easy to show that the protocol did not

331

compromisethe privacyof n s factorization. It Is also
easyto see,however,that the protlocolcould not have
accomplishedany interestingtask. In fact A has not
made use of her “advantage”! The protocol may
accomplisha non-trivial task if, in at lcastone stepof
it, A performs a computationc that dependson p1
and p2. This raisesthe question:
Will c(p,,pJ betray to much informorion about p1
and pz?

Classical information theory does not provide an
answerto this question. Knowledlgecomplexitycan.
In particular,
1) We can quantify the amount of knowledge
aboutp1 and p2 that c conveysand
2) We can design protocols so to minimize this
amountof knowledge.
If (A .B) is a 0 knowledgeinteractiveproof-systemfor
L, we alreadysawthat, on input ;I EL, A givesB at
most one bit of knowledge,namelyxEL. (That is 0
additional knowledge).More generallyhowever,we
define an upper bound, measuredin bits, on the
amountof knowlcdgcA givesto B in a particularprotocol (to appearin the final paper).
We use this to give an upper bound on the
numberof timesa singleprotocolor a combinationof
protocolscan be played, using a commonsecretkey,
without giving away too much information about the
secretkey. In addition, trying to measurethe amount
of knowledgerevealedduring the cxccutionof a protocol about the sccrct,may pin point weaknesses
in
the designof the protocol. For examplethe amount
of knowledgerevealedin a protocolof [BDJappeared
to be unreasonablylarge. Further analysis by [H]
showed that this protocol could be broken if the
encryptionfunction used in the protocol is RSA with
low exponentsor Rabin’sfunction.
A most important application of these ideas is
that it allowsus to provecorrcctncssof protocolsin a
modular way. Complex protocols are usually composedof sub-protocols.For instance,many protocols
usea sub-protocolfor “coin tossingover a tclcphone”
(Rlum [Ml]). However, it is not clear how to use a
“normal” definition of correctnessof “coin tossing”to

provethe correctness
of me mainprotocd In general,
it appearsthat much strungcr definitions for t&se
sub-protocolsare ncedcdin order to fit them modur
larly and cleanly inside larger protocols.Full details
will be givenin the final paper.

6.1 A Modific~~iunof the 4IbM~us Trw&x
That ItsProvablyEquivalentto Facto&g
This sectionis joint work of IFMR]. The notion
of an ObliviousTransfer(OT) hasbeenintroducedby
Rabin [HR] who also proposed the first protocol
implementingit. OT appearsuseful as a designtool.
Seefor exampleBlum [B12]and Even Goldreichand
Lempel [EGL]. Rabin introducedOT (to be described
below) in a numbertheoreticsetting. Mom generally
tbc OT can bc vicwcd as a protocol for transfer* a
large amounf of knowledge with probability 112[EGL].
Bcrgcr. Peraltaand Tedrick [RPlJ present a correct
protocol for “obliviously transferring” a random
number. Different from OT, this protocol transfers
no knowledge.
The notion of an OT involvestwo partiesA and
B and an integer n (product of two large distinct
primes) whosefactorizationis only known to A. A
would like to send the factorizationof n to B with
the followingconstraints:
1) 13must have50%chanceof receivingthe factorization of n and the other half of the time B
should not know any information at all about
the factorsof n.
2) A should not have any idea whether or not B
receivedthe factorizationof n.
Rabin’sprotocolrelieson the computationaldifficulty
of factoring. However,as describedbelow, there is a
potential flow in his protocol: it is possible that B can
cheatand factor n with probability much higher than
l/2 even if the intractability assumptionof factoring
holds. Although we cannot prove that B can really
cheat, no one hasyet been able to prove that B can
not. Before proceedingany further, let us desc&
Rabin’sproposedprotocol.We assumethat A and B
both know n and that A knowsits factorization.

Step 1: B chooses a random x, 1 < x 5 n , relatively
prime with 11. Then B computes y=x’ mod n and
sends y to A.
Step 2: A computes a random square root (mod n) z
of y and sends z to B. (If no square root exists, A
does nothing).
Step 3: B checks that z’=y mod n. (If not, B halts
detecting cheating). Let us assume that z*ry mod n.
It is well known that y has four square roots mod n
that can be written as {x,-x,w,-w},
where B
knows x. With probability 50% z will be x or -x
and B reccivcs no knowledge With probability 50%.
however, z will be w or -w, in which case
gccd(n ,x + z) will be a factor of II, allowing B to compute the factorization of n.
Party A cannot cheat by sending back some
cleverly chosen square root z of of n: no matter
what n dots, zE(x, -x) with probability 50% and
zE(w, - w) witn probability again 50% and A cannot
know which is the case.
Is it clear, however, that B cannot cheat? We
wish it to be the case that at the end of the protocol
B cannot factor with probability (much) bigger than
l/2, even if B cheats, and we wish to prove this
assuming only that factoring is hard. What happens if
B does not square any x at a!!, but instead picks a
particular cleverly chosen square mod n y to send?
Perhaps knowing any square root mod tr of y will
allow fl to factor n. That is, perhaps there is a polynomial time algorithm that given n produces a “special” square mod n y, and another polynomial time
algorithm that given y,n and any square root of J
mod 11 factors n. The point is not that WChave such
algorithms, but that no one has proved that the
existence of such algorithms contradicts the assumption that factoring is hard. Hence, the proof that
Rabin’s protocol is correct relies not only on the
assumption that factoring is hard, but on an additional
complicated and unnatural assumption, essentiaHythat
the above algorithms do not exist.
We have been able to prove that a modified
version of Rabin’s OT is correct. Le. the probability
(taken over the possible choices of n and a!! possible
random choices of B) that B can factor n in k steps

303

at the end of the protocol, equals l/2 + the probability that B can factor 11in k steps before the protocol
starts. The heart of the modified protocol is that in
addition to y, B gives A a minimum knowledge
interactive proof that he possessesa square root of y
following’ the ideas in section 4.2. In particular, such
interactive proof will not reveal any information
about which square root B knows. Now that we have
made sure that B knows one square root of y. when
A will give him one of them at random, it is easy to
prove that B’s probability of factoring n at the end of
the protocol equals l/2 + the probability that he had
of factoring n before the start of the protocol.

7, Open Problems
Many open problems arise. We only list a few
of them.
1. Is NP strictly contained in IP?
2. Is KC(O) contained in NP?
3. Is KC(O) contained in IP[l]?
4. Is Ip[k J strictly contained in IP[k + l]?
5. Are there NP Complete languages in KC(Q(lr ))?
6.
For what time-bound
T(n).
if any,
I&a, c IPT(J

Acknowledegements
Mike Sipser greately helped in focusing on this
problem.
We highly bcnefitcd from the encouragement
and the ideas of Dena Angluin, Manuel Blum, Steve
Cook, Mike Fischer, Odcd Goldreich. Ravi Kannan,
Dick Karp. David Lichtcnstcin, Albert Meyer, Gary
Miller, Ron Rivcst and Paul Weiss.
To all our most sincere thanks.

References
[B] Babai L., Trading Group Theov for Randomness
[Bll] M. Blum, Coin flipping by relephone, IEEE
COMPCON 1982.
[BlZ] M. Blum. Three uppkuriom of rhe oblivious
fransfer, Unpublished manuscript, 1981

[BPT]Berger, Pcralta, Tedrick, Ow Jxing rhe Oblivious
I ‘rurzsfer,Presented in Eurocrypt 1983. These
Proceedings
[C]

SCook, The Complexity of Theorem-Proving
Procedures’: Proc. of 3rd STOC, 1971.

Iy]

Complexily, 14th STOC,1982.
AC. Yao, SonoeCo&exify (&&ions iM&# to
DisMbutive Computing Froc. of 11th STOC,

M

1979.
AC. -Yao, They and ApglicaGorrs of Trapboor
Funcrions, Proc.of 23rd FOCS,1982.

[DB] D. Dolev, A. Broder, Flipping Coins in Many
Pockets,Proc. of 25th FOCS, 1984.
[EGL]Even, Goldrcich Lempel, A randomizedprofocol
for Signirlg Co~fmcrs, Advances in Cryptology:
proceedings of Crypt0 1982, Plenum press, 1983,

205210.
[FHV]R. Fagin, J. Halpem, M. Vardi, A modelthcorctic analysis .of knowhzdge,Proc, df 25th

FOCS,1984.
[FMR]M. Fischer, S. Micali and C, Rackoff, A Secure
Protocol for rhe Oblivious Transfer, Eurocrypt
1984.
[HM] J. Halpern, Y. Moses,Knowledge gnndCommon
Knowledge in a Dislributed Knvironmenf, Proc.of
3rd PODC, 1984.
[H] J. Hastad, On Solving A System of Simulkzrteous
Alodtilar Polynomial Equations of Low Degree
In preparation.
[HR] J. Halpcrn and M.O. Rabin, A Logic 10 reason
aboul likehood, Proc. of 15th.STOC. 1983.
[HS] J. Hastad, A. Shamir, On fhe Security of
Linearly Truncated Sequences,this proceedings.
[GM] S. Goldwasser, and S. IMicali, Probabilistic
Encryprion, JCSS Vol. 28. No. 2. April 1984.
[GM]S. Goldwasser, and S. Mlcali ,Proofi with
Unrntsred Oracles, Unpublished Manuscript

1983.
[GGMIO. Goldreich, S. Goldwasser, and S. Micali,
How to Consirucl Random Funclion, 25th FOCS,
1984.
[L]

L.A.I.cvin, Universal Sequen,rialSearch Problems,
Probl. Inform. Transm. 9/3 (1973), pp. 26,5-266.

[p]

C. Papadimitriou, Games against nature, Proc.
24th ann. Symp. on Foundations of Computer
Sciende, 1983, pp 446-450.
IpS] Papadi&iou
and Sipse:r, Communication

304

