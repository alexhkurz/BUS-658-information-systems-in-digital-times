arXiv:2509.13323v1 [cs.HC] 17 Aug 2025

AI Behavioral Science∗
Matthew O. Jackson1,2 Qiaozhu Mei3 Stephanie W. Wang4
Yutong Xie3 Walter Yuan5 Seth Benzell6
Erik Brynjolfsson1 Colin F. Camerer7 James Evans8,2
Brian Jabarian8 Jon Kleinberg9 Juanjuan Meng10
Sendhil Mullainathan11 Asuman Ozdaglar11 Thomas Pfeiffer12
Moshe Tennenholtz13 Robb Willer1 Diyi Yang1 Teng Ye14 .
1 Stanford University

2 Santa Fe Institute

4 University of Pittsburgh

5 MobLab

7 California Institute of Technology

3 University of Michigan

6 Chapman University

8 University of Chicago

9 Cornell University

10 Peking University

11 Massachusetts Institute of Technology

12 Massey University

13 Technion – Israel Institute of Technology
14 University of Minnesota

August, 2025
Abstract
We discuss the three main areas comprising the new and emerging
field of “AI Behavioral Science”. This includes not only how AI can
enhance research in the behavioral sciences, but also how the behavioral
sciences can be used to study and better design AI and to understand
how the world will change as AI and humans interact in increasingly
layered and complex ways.

How can we use behavioral science to better understand AI’s biases,
tendencies, and heuristics? What are some guiding principles needed for
designing AI as it increasingly interacts with humans? How is AI influencing
human behavior? How can we use AI to better understand human behavior?
How do AI and humans change their beliefs and behaviors when interacting
∗

This grew out of a workshop of the same name held at CASBS in spring 2025.

1

with each other and how do they influence the beliefs and behaviors of their
partners? How can society predict and prepare for the shifting economy as
AI both augments and displaces humans?
These are some of the core questions in the new field of what we call “AI
Behavioral Science” that is rapidly emerging at the intersection of artificial
intelligence and behavioral science. As AI systems increasingly shape human
experiences—ranging from influencing decision-making on social media to
automating tasks in the labor market—behavioral scientists and AI researchers
face the challenge of understanding and guiding these interactions toward
positive outcomes. Central to this endeavor is the study of complex behaviors
exhibited by sophisticated AI models, trained on vast human datasets and
iteratively refined through human feedback.
We take a broad definition of Artificial Intelligence that includes any designed system that includes some aspects of intelligence, where by intelligence
we mean perceiving, collecting, processing, categorizing, storing, analyzing,
learning from, and acting upon data, as well as performing logical deduction,
abstraction, planning, simulation, repetition, and reasoning tasks. Thus
AI has a long history, including everything from clocks to automata, and
from machine learning and broader statistical techniques to language models,
robotics, apps, and platforms.
Our discussion centers on three themes that reinforce each other (Figure
1).
The first theme is the pressing need to develop tools for assessing AI’s
behavior, given its rapid adoption by individual and corporate users. Since the
code and training processes underlying AI are complex and often proprietary,
it makes sense to evaluate AI based on its behavior and to ask: What
objective is an AI agent implicitly trying to achieve? How will it act in
different scenarios with both humans and other AI? Understanding the implicit
motives of AI agents is especially important since AI is being developed by
many different parties, with varying incentives, and for many different and
interacting purposes. The behavioral sciences have been developing methods
for assessing behavior in complex social situations and inferring motives for
decades, and so they offer a large set of descriptive and diagnostic tools for
measurement and prediction. In addition, the social sciences also provide
carefully honed normative perspectives about what kinds of behavior can
improve or harm human welfare. These “design” methods can help design
2

Figure 1: Three reinforcing pillars of AI Behavioral Science: assessing and
guiding AI behavior, using AI to advance behavioral science, and understanding AI-human interactions form a mutually reinforcing cycle.
and optimize AI for individual and social welfare.
The second theme is that AI can be used as a tool for new and improved
techniques to do behavioral and social science research. The enhanced and
rapid performance of AI can enable researchers to simulate and predict the
behavior of complex systems in new and inexpensive ways. This includes the
simulation of individuals, groups, and entire social systems at new scales and
with new levels of realism. AI also expands and improves the set of models
and ways in which human behaviors can be analyzed and categorized. In
addition, AI offers a testbed where we can better understand how motivations
and objectives shape behavior, providing new insights into human behavior.
The third theme is the need to understand AI and human interactions.
AI is being applied to a rapidly expanding swath of human endeavors. It is
changing how children obtain information and write. Experts, from judges to
doctors, increasingly rely upon it as a professional tool. AI models underlie
the many online platforms that identify and present the information people
see and the people with whom they interact. Understanding how that changes
human knowledge and behavior is vital, especially as many such systems are
3

being designed by for-profit enterprises that currently internalize neither the
externalities nor the public goods nature of information that is at the heart
of these interactions. In addition, human-AI interactions take place within
entire ecosystems of distinct but layered interactions (e.g., a person getting
information from one AI and then sharing it via another on a platform whose
information is harvested by other AIs, etc.). The designs tend to have goals
within their specific arena, ignoring spillovers to and from the many other
layers of interactions. Finally, this technological advancement is occurring at
a speed beyond previous breakthroughs, and has a much broader range of
applications. Understanding and managing how AI amplifies or shrinks the
productivity of humans (“complements” and “substitutes” in economic terms)
in various tasks is an important first step. AI’s ultimate impact on wages
and employment depends on the broader landscape and general equilibrium
effects of where workers are displaced and where more are needed, and the
many ripple effects resulting from that displacement. As a particularly radical
example of creative destruction, AI has the potential for unusually widespread
displacement and unintended consequences that can be better addressed if
properly anticipated.

AI’s Enhanced Capabilities
Before we proceed with these three discussions, it is important to recognize
AI’s strengths and capabilities, as they help us understand AI’s potential uses
and evolving roles. A partial list includes:
• Prediction: AI, in the form of multi-layered neural networks, for
example, have been shown to be universal function approximators [1],
with functions as diverse as the space of human languages, images,
video, and more [2, 3]. Also, machine learning techniques are making
rapid inroads in statistical modeling (e.g., [4]).
• Power: AI’s computational speed, memory, and ability to handle
combinatorics and complex logic already surpass humans in many arenas
[5, 6].
• Concentration: AI can handle a heavy workload and repetitive tasks
without tiring or losing focus [7, 8, 9].
4

• Large-scale data digestion: AI can digest vast amounts of data, far
exceeding human capabilities. It is adept at filtering, categorizing, and
distilling large data sets. It can also monitor and censor data in real
time [10, 11].
• Coordination: AI is being trained to communicate with and anticipate
the behaviors of others [12, 13].
• Designability: AI can be programmed and optimized for specific tasks
[14]. It is also steerable and trainable (reinforceable) in an increasing
set of domains [7, 15, 16].
• Predictability: AI can be programmed to provide consistent, trustworthy, transparent, and reliable behavior [17, 18, 19].
• Self-guidability: AI is developing the capability to monitor and correct
its own behavior, including via the use of multi-AI-agent systems [20,
21, 22, 23]. Its ability to try enormous numbers of new combinations
and to evaluate and refine the output, enables creativity in a variety of
domains .
Figure 2 provides a visualization of these enhanced capabilities. These
many features are generally positive, but can also lead to rigidities, biases,
and opportunities for manipulation. This is coupled with the fact that many
AI systems involve proprietary code and engineering and it can be challenging
to see which data they are trained upon. This ‘black-box’ nature of many AI
systems can also lead them to be unpredictable in new situations, and calls
for external assessment of their properties.
These capabilities also provide the potential for AI to eventually surpass
humans in many tasks, especially when paired with other technologies that
AI can access and control, with both positive and negative repercussions.

1

Using behavioral science to guide and assess
AI

A natural interpretation of the field title “AI Behavioral Science” is that it
represents the science of AI behavior, which is our first area of discussion.
5

Figure 2: AI’s capabilities across multiple dimensions. Careful design and
governance are needed to mitigate risks like bias and unpredictability.

6

How can behavioral science principles enhance our ability to evaluate and
interpret AI behaviors?
AI surpassed humans in playing Chess and Go some years ago. Its play has
revealed new strategies that lie outside of the realm of those typically employed
by humans, even at the highest levels.1 This highlights AI’s potential to
supplant humans but also demonstrates how it can enhance human behavior.
Human players have learned from observing AI’s plays, leading to an explosion
of novel human strategies in recent years [24].
Beyond entertainment, AI is also emerging in life-altering arenas. It is
being deployed to help judges and doctors make decisions [25, 26, 27, 28, 11].
It is already delivering goods [29, 30] and driving people around without
direct human supervision [31, 32].
Given these increasingly important roles of AI, we need methods of
assessing AI performance, biases, blind spots, and tendencies. We also need
to be able to predict its behavior in new situations beyond its experiences
and training. As the behavioral sciences have been developing techniques for
such diagnoses and predictions for decades, it makes sense to apply them as
a primary tool for assessing AI’s behavior.
For example, we can develop Turing Tests, in which AI is put into various
contexts and its behaviors are compared to those of humans. From its
behaviors, one can infer what objective function it acts as if it is maximizing
[33]. Whether or not it is actually maximizing such an objective function, as
long as it acts as if it is, then that enables one to predict how it will behave
both in and out of sample.2 This sort of “revealed preference” analysis has a
long tradition in economics and marketing and can be a very useful tool for
analyzing and predicting AI behavior.
Behavioral economics has also cataloged a variety of ways in which most
humans deviate from self-interested, computationally-unconstrained preference maximization [38, 39, 40, 41, 42, 43]. For example, humans can have
1

For instance, AlphaGo, an AI program developed by Google Deepmind, famously
played a move 37 in the second game of Go against Lee Sedol the human champion. Move
37 went against centuries of conventional wisdom about Go strategy, yet led to a victory.
(https://deepmind.google/research/breakthroughs/alphago/)
2
For a recent example, one can ask AI to make choices in classic social or strategic
(game) scenarios, where it can decide how much of a sum of money it would like to share,
how much it would like to risk, how much it would contribute to a public good, whether it
would cooperate in a prisoner’s dilemma, etc. [34, 35, 36, 33, 37]

7

other-regarding preferences, make decisions with limited attention and computational capacity, and have self-control problems. These and other behavioral
tendencies cut both ways, in some cases leading to welfare losses and in
others to welfare gains compared to the behavioral tendencies of the homoeconomicus caricature. Although human behavior can be hard to alter, AI
behavior can be steered and thus optimized with prompting and training [44].
Moreover, AI can be designed with the enormous knowledge that has been
accumulated from the study of normative and welfare economics. For instance,
ideas that originated from game theory, such as regret minimization, have been
widely adopted in reinforcement learning and have led to breakthroughs in
training modern AIs [45, 46]. This presents an opportunity for AI Behavioral
Science to have a direct impact on improving AI.
In another direction, behavioral science offers insight into which AI encoding biases are likely to occur. For instance, social psychologists discovered
that people rapidly categorize others—“thin-slicing” [47, 48]—even from just
seeing faces, on dimensions such as warmth and competence. AI models
appear to do the same: AI-generated CLIP text-image associations of trait
dimensions with faces varying in sociodemographics show similar biases [49].
However, it might be much easier to debias the AI than to debias everyday
human judgment. For example, given that the data on which some AI are
trained are more heavily representative of certain demographics in ways that
are measurable, one can reweight to get AI to match the behavior of any
particular population of interest [50, 51].
Psychological approaches to understanding personality (e.g., Big 5) and
sociological ways of diagnosing societal values can also be used to probe,
analyze, and steer AI behaviors in naturalistic contexts, from information
sharing and navigation to persuasion and negotiation [52].
More recent work has borrowed constructs and tools from behavioral
sciences to probe the internal states of AI, such as mental models [53, 54],
theory of mind [55], beliefs [56], cognitive processes [57], as well as to evaluate
its performance and behavior from various perspectives, such as steerability
[15, 58, 59], alignment [60, 61, 62], biases [63, 64], inconsistency[65], decisionmaking [66], mental accounting [67], humor [68], multiple personalities [69],
algorithmic monoculture [70], rationality [71], pluralism [72], and limitations
on predicting out of sample [73, 74]. In evaluating AI behavior, an important
consideration is how AI responses depend on context. Another important
8

factor is prompt sensitivity: AI outputs can vary significantly depending on
the wording, language, and framing of the input [71, 60]. Having AI adapt to
context is desirable in some applications, but not in others. Thus, when and
why AI is malleable becomes a relevant dimension of AI evaluations.3
Given that AI is often developed by entities with objectives other than
overall social welfare and the fact that there are generally externalities involved
in AI behavior, this is also an area where behavioral assessment of various
forms of AI can be an important tool in the hands of regulators. This focus
on social welfare can be a great asset to AI behavioral Science.
This is an area of science that is in its infancy. It will likely develop
quickly for two reasons: One is that AI is advancing quickly in the wild, and
so there is a significant social need to assess its many instances. The other is
that AI itself can be used as a tool in its assessment and monitoring. This is
an exciting new facet: how can AI best be used to understand, guide, and
police AI?

2

AI as a new tool in the behavioral sciences

Our second area of discussion is a sort of an inverse of our first: instead
of asking how behavioral sciences can help understand AI, we ask how AI
can help understand behavior and how AI can transform behavioral science
research. How can understanding AI behaviors provide deeper insights into
human decision-making processes, behaviors, and interactions?
Of course, as we acknowledged above, AI models have computational and
data processing capabilities that make them obvious tools across all sciences,
and indeed, AI is making rapid inroads as a tool for language processing,
complex system simulation, pattern recognition, categorization, and even
logic and mathematics [76, 77]. Let us discuss how uses of AI go beyond
simply offering faster and larger computations.
AI offers methods of quantifying and analyzing large amounts of qualitative
data including discussions, pictures, writings, videos, that would be hard to
otherwise analyze. Such techniques have been used in a range for research,
from quantifying text and speech [78], to distilling historical records [79], and
3

Given the large set of tests that it is important to test upon, designing methods that
most efficiently select what to test can become important [75].

9

analyzing human behavior in videos [80]. This permits analysis of human
behaviors in ways not previous available.
The success of large language models (LLMs) in simulating humans makes
possible a range of powerful social scientific applications, as such models can
generate digital proxies of humans, enabling rich and complex social and
behavioral science to be done in silico [35, 36, 81, 82]. Recent studies find that
properly prompted LLMs can simulate human participants’ responses to survey
questions and in experimental studies with high accuracy [83, 84, 85, 86, 44, 87].
This provided a breakthrough, which can transform agent-based modeling
from simple lines of code tailored for specific contexts to be much richer and
broadly applicable [88, 89, 90].
Simulating human-like respondents is appealing for a variety of reasons.
The first and most obvious benefit of AI for simulating social and economic
systems is that one can study how a particular system depends on behavior
of the people or agents interacting within it. It allows one to test and control
variations that may be difficult or unobservable in the wild. One can see how
a system changes with differences in the behaviors of those within it, mapping
out a complex systems behavior in a wide variety of circumstances.
A second obvious benefit is accessibility. LLMs can be prompted quickly,
cheaply, and easily. An automated survey can be fielded in a day for a few
hundred dollars, and a single interview can be simulated in a few seconds for
pennies [91].
Third, studies using simulated respondents can be conducted at a scale that
is infeasible with human subjects. Analysts can run millions of interactions
initialized across a great number of experimental conditions, characterizing a
high-dimensional space of estimated (causal) effects in detail [92, 93].
Fourth, human subjects who are difficult to interview in person, such
as hard-to-reach, minority populations, or medical, political, or economic
elites, can be simulated, leveraging extensive textual and behavioral records
[34, 94, 95]. Simulating unlikely conversations between leaders in science,
politics, industry, and technology can produce insight into intellectual or
ideological exchanges that rarely happen naturally and could not be produced
in a laboratory setting. Simulated subjects therefore make feasible a wide
variety of research designs that would be impractical or impossible with
human populations [84, 35, 96, 97, 98, 99, 100, 101, 51].

10

To summarize these emerging applications of AI as a tool in behavioral
science, we provide a conceptual illustration (Figure 3).
AI can also be used to pilot and predict empirical research outcomes, such
as experimental treatment effects, either (a) indirectly, via the simulation of
samples of experimental participants across different experimental conditions
[87], or (b) directly, based on the model’s response to a prompt including
a description of the research design [102]. This is feasible even for human
actions that have been traditionally difficult to simulate. Predictions of
empirical research outcomes fill multiple roles in the behavioral sciences
[103, 104, 105]. There remain concerns about whether AI-simulated subjects
accurately match variation and co-variation of behavior sampled from human
populations [84, 106, 87], and this should continue to evolve as AI is enhanced
and enters more complex and intricate simulation arenas.
AI-assisted predictions of the results in an experiment can also be valuable
for the interpretation of observed results [105, 99, 107]. It can identify
consensus and sources of disagreement between different forecaster cohorts
(e.g. laypersons, experts, AI) and forecasting methods (e.g. AI simulations
and AI predictions). Ex-ante predictions can also inform decision-making
in the context of experimental designs and resource allocation, which is
particularly beneficial for ‘mega-studies’ that coordinate multiple research
groups across multiple research designs or experimental interventions [108],
because AI can provide predictions for large spaces of feasible experimental
designs with high accuracy [87]. As AI-derived estimates of experimental
(i.e., causal) effects in controlled settings become more accurate, it allows
behavioral scientists to build richer models. This raises the question of how
to build models well from large amounts of high quality, experimental data, a
problem for which different approaches have been proposed [109, 93]. Overfitting models on simulated data is a concern, as in many settings, requiring
out of sample testing.
Finally, predictions about the replicability and generalizability of published
studies play an important role in the post-publication assessment of published
research [110, 111], with numerous computational approaches emerging in
this space [112, 113, 114, 115, 116].
Looking forward, AI technology can potentially drive positive behavioral
change by leveraging digital tools to precisely identify individual biases, design
targeted nudges, deliver personalized interventions at scale, and broadly
11

Figure 3: Key applications of AI in advancing behavioral science, including
simulating participants, predicting experimental outcomes, assisting with
experimental design, detecting and reducing biases, analyzing data, and
enabling the discovery of new theories and models.

12

automate the practices of behavioral science research [117, 118]. Recent
efforts demonstrate the potential for building behavioral foundation models
that are jointly trained on datasets and tasks related to these applications
and extrapolate to a wide variety of new uses [51].
Beyond its use as a tool in improving existing behavioral science techniques
and enabling one to expand the scope and scale of analysis, AI can also provide
a whole new technique for assessing human behaviors and motivations. There
are many reasons for which human rationalizations of their own behaviors are
biased and unreliable [119, 120, 121, 122]. AI has two advantages here. One
is that it has been trained on enormous amounts of data and thus has learned
from experiences and information across a broad spectrum of human behaviors.
The other is that AI is more transparent to measure in terms of how it responds
to contexts. For instance, which instructions (in terms of motivations) does
one have to give to AI in order to get it to behave similarly to some particular
human behavior in a public goods or risk game? Such techniques show promise
in terms of learning new things about why humans exhibit certain patterns
of behavior, and what might explain differences between populations with
varying demographics [44]. More generally, understanding what it takes (in
terms of background data and steering) to get AI to behave in some particular
way in some social or economic context, helps us better understand that
context; and ultimately helps us categorize and contrast contexts[44].
Another value of AI for doing behavioral science is contrasting what AI is
good at with human weaknesses, to characterize human judgment that does
not respect the AI discipline. As an example, useful machine learning models
have the advantage of trawling through large numbers of features to predict
outcomes. But that advantage risks overfitting, so some ML models respect
the bias-variance tradeoff: They tolerate bias in estimating feature strength,
in order to reduce overfitting variance. It is likely that human judgment
does not respect the bias-variance tradeoff in the same way that AI models
do. Human judgments can sometimes espouse confidence about high-order
variable interactions, which are notoriously difficult to estimate reliably, and
typically result in overfitting [123, 124, 125], which ML models provide ways
to guard against.

13

3

Human-AI interaction

Our third area of discussion concerns the fact that the extensive deployment
of AI means that most social and economic systems are no longer simply
human systems within the confines of some organization or institutions, but
are now systems of interacting humans and AI agents. Behavioral sciences
have long studied human interactions, including how they are shaped by the
various institutions and organizations humans have developed. We are now
faced with a world in which humans are not just interacting with each other
and through institutions, but are interacting with various forms and layers of
AI. AI guides the information that people get and with whom they interact.
It can influence how people vote, how they do their jobs, how they educate
themselves, and what they do in their spare time. AI Behavioral Science
includes the study of complex and multi-layered interactions between humans
and AI in a variety of contexts. This involves modeling and understanding
such interactions, as well as taking a normative approach of envisioning the
future of human-AI collaboration to maximize benefits for society.
There are three areas of important science here. The first concerns where
and how AI will be interacting with humans, how we study these new and
evolving systems, and what issues are important to address. The second is that
AI brings with it a technological leap that has the potential to both improve
and disrupt our societies on a larger scale and more rapidly than previous
innovations. How do we best anticipate and manage these challenges? The
third is the actual development of AI itself, which involves massive investments
from various sources with differing objectives and interests. How do we deal
with the fact that much of the development is based on profits rather than
social welfare? How do we avoid having systematically biased surrogates?4

3.1

AI-Human Interactions

We begin with a discussion of some of the new arenas in which AI will be
interacting with humans and some of the associated issues.
One type of interaction is in helping people “improve” their behaviors. AI
4

One striking example was the demonstration that a U.S. health insurance reimbursement
algorithm required African Americans to be sicker than their white counterparts to receive
the same level of authorized care [126].

14

technology can drive positive behavioral change by leveraging digital tools
to precisely identify individual biases, design targeted nudges, and deliver
personalized interventions at scale. Advanced data analytics and multimodal
behavioral insights enable more accurate bias detection than traditional
methods, while AI-powered decision systems can holistically address multiple
cognitive biases simultaneously and optimize decisions across domains - a
fundamental shift from traditional decision-by-decision nudging. Crucially,
AI enables dynamic personalization—moving beyond one-size-fits-all nudges
to tailor interventions based on individual heterogeneity, fostering deeper
collaboration between behavioral science and digital innovation for scalable
impact.
AI also shows promise in providing emotional support, especially in areas
like mental health and education [127]. Its lack of personal judgment or
emotional bias makes it an uniquely non-judgmental and potentially unbiased listener, possibly even more empathetic when properly trained. This is
especially valuable in contexts where people fear stigma. Unlike traditional
therapy, AI support is low-cost, always available, and highly accessible. Challenges lie in preventing users from becoming overly emotionally dependent,
as well as ensuring AI responses promote healthier human behaviors rather
than reinforcing stigmas and stereotypes [128]. Understanding the dynamics
of these interactions requires new research on how humans form beliefs and
mental models about the beliefs and mental models AIs have of them [129].
A well-designed emotional support AI could ultimately help people become
better humans—more emotionally self-sufficient, self-healing, and empathetic.
Technologies like Virtual Reality (VR) and Augmented Reality (AR) can
further support this by allowing users to immerse themselves in others’ perspectives and decision-making contexts. Meanwhile, advanced AI systems
may help visualize the broader social impact of personal choices, encouraging
users to reflect on consequences and develop deeper empathy.
Evidence from hiring reveals two enduring lessons about human-AI collaboration. First, well-designed algorithms can raise efficiency and equity:
recommender systems shorten time-to-fill vacancies [130], algorithmic interview filters increase acceptance rates and subsequent productivity [131], and
AI-generated candidate scores help recruiters advance women in STEM [132]5 .
5

An overview of AI’s function in recruitment (candidate sourcing) and selection (candidate evaluation) is provided by Köchling and Wehner [133]. Building upon this work, Will

15

Second, human behaviors impact whether those gains materialize: managers
who discount machine advice make worse hires [135], while AI drafting tools
induce more, but lower-quality, job posts without better matches [136, 137].
In a natural field experiment, [138] provide evidence on how real-time voice
AI agents reshape incentives, bias, and complementarities in labor markets.
AI has also been reshaping how people learn social and other skills by
enabling interactive, low-risk environments for practicing complex skills.
Especially with social simulation, AI can be customized to imitate a variety
of specific individuals and idiosyncratic behaviors. This opens up possibilities
for people to learn in low-stakes artificial contexts where they interact with
AI rather than other humans.6 The AI Partner and AI Mentor framework
[140] proposed using AI for social skill training by using simulated practice for
experiential learning and by using simulated AI mentors to offer personalized
feedback based on domain expertise and factual knowledge. Here, AI-based
simulation allows for repeated, adaptive, and individualized experiences,
which are especially valuable in domains that involve communication and
interpersonal dynamics.
A growing body of work demonstrates how AI’s capabilities can be applied
across much wider domains of human-AI interactions. The potential of humanAI interaction is emerging in the context of education, science, interviews,
groups and experts, managing risk, law enforcement, medicine, and creative
arts [141, 142]. It has been shown that LLM dialogues can reduce conspiracy
theorizing [143], and LLMs can facilitate compromise in highly polarized
groups [144].
In education, GPTeach [145] simulated a programming course in which
simulated students made mistakes and asked questions like real students,
allowing novice TAs to practice across a wide range of student behaviors. TutorCopilot [146] offered real-time support to tutors based on expert guidance.
In social learning, Rehearsal [147] helped users practice conflict resolution by
simulating difficult conversations, while [148] used AI to provide feedback on
et al. [134] find that AI generally equals or exceeds human recruiters in terms of efficiency
and effectiveness.
6
This has some parallels to other arenas in which AI is enabling new knowledge. For
example, in discovering new drugs to fight cancer and other diseases, not only can AI help
model and develop new drugs, but it can simulate how they will work in humans without
actually testing drugs on real humans, providing a much faster and lower cost step in
testing and learning [139].

16

politeness and discourse strategies to foster constructive political dialogue. In
mental health, [149] and [150] created simulated patients and AI supervisors
that allow counselors to train across a range of scenarios. Overall, these efforts
highlight the emerging role of AI as a tool for training and feedback, marking
a key expansion from an information provider to a partner and collaborator
in human learning.
All these cases reveal that AI can change how people learn, which raises
profound research questions that may reshape educational theory and practice
for decades to come [151, 152]. First, how does AI assistance differentially
impact human cognitive development across various contexts [153, 154], and
under what conditions can AI match or outperform human instructors in
educational effectiveness? Second, given that students may interact differently
with AI compared to how they interact with human instructors, existing learning science theories may or may not be applicable to AI tutors [155]. What
novel theoretical paradigms might better capture and explain these distinctive
AI-mediated learning relationships? Third, how might we optimally integrate
human pedagogical expertise with AI capabilities to create next-generation
teaching practices? Preliminary research suggests promising complementarities when incorporating teacher expertise and AI tutor instructional design
[156], pointing toward hybrid educational models that leverage the strengths
of both humans and AI.
As the transformative potential of generative AI reshapes the breadth and
depth of human-AI interaction, understanding the psychological and social
consequences of these interactions on human participants has become critically
important. Beyond the extensive efforts that highlight productivity and creativity gains from AI assistance [157, 158], recent findings highlight concerning
patterns on human well-being, e.g. high-intensity users demonstrate increased
emotional dependence and reduced socialization [159]. In addition to usage
volume, interaction modes can significantly impact human perceptions of
themselves: when LLMs initiate human-AI co-writing processes, users report
diminished perceived autonomy and self-efficacy compared to human-first
approaches where humans create initial drafts before requesting LLM revisions
[160]. These early signals suggest research could expand beyond performance
metrics to develop nuanced frameworks for healthy and sustainable human-AI
relationships that preserve, if not enhance, psychological well-being, social
connection, and human autonomy. We anticipate increased investigation into
how interaction design, usage patterns, and contextual factors might foster
17

beneficial rather than detrimental psychological outcomes as these systems
become increasingly embedded in daily life.
Despite the enthusiasm about human-AI complementarity, recent literature
also highlights several potential concerns. For example, worker well-being
can erode when AI decision assistants become “digital overseers,” raising
stress and diminishing perceived autonomy [161, 162]. As many AI models are
trained with the objective of defeating human players or achieving superhuman
performance [163], their behavior in real-world scenarios may set humans up
for failure. In scenarios like autonomous driving, the AI often turns the human
into a last-resort fallback who must intervene only during rare, dangerous
edge cases [164, 165]. In fact, even perfect hand-offs cannot solve fundamental
communication and persuasion limits, and the inefficiency of processing such
information may lead to human operators routinely discounting or overtrusting the algorithms [166, 167]. Recent empirical results and developments
in impossibility theorems have highlighted these “no-free-lunch” limits of AI
interpretability or human-AI complementarity [168, 169, 170, 171].
It is already clear that humans act differently when interacting with AI
than with other humans [172, 173, 174, 175]. On the one hand, AI may be
thought of as being less judgmental than other humans. On the other hand,
it might also be less capable of being empathetic in particular situations
where other humans may have ample experience. There are also questions of
confidentiality and security, as we already know things that are shared on
social media can become widely public quickly. Understanding the evolving
interactions and how they change how humans behave, and when they can lead
to overall improvements in behavior, is an important frontier. There are many
different arenas in which the role of AI will be different, so understanding
how the context in question impacts the emerging behavior is vital. These
are areas in which the modeling of games and other complex systems in the
behavioral sciences can be leveraged.
One aspect of this that deserves particular attention is that humans and
AI interact in more than just one context at a time. For example, people may
use AI as a tool for gathering information but then interact on an AI-guided
platform, which then shapes team production. These interact with other
parts of a society or economy. Effectively, AI and humans are interacting
across many layers and contexts to produce whole ecosystems. Analyzing
each part in isolation can miss important interactive features and weaknesses

18

due to systemic properties. The study of such ecosystems may involve the
development of new game theory and other behavioral science tools.7
In particular, the basic idea of “assessing AI” while referring to AI as a
single entity can be a source of significant loss in social welfare. In realistic
ecosystems, different AI agents with different designs and capabilities take
many roles, and the alignment between these AI agents, as well as with
humans with whom they interact, is essential. This is already evident in
the dramatically changing search/question answering systems, central to
our life, where there are AI agents in the ranker, query formulation, and
document generation parts of the Information Retrieval ecosystem, and issues
of alignment of these agents are crucial for overall social welfare [177]. The
above can be associated with a more general view of AI ecosystems, consisting
of producers, consumers, and market makers, where each component may
involve a different form of AI agent (or a human agent), and the alignment of
components may be crucial for the overall ecosystem behavior (Figure 4).

3.2

AI’s Economic Impact

Next, let us discuss the science of how AI will change societies. The acceleration in AI’s emergence gives rise to a need for (new) economic insights on how
AI will transform the global and local economies. As mentioned above, AI’s
capabilities lead many to predict that they will surpass humans at any purely
cognitive task in the near future, with the remainder of tasks eventually
to follow. Forms of AI have already displaced labor in many arenas, from
accountants to travel agents. It has dramatically altered the retail shopping
industry and is poised to do the same in the driving/transportation industry.
It shows promise in new areas, for instance, dramatically outperforming
analysts in picking stock portfolios [178]. This does not necessarily mean
that AI will replace humans in all economic activities, but it does suggest
the potential for large declines in the relative importance of human labor
in production and across much wider parts of the economy than previous
technological transformations.
7

It is also proving to be useful to use combinations of AI together, much as humans
might use teams whose members have different expertise to solve a problem (e.g., [176]).
Multimember teams of AI can police each other, query each other, refine each other’s
perspectives, and do other things that help provide improved collective behavior.

19

Figure 4: Key layers of the human–AI ecosystem: AI as personalized assistants
or collaborators at the individual level, as agents and systems embedded within
organizations, and embedded in many interacting layers in broad societal
ecosystems. AI’s applications extend beyond those listed.

20

At least for the medium term, the economic concept of comparative
advantage provides many insights. Even if one mode of production (nonhuman) has an absolute advantage on all or most tasks, as long as it is not free,
prices and wages adjust so that the less-productive mode (human labor) is still
used where it has the best relative advantage. Tasks that are least amenable
to the list of AI capabilities above, for instance, are those that are constantly
changing and presenting new challenges, require dexterity, etc. These face the
least pressure for displacement. For instance, it could be that doctors, whose
main task is providing diagnoses from a list of symptoms and prescribing
treatments, are displaced in greater numbers than nurse practitioners, who
have many tasks that require human dexterity (for instance, inserting a needle
into a vein or helping an injured patient shower).
Figure 5 illustrates how successive technological waves, from agricultural
mechanization to manufacturing automation to AI, have displaced labor,
created new jobs, and progressively reshaped inequality, with AI posing the
broadest and fastest disruption yet [179, 180, 181, 182, 183].
The potential for AI to change the way labor is deployed around the
economy is much larger in both scale and scope than previous technological
advances, with at least 46% of US jobs already exposed to significant changes
[182]. A recent study of jobs in Chile finds that at least 80 percent of workers
are in jobs in which generative AI could accelerate at least 30 percent of
their tasks [184]. History suggests that such changes, coupled with growth
in productivity, can be disruptive and lead to increases in inequality. For
instance, the displacement of labor in agriculture and later in manufacturing
led to pockets of severe poverty in the US and in other countries around
the world during the periods in which such advances were most rapid in
each economy. In 1900, fifteen percent of the US population (11.7 million)
worked in the cultivation of crops, livestock production, forestry, hunting,
and fishing, while by 2019 it was less than one percent (2.3 million), with
a much higher total (real adjusted) value of production.8 This involved
generations of migration from rural to suburban and urban areas and different
careers. Dramatic drops in employment since the 1980s have occurred in
manufacturing losing more than 1/3 of its employment, while employment
in business, education and health services have more than tripled since the
8

Our World in Data based on the primary dataset on labor force participation, published
by the International Labor Organization (via the World Bank).

21

Figure 5: Major technological waves have led to both labor displacement
and new job creation, with uneven economic implications. Learning from
past technological advancements can help optimize the benefits and the
minimization of disruptive costs.

22

Figure 6: Contrasting roles of AI integration into the workforce: replacing
human labor vs. enhancing human capabilities and creating new ones. Enabling widespread benefits requires thoughtful design and guidance.
1980s.9 As a result, some studies have attributed over half the increase in US
wage inequality since 1980 to the automation of routine task-intensive jobs
[180].
There are many views about the macroeconomic impact of the newest wave
of technologies including AI and various forms of robotics and automation
[185, 186]. A model focused solely on the automation potential of current AI
finds it will contribute less than one percentage point to economic growth over
the next decade [187], while models emphasizing positive feedback between
AI investments and the ease of future scientific innovations anticipate a
large transformation of the economy, with much larger global growth rates
[188, 189, 190].
While accurately predicting technological development and deployment
over decades may be impossible, models for scenario planning can help guide
policy as uncertainty is resolved. For example, ongoing research builds on
agent-based computable general equilibrium overlapping generations models
to understand the interaction of government tax, trade, and regulatory policy
with technological innovations in creating macroeconomic and distributional
outcomes [191, 192]. AI tools will also be useful in improving and accelerating
the development of these models: neoclassical agents may be replaced with AI
ones which have more realistic behaviors and can handle strategic situations;
9
For example, see Bureau of Labor Statistics, “Forty years of falling manufacturing
employment”, Beyond the Statistics, November 2020,Vol. 9, No. 16.

23

surrogate AI models of the simulation will speed model development and
testing; and AI based prediction tools can be married to structural projections
to retain the best features of both.
Anticipating disruptions and identifying occupations and regions that will
be most severely impacted [193] can help steer government fiscal, regulatory,
and education policy and minimize the damage of such ‘creative destruction’
and guide the development and deployment of AI to the most beneficial paths.
For example, policymakers must avoid the “Turing Trap”: the economic pitfall
that arises when innovators overly focus their research and development on
building human-like AIs that substitute for workers rather than augmenting
them. Investment that flows into AI that is designed entirely to replace humans
can widen wage inequality and leave vast reserves of untapped productivity
on the table. Redirecting incentives toward complementary, human-enhancing
AI can help society escape the trap and ensure that the gains from AI are
widely shared [181]. There is evidence that new AI technologies are doing
both (e.g., [194, 195, 196]).

3.3

AI Production

Finally, we briefly mention that is important to understand is the actual
production of AI itself [197]. The brevity of this discussion is not because of
a lack of importance, but because of the rapid emergence of this as a topic.
Traditional industrial organization studies [198, 199] offer substantial insight,
but the details of this new industry are complex and unique. The potential
profits from various applications are enormous, which is attracting massive
amounts of investment. Much of the development is by private parties who
wish to keep the design details private. Given that the designers’ objectives
and those of society may not align (e.g., designing systems that maximize
human engagement and emotional response rather than learning and welfare),
it is essential to understand the economics, profitability, incentives, legality,
and ethics of AI production [200]. The economies of scope and scale, as well
as the network externalities involved with AI, can lead to inefficient marketbased outcomes [201]. Technology is emerging at a much faster rate than we
can comprehend, and across various governmental jurisdictions, making this
another area in urgent need of study.

24

4

Discussion

Science is not always efficient. Given that it involves synergies and complementarities between different researchers, teams, and the public and private
sectors, it exhibits the characteristics of a coordination game and is rife with
externalities. It also provides public goods, as the generated knowledge can be
shared broadly. Given these features, neither markets nor a set of disparate
private and public institutions, such as universities, will lead to sufficient
levels of scientific discovery. Nor do they efficiently solve the coordination
problem. Thus, it can be useful to help guide and fertilize science. As the
new field of “AI Behavioral Science” is emerging rapidly and organically,
the purpose of this article is to facilitate coordination by identifying and
discussing key areas of focus, both in terms of foundations and potential
policies.

25

References
[1] Hornik, K., Stinchcombe, M. & White, H. Multilayer feedforward
networks are universal approximators. Neural networks 2, 359–366
(1989).
[2] Goodfellow, I., Bengio, Y., Courville, A. & Bengio, Y. Deep learning,
vol. 1 (MIT press Cambridge, 2016).
[3] Wang, J. Y. et al. A survey on human-centric llms. arXiv preprint
arXiv:2411.14491 (2024).
[4] Athey, S. & Imbens, G. W. Machine learning methods that economists
should know about. Annual Review of Economics 11, 685–725 (2019).
[5] LeCun, Y., Bengio, Y. & Hinton, G. Deep learning. nature 521, 436–444
(2015).
[6] Silver, D. et al. Mastering the game of go with deep neural networks
and tree search. nature 529, 484–489 (2016).
[7] Sutton, R. S., Barto, A. G. et al. Reinforcement learning: An introduction, vol. 1 (MIT press Cambridge, 1998).
[8] Russell, S. J. & Norvig, P. Artificial intelligence: a modern approach
(pearson, 2016).
[9] Kwa, T. et al. Measuring ai ability to complete long tasks. arXiv
preprint arXiv:2503.14499 (2025).
[10] Bengio, Y., Courville, A. & Vincent, P. Representation learning: A
review and new perspectives. IEEE transactions on pattern analysis
and machine intelligence 35, 1798–1828 (2013).
[11] Esteva, A. et al. Dermatologist-level classification of skin cancer with
deep neural networks. nature 542, 115–118 (2017).
[12] Foerster, J., Assael, I. A., De Freitas, N. & Whiteson, S. Learning to
communicate with deep multi-agent reinforcement learning. Advances
in neural information processing systems 29 (2016).

26

[13] Lowe, R. et al. Multi-agent actor-critic for mixed cooperativecompetitive environments. Advances in neural information processing
systems 30 (2017).
[14] Howard, J. & Ruder, S. Universal language model fine-tuning for text
classification. arXiv preprint arXiv:1801.06146 (2018).
[15] Dathathri, S. et al. Plug and play language models: A simple approach
to controlled text generation. In International Conference on Learning
Representations (2020). URL https://openreview.net/forum?id=
H1edEyBKDS.
[16] Singhal, P., Walambe, R., Ramanna, S. & Kotecha, K. Domain adaptation: challenges, methods, datasets, and applications. IEEE access 11,
6973–7020 (2023).
[17] Miller, T. Explanation in artificial intelligence: Insights from the social
sciences. Artificial intelligence 267, 1–38 (2019).
[18] Elazar, Y. et al. Measuring and improving consistency in pretrained
language models. Transactions of the Association for Computational
Linguistics 9, 1012–1031 (2021).
[19] Zhou, L. et al. Predictable artificial intelligence. arXiv preprint
arXiv:2310.06167 (2023).
[20] Konda, V. & Tsitsiklis, J. Actor-critic algorithms. Advances in neural
information processing systems 12 (1999).
[21] Huang, J. et al. Large language models can self-improve. arXiv preprint
arXiv:2210.11610 (2022).
[22] Madaan, A. et al. Self-refine: Iterative refinement with self-feedback.
Advances in Neural Information Processing Systems 36, 46534–46594
(2023).
[23] Kumar, A. et al. Training language models to self-correct via reinforcement learning. arXiv preprint arXiv:2409.12917 (2024).
[24] Schut, L. et al. Bridging the human–ai knowledge gap through concept
discovery and transfer in alphazero. Proceedings of the National Academy
of Sciences 122, e2406675122 (2025).
27

[25] Kleinberg, J., Lakkaraju, H., Leskovec, J., Ludwig, J. & Mullainathan,
S. Human decisions and machine predictions. The quarterly journal of
economics 133, 237–293 (2018).
[26] Kleinberg, J., Ludwig, J., Mullainathan, S. & Sunstein, C. R. Algorithms
as discrimination detectors. Proceedings of the National Academy of
Sciences 117, 30096–30100 (2020).
[27] Chen, R. J. et al. Algorithmic fairness in artificial intelligence for
medicine and healthcare. Nature biomedical engineering 7, 719–742
(2023).
[28] Gulshan, V. et al. Development and validation of a deep learning algorithm for detection of diabetic retinopathy in retinal fundus photographs.
jama 316, 2402–2410 (2016).
[29] Hossain, M. Autonomous delivery robots: A literature review. IEEE
Engineering Management Review 51, 77–89 (2023).
[30] Alverhed, E. et al. Autonomous last-mile delivery robots: a literature
review. European Transport Research Review 16, 4 (2024).
[31] Dai, J., Li, R., Liu, Z. & Lin, S. Impacts of the introduction of
autonomous taxi on travel behaviors of the experienced user: Evidence
from a one-year paid taxi service in guangzhou, china. Transportation
Research Part C: Emerging Technologies 130, 103311 (2021).
[32] Abdel-Aty, M. & Ding, S. A matched case-control analysis of autonomous vs human-driven vehicle accidents. Nature communications
15, 4931 (2024).
[33] Mei, Q., Xie, Y., Yuan, W. & Jackson, M. O. A turing test of whether
ai chatbots are behaviorally similar to humans. Proceedings of the
National Academy of Sciences 121, e2313925121 (2024).
[34] Aher, G. V., Arriaga, R. I. & Kalai, A. T. Using large language models
to simulate multiple humans and replicate human subject studies. In
International Conference on Machine Learning, 337–371 (PMLR, 2023).
[35] Horton, J. J. Large language models as simulated economic agents:
What can we learn from homo silicus? Tech. Rep., National Bureau of
Economic Research (2023).
28

[36] Manning, B. S., Zhu, K. & Horton, J. J. Automated social science:
Language models as scientist and subjects. Tech. Rep., National Bureau
of Economic Research (2024).
[37] Jones, C. R. & Bergen, B. K. Large language models pass the turing
test. arXiv preprint arXiv:2503.23674 (2025).
[38] Camerer, C. F. Behavioral game theory: Experiments in strategic
interaction (Princeton university press, 2011).
[39] Kahneman, D. Prospect theory: An analysis of decisions under risk.
Econometrica 47, 278 (1979).
[40] Laibson, D. Golden eggs and hyperbolic discounting. The Quarterly
Journal of Economics 112, 443–478 (1997).
[41] Fehr, E. & Schmidt, K. M. A theory of fairness, competition, and
cooperation. The quarterly journal of economics 114, 817–868 (1999).
[42] Bolton, G. E. & Ockenfels, A. Erc: A theory of equity, reciprocity, and
competition. American economic review 91, 166–193 (2000).
[43] Rabin, M. Inference by believers in the law of small numbers. The
Quarterly Journal of Economics 117, 775–816 (2002).
[44] Xie, Y., Mei, Q., Yuan, W. & Jackson, M. O. Using language models to
decipher the motivation behind human behaviors. PNAS forthcoming,
arXiv preprint arXiv:2503.15752 (2025).
[45] Zinkevich, M., Johanson, M., Bowling, M. & Piccione, C. Regret
minimization in games with incomplete information. Advances in neural
information processing systems 20 (2007).
[46] Brown, N. & Sandholm, T. Superhuman ai for multiplayer poker.
Science 365, 885–890 (2019).
[47] Ambady, N. & Rosenthal, R. Thin slices of expressive behavior as
predictors of interpersonal consequences: A meta-analysis. Psychological
bulletin 111, 256 (1992).

29

[48] Macrae, C. N., Milne, A. B. & Bodenhausen, G. V. Stereotypes as
energy-saving devices: A peek inside the cognitive toolbox. Journal of
personality and Social Psychology 66, 37 (1994).
[49] Hausladen, C. I., Knott, M., Camerer, C. F. & Perona, P. Social perception of faces in a vision-language model. arXiv preprint
arXiv:2408.14435 (2024).
[50] Fedyk, A., Kakhbod, A., Li, P. & Malmendier, U. Ai and perception
biases in investments: An experimental study. Available at SSRN
4787249 (2024).
[51] Xie, Y. et al. Be. fm: Open foundation models for human behavior.
arXiv preprint arXiv:2505.23058 (2025).
[52] Kim, J., Evans, J. & Schein, A. Linear representations of political perspective emerge in large language models. arXiv preprint
arXiv:2503.02080 (2025).
[53] Gero, K. I. et al. Mental models of ai agents in a cooperative game
setting. In Proceedings of the 2020 chi conference on human factors in
computing systems, 1–12 (2020).
[54] Lu, W., Zhao, X., Spisak, J., Lee, J. H. & Wermter, S. Mental modelling
of reinforcement learning agents by language models. Transactions on
Machine Learning Research (2025). URL https://openreview.net/
forum?id=JN7iNWaPTe.
[55] Strachan, J. W. et al. Testing theory of mind in large language models
and humans. Nature Human Behaviour 8, 1285–1295 (2024).
[56] Herrmann, D. A. & Levinstein, B. A. Standards for belief representations
in llms. Minds and Machines 35, 1–25 (2025).
[57] Davies, A. & Khakzar, A. The cognitive revolution in interpretability:
From explaining behavior to interpreting representations and algorithms.
arXiv preprint arXiv:2408.05859 (2024).
[58] Miehling, E. et al. Evaluating the prompt steerability of large language
models. arXiv preprint arXiv:2411.12405 (2024).

30

[59] Chen, K., He, Z., Shi, T. & Lerman, K. Steer-bench: A benchmark
for evaluating the steerability of large language models. arXiv preprint
arXiv:2505.20645 (2025).
[60] Goli, A. & Singh, A. Frontiers: Can large language models capture
human preferences? Marketing Science 43, 709–722 (2024).
[61] Shen, H. et al. Towards bidirectional human-ai alignment: A systematic
review for clarifications, framework, and future directions. arXiv preprint
arXiv:2406.09264 (2024).
[62] Wang, Y. et al. Aligning large language models with human: A survey.
arXiv preprint arXiv:2307.12966 (2023).
[63] Ross, J., Kim, Y. & Lo, A. W. Llm economicus? mapping the behavioral
biases of llms via utility theory. arXiv preprint arXiv:2408.02784 (2024).
[64] Cheung, V., Maier, M. & Lieder, F. Large language models show
amplified cognitive biases in moral decision-making. Proceedings of the
National Academy of Sciences 122, e2412015122 (2025).
[65] Jang, M., Kwon, D. S. & Lukasiewicz, T. Becel: Benchmark for consistency evaluation of language models. In Proceedings of the 29th International Conference on Computational Linguistics, 3680–3696 (2022).
[66] Yang, J. C., Dalisan, D., Korecki, M., Hausladen, C. I. & Helbing,
D. Llm voting: Human choices and ai collective decision-making. In
Proceedings of the AAAI/ACM Conference on AI, Ethics, and Society,
vol. 7, 1696–1708 (2024).
[67] Leng, Y. Can llms mimic human-like mental accounting and behavioral
biases? Available at SSRN 4705130 (2024).
[68] Hessel, J. et al. Do androids laugh at electric sheep? humor “understanding” benchmarks from the new yorker caption contest. In
Proceedings of the 61st Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers), 688–714 (2023).
[69] Jiang, G. et al. Evaluating and inducing personality in pre-trained
language models. Advances in Neural Information Processing Systems
36, 10622–10643 (2023).
31

[70] Peng, K. & Garg, N. Monoculture in matching markets. Advances in
Neural Information Processing Systems 37, 81959–81991 (2024).
[71] Chen, Y., Liu, T. X., Shan, Y. & Zhong, S. The emergence of economic
rationality of gpt. Proceedings of the National Academy of Sciences
120, e2316205120 (2023).
[72] Benkler, N., Mosaphir, D., Friedman, S., Smart, A. & SchmerGalunder, S. Assessing llms for moral value pluralism. arXiv preprint
arXiv:2312.10075 (2023).
[73] Yang, L. et al. Out-of-distribution generalization in natural language
processing: Past, present, and future. In Proceedings of the 2023
Conference on Empirical Methods in Natural Language Processing, 4533–
4559 (2023).
[74] Lampinen, A. K. et al. On the generalization of language models from
in-context learning and finetuning: a controlled study. arXiv preprint
arXiv:2505.00661 (2025).
[75] Truong, S., Tu, Y., Liang, P., Li, B. & Koyejo, S. Reliable and efficient
amortized model-based evaluation. arXiv preprint arXiv:2503.13335
(2025).
[76] Broska, D., Howes, M. & van Loon, A. The mixed subjects design:
Treating large language models as potentially informative observations.
Sociological Methods & Research 00491241251326865 (2024).
[77] Lee, V. V., van der Lubbe, S. C., Goh, L. H. & Valderas, J. M. Harnessing chatgpt for thematic analysis: Are we ready? Journal of Medical
Internet Research 26, e54974 (2024).
[78] Gentzkow, M., Kelly, B. & Taddy, M. Text as data. Journal of Economic
Literature 57, 535–574 (2019).
[79] Guo, Y., Jackson, M. O. & Jia, R. Comrades and cause: Peer influence on west point cadets’ civil war allegiances. Tech. Rep., Arxiv
https://doi.org/10.48550/arXiv.2507.09419 (2024).
[80] Salazar-Miranda, A. et al. Exploring the social life of urban spaces
through ai. Proceedings of the National Academy of Sciences 122,
e2424662122 (2025).
32

[81] Coletta, A., Dwarakanath, K., Liu, P., Vyetrenko, S. & Balch, T. Llmdriven imitation of subrational behavior: Illusion or reality? arXiv
preprint arXiv:2402.08755 2 (2024).
[82] Grossmann, I. et al. Ai and the transformation of social science research.
Science 380, 1108–1109 (2023).
[83] Dillion, D., Tandon, N., Gu, Y. & Gray, K. Can ai language models
replace human participants? Trends in Cognitive Sciences 27, 597–600
(2023).
[84] Argyle, L. P. et al. Out of one, many: Using language models to
simulate human samples. Political Analysis 31, 337–351 (2023).
[85] Sreedhar, K. & Chilton, L. Simulating human strategic behavior:
Comparing single and multi-agent llms. arXiv preprint arXiv:2402.08189
(2024).
[86] Xie, C. et al. Can large language model agents simulate human trust behavior? In The Thirty-eighth Annual Conference on Neural Information
Processing Systems (2024).
[87] Hewitt, L., Ashokkumar, A., Ghezae, I. & Willer, R. Predicting results
of social science experiments using large language models (2025). URL
https://docsend.com/view/qeeccuggec56k9hd.
[88] Holland, J. H. & Miller, J. H. Artificial adaptive agents in economic
theory. The American economic review 81, 365–370 (1991).
[89] De Marchi, S. & Page, S. E. Agent-based models. Annual Review of
political science 17, 1–20 (2014).
[90] Axtell, R. L. & Farmer, J. D. Agent-based modeling in economics and
finance: Past, present, and future. Journal of Economic Literature 63,
197–287 (2025).
[91] Geiecke, F. & Jaravel, X. Conversations at scale: Robust ai-led interviews with a simple open-source platform. Available at SSRN 4974382
(2024).

33

[92] Kim, J. & Lee, B. Ai-augmented surveys: Leveraging large language models and surveys for opinion prediction. arXiv preprint
arXiv:2305.09620 (2023).
[93] Almaatouq, A. et al. Beyond playing 20 questions with nature: Integrative experiment design in the social and behavioral sciences. Behavioral
and Brain Sciences 47, e33 (2024).
[94] Qu, A. No humans were harmed in the making of this paper (2025).
[95] Ma, W. et al. Simulated misinformation susceptibility (smists): Enhancing misinformation research with large language model simulations.
In Findings of the Association for Computational Linguistics ACL 2024,
2774–2788 (2024).
[96] Scherrer, N., Shi, C., Feder, A. & Blei, D. Evaluating the moral beliefs
encoded in llms. Advances in Neural Information Processing Systems
36, 51778–51809 (2023).
[97] Bail, C. A. Can generative ai improve social science? Proceedings of
the National Academy of Sciences 121, e2314021121 (2024).
[98] Kozlowski, A. C., Kwon, H. & Evans, J. A. In silico sociology: forecasting covid-19 polarization with large language models. arXiv preprint
arXiv:2407.11190 (2024).
[99] Varnum, M. E., Baumard, N., Atari, M. & Gray, K. Large language
models based on historical text could offer informative tools for behavioral science. Proceedings of the National Academy of Sciences 121,
e2407639121 (2024).
[100] Binz, M. et al. A foundation model to predict and capture human
cognition. Nature 1–8 (2025).
[101] Kozlowski, A. C. & Evans, J. Simulating subjects: The promise and
peril of ai stand-ins for social agents and interactions (2025). URL
osf.io/preprints/socarxiv/vp3j2_v3.
[102] Lippert, S. et al. Can large language models help predict results from a
complex behavioural science study? Royal Society Open Science 11,
240682 (2024).
34

[103] Hanson, R. Could gambling save science? encouraging an honest
consensus (1995).
[104] Dreber, A. et al. Using prediction markets to estimate the reproducibility
of scientific research. Proceedings of the National Academy of Sciences
112, 15343–15347 (2015).
[105] DellaVigna, S., Pope, D. & Vivalt, E. Predict science to improve science.
Science 366, 428–429 (2019).
[106] Abdurahman, S. et al. Perils and opportunities in using large language
models in psychological research. PNAS nexus 3, pgae245 (2024).
[107] Charness, G., Jabarian, B. & List, J. A. The next generation of
experimental research with llms. Nature Human Behaviour 1–3 (2025).
[108] Milkman, K. L. et al. Megastudies improve the impact of applied
behavioural science. Nature 600, 478–483 (2021).
[109] Peterson, J. C., Bourgin, D. D., Agrawal, M., Reichman, D. & Griffiths,
T. L. Using large-scale experiments and machine learning to discover
theories of human decision-making. Science 372, 1209–1214 (2021).
[110] Camerer, C. F. et al. Evaluating the replicability of social science
experiments in nature and science between 2010 and 2015. Nature
human behaviour 2, 637–644 (2018).
[111] Alipourfard, N. et al. Systematizing confidence in open research and
evidence (score). SocArXiv (2021).
[112] Yang, Y., Youyou, W. & Uzzi, B. Estimating the deep replicability of
scientific findings using human and artificial intelligence. Proceedings
of the National Academy of Sciences 117, 10762–10768 (2020).
[113] Chakravorti, T. et al. A prototype hybrid prediction market for estimating replicability of published work. In HHAI 2023: Augmenting
Human Intellect, 300–309 (IOS Press, 2023).
[114] Yeykelis, L., Pichai, K., Cummings, J. J. & Reeves, B. Using large
language models to create ai personas for replication, generalization
and prediction of media effects: An empirical test of 133 published
experimental research findings. arXiv preprint arXiv:2408.16073 (2024).
35

[115] Park, J. S. et al. Generative agent simulations of 1,000 people. arXiv
preprint arXiv:2411.10109 (2024).
[116] Voelkel, J. G. et al. Megastudy testing 25 treatments to reduce antidemocratic attitudes and partisan animosity. Science 386, eadh4764
(2024).
[117] Musslick, S. et al. Automating the practice of science: Opportunities,
challenges, and implications. Proceedings of the National Academy of
Sciences 122, e2401238121 (2025).
[118] Chen, Z., Cai, X., Lin, C., Liu, Y.-J. & Meng, J. Promoting pension
participation: Evidence on attention and personalization from two field
experiments. SSRN: 5375178 (2025).
[119] Fisher, R. J. Social desirability bias and the validity of indirect questioning. Journal of consumer research 20, 303–315 (1993).
[120] Pronin, E. Perception and misperception of bias in human judgment.
Trends in cognitive sciences 11, 37–43 (2007).
[121] Antin, J. & Shaw, A. Social desirability bias and self-reports of motivation: a study of amazon mechanical turk in the us and india. In
Proceedings of the SIGCHI Conference on human factors in computing
systems, 2925–2934 (2012).
[122] Dang, J., King, K. M. & Inzlicht, M. Why are self-report and behavioral
measures weakly correlated? Trends in cognitive sciences 24, 267–269
(2020).
[123] Nisbett, R. E. & Ross, L. Human inference: Strategies and shortcomings
of social judgment (1980).
[124] Rozenblit, L. & Keil, F. The misunderstood limits of folk science: An
illusion of explanatory depth. Cognitive science 26, 521–562 (2002).
[125] Babyak, M. A. What you see may not be what you get: a brief, nontechnical introduction to overfitting in regression-type models. Biopsychosocial Science and Medicine 66, 411–421 (2004).

36

[126] Obermeyer, Z., Powers, B., Vogeli, C. & Mullainathan, S. Dissecting
racial bias in an algorithm used to manage the health of populations.
Science 366, 447–453 (2019).
[127] Yin, Y., Jia, N. & Wakslak, C. J. Ai can help people feel heard, but an
ai label diminishes this impact. Proceedings of the National Academy
of Sciences 121, e2319112121 (2024).
[128] Moore, J. et al. Expressing stigma and inappropriate responses prevents
llms from safely replacing mental health providers. In Proceedings of the
2025 ACM Conference on Fairness, Accountability, and Transparency,
599–627 (2025).
[129] Madarász, K., Danz, D. & Wang, S. Projective thinking: Model,
evidence, and applications. Working Paper (2024).
[130] Horton, J. J. The effects of algorithmic labor market recommendations:
Evidence from a field experiment. Journal of Labor Economics 35,
345–385 (2017).
[131] Cowgill, B. Bias and productivity in humans and algorithms: Theory and evidence from resume screening. Columbia Business School,
Columbia University 29 (2020).
[132] Avery, M., Leibbrandt, A. & Vecci, J. Does artificial intelligence
help or hurt gender diversity? evidence from two field experiments on
recruitment in tech (2024).
[133] Köchling, A. & Wehner, M. C. Discriminated by an algorithm: a
systematic review of discrimination and fairness by algorithmic decisionmaking in the context of hr recruitment and hr development. Business
Research 13, 795–848 (2020).
[134] Will, P., Krpan, D. & Lordan, G. People versus machines: introducing
the hire framework. Artificial Intelligence Review 56, 1071–1100 (2023).
[135] Hoffman, M., Kahn, L. B. & Li, D. Discretion in hiring. The Quarterly
Journal of Economics 133, 765–800 (2018).
[136] Wiles, E. & Horton, J. J. More, but worse: The impact of ai writing
assistance on the supply and quality of job posts (2024).
37

[137] Wiles, E. & Horton, J. J. Generative ai and labor market matching
efficiency. Available at SSRN 5187344 (2025).
[138] Jabarian, B. & Henkel, L. Voice ai in firms: A natural field experiment
on automated job interviews (2025).
[139] Blanco-Gonzalez, A. et al. The role of ai in drug discovery: challenges,
opportunities, and strategies. Pharmaceuticals 16, 891 (2023).
[140] Yang, D. et al. Social skill training with large language models. arXiv
preprint arXiv:2404.04204 (2024).
[141] Tabrizi, R. Magic happens at the intersections (2025).
[142] Goldfarb, A., He, X. & Teodoridis, F. Patterns of artificial intelligence
adoption by hospitals. In AEA Papers and Proceedings, vol. 115, 40–45
(American Economic Association 2014 Broadway, Suite 305, Nashville,
TN 37203, 2025).
[143] Costello, T. H., Pennycook, G. & Rand, D. G. Durably reducing
conspiracy beliefs through dialogues with ai. Science 385, eadq1814
(2024).
[144] Tessler, M. H. et al. Ai can help humans find common ground in
democratic deliberation. Science 386, eadq2852 (2024).
[145] Markel, J. M., Opferman, S. G., Landay, J. A. & Piech, C. Gpteach:
Interactive ta training with gpt-based students. In Proceedings of the
tenth acm conference on learning@ scale, 226–236 (2023).
[146] Wang, R. E., Ribeiro, A. T., Robinson, C. D., Loeb, S. & Demszky,
D. Tutor copilot: A human-ai approach for scaling real-time expertise.
arXiv preprint arXiv:2410.03017 (2024).
[147] Shaikh, O., Chai, V. E., Gelfand, M., Yang, D. & Bernstein, M. S.
Rehearsal: Simulating conflict to teach conflict resolution. In Proceedings
of the 2024 CHI Conference on Human Factors in Computing Systems,
1–20 (2024).
[148] Argyle, L. P. et al. Leveraging ai for democratic discourse: Chat interventions can improve online political conversations at scale. Proceedings
of the National Academy of Sciences 120, e2311627120 (2023).
38

[149] Louie, R. et al. Roleplay-doh: Enabling domain-experts to create
llm-simulated patients via eliciting and adhering to principles. In
Proceedings of the 2024 Conference on Empirical Methods in Natural
Language Processing, 10570–10603 (2024).
[150] Hsu, S.-L. et al. Helping the helper: Supporting peer counselors via
ai-empowered practice and feedback. Proceedings of the ACM on HumanComputer Interaction 9, 1–45 (2025).
[151] Zhang, K. & Aslan, A. B. Ai technologies for education: Recent research
& future directions. Computers and education: Artificial intelligence 2,
100025 (2021).
[152] Hau, N. J. M. E. K. C. J. L. I. C. Ai learning differences designing a future with no boundaries. Preprint (2025). URL https:
//acceleratelearning.stanford.edu/app/uploads/2025/07/
AI-Learning-Differences-Designing-a-Future-with-No-Boundaries_
Final.pdf.
[153] Lehmann, M., Cornelius, P. B. & Sting, F. J. Ai meets the classroom:
When does chatgpt harm learning? Available at SSRN 4941259 (2024).
[154] Bastani, H. et al. Generative ai can harm learning. Available at SSRN
4895486 (2024).
[155] Li, T., Ye, T. & Liu, D. Is chatgpt a boon or a bane for learning?
experimental evidence across task formats and chatbot designs (2025).
[156] Garg, R. The impact of generative artificial intelligence on higher
education: Disruption or seamless integration? Available at SSRN
4762814 (2024).
[157] Chen, Z. & Chan, J. Large language model in creative work: The role
of collaboration modality and user expertise. Management Science 70,
9101–9117 (2024).
[158] Brynjolfsson, E., Li, D. & Raymond, L. Generative ai at work. The
Quarterly Journal of Economics qjae044 (2025).
[159] Phang, J. et al. Investigating affective use and emotional well-being on
chatgpt. arXiv preprint arXiv:2504.03888 (2025).
39

[160] Ren, Y., Ye, T. & Zhang, J. Order matters: Ai-first collaboration
mode increases productivity at the cost of worker autonomy and efficacy
(2025).
[161] Jarrahi, M. H., Möhlmann, M. & Lee, M. K. Algorithmic management:
The role of ai in managing workforces. MIT Sloan Management Review
64, 1–5 (2023).
[162] Cram, W. A., Wiener, M., Tarafdar, M. & Benlian, A. Examining the
impact of algorithmic control on uber drivers’ technostress. Journal of
management information systems 39, 426–453 (2022).
[163] Silver, D. et al. Mastering the game of go without human knowledge.
nature 550, 354–359 (2017).
[164] Hancock, P. A., Nourbakhsh, I. & Stewart, J. On the future of transportation in an era of automated and autonomous vehicles. Proceedings
of the National Academy of Sciences 116, 7684–7691 (2019).
[165] Weaver, B. W. & DeLucia, P. R. A systematic review and meta-analysis
of takeover performance during conditionally automated driving. Human
factors 64, 1227–1260 (2022).
[166] Green, B. & Chen, Y. The principles and limits of algorithm-in-theloop decision making. Proceedings of the ACM on human-computer
interaction 3, 1–24 (2019).
[167] Carton, S., Mei, Q. & Resnick, P. Feature-based explanations don’t
help people detect misclassifications of online toxicity. In Proceedings
of the international AAAI conference on web and social media, vol. 14,
95–106 (2020).
[168] Doshi-Velez, F. & Kim, B. Towards a rigorous science of interpretable
machine learning. arXiv preprint arXiv:1702.08608 (2017).
[169] Bansal, G. et al. Does the whole exceed its parts? the effect of ai
explanations on complementary team performance. In Proceedings of
the 2021 CHI conference on human factors in computing systems, 1–16
(2021).

40

[170] Donahue, K., Chouldechova, A. & Kenthapadi, K. Human-algorithm
collaboration: Achieving complementarity and avoiding unfairness. In
Proceedings of the 2022 ACM Conference on Fairness, Accountability,
and Transparency, 1639–1656 (2022).
[171] Peng, K., Garg, N. & Kleinberg, J. A no free lunch theorem for humanai collaboration. In Proceedings of the AAAI Conference on Artificial
Intelligence, vol. 39, 14369–14376 (2025).
[172] Shechtman, N. & Horowitz, L. M. Media inequality in conversation:
how people behave differently when interacting with computers and
people. In Proceedings of the SIGCHI conference on Human factors in
computing systems, 281–288 (2003).
[173] Mou, Y. & Xu, K. The media inequality: Comparing the initial humanhuman and human-ai social interactions. Computers in Human Behavior
72, 432–440 (2017).
[174] Gnewuch, U., Morana, S., Hinz, O., Kellner, R. & Maedche, A. More
than a bot? the impact of disclosing human involvement on customer
interactions with hybrid service agents. Information Systems Research
35, 936–955 (2024).
[175] Goergen, J., de Bellis, E. & Klesse, A.-K. Ai assessment changes
human behavior. Proceedings of the National Academy of Sciences 122,
e2425439122 (2025).
[176] Park, C. et al. Maporl: Multi-agent post-co-training for collaborative
large language models with reinforcement learning. arXiv preprint
arXiv:2502.18439 (2025).
[177] Nachimovsky, H., Tennenholtz, M. & Kurland, O. A multi-agent perspective on modern information retrieval. arXiv preprint arXiv:2502.14796
(2025).
[178] deHaan, E., Lee, C., Liu, M. & Noh, S. The shadow price of. Information
(May 15, 2025) (2025).
[179] Manyika, J. et al. Jobs lost, jobs gained: Workforce transitions in a
time of automation. McKinsey Global Institute 150, 1–148 (2017).

41

[180] Acemoglu, D. & Restrepo, P. Tasks, automation, and the rise in us
wage inequality. Econometrica 90, 1973–2016 (2022).
[181] Brynjolfsson, E. The turing trap: The promise & peril of human-like
artificial intelligence. Daedalus 151, 272–287 (2022).
[182] Eloundou, T., Manning, S., Mishkin, P. & Rock, D. Gpts are gpts:
Labor market impact potential of llms. Science 384, 1306–1308 (2024).
[183] Aghion, P. et al. How different uses of ai shape labor demand: evidence
from france. In AEA Papers and Proceedings, vol. 115, 62–67 (American
Economic Association 2014 Broadway, Suite 305, Nashville, TN 37203,
2025).
[184] Weintraub, G. Y., Morales, V., Carmach, J. E. & Soto, A. Generative
artificial intelligence: Opportunities for the future of work in chile.
Available at SSRN 5187299 (2025).
[185] Acemoglu, D. & Restrepo, P. Artificial intelligence, automation, and
work. In The economics of artificial intelligence: An agenda, 197–236
(University of Chicago Press, 2018).
[186] Jackson, M. O. & Kanik, Z. How automation that substitutes for labor
affects production networks, growth, and income inequality. SSRN
3375523, https://dx.doi.org/10.2139/ssrn.3375523 (2020).
[187] Acemoglu, D. The simple macroeconomics of ai. Economic Policy 40,
13–58 (2025).
[188] Aghion, P., Jones, B. F. & Jones, C. I. Artificial intelligence and
economic growth. Tech. Rep., National Bureau of Economic Research
(2017).
[189] Abis, S. & Veldkamp, L. The changing economics of knowledge production. The Review of Financial Studies 37, 89–118 (2024).
[190] Erdil, E. et al. Gate: An integrated assessment model for ai automation.
arXiv preprint arXiv:2503.04941 (2025).
[191] Benzell, S. G., Kotlikoff, L. J., LaGarda, G. & Ye, V. Y. Simulating endogenous global automation. Tech. Rep., National Bureau of Economic
Research (2021).
42

[192] Benzell, S. G. & Ye, V. Y. Simulating the global effect of transformative
ai: Growth, welfare, economic power, and policy responses (2024).
[193] Andreadis, L., Kalotychou, E., Chatzikonstantinou, M., Louca, C. &
Makridis, C. A. Local heterogeneity in artificial intelligence jobs over
time and space. In AEA Papers and Proceedings, vol. 115, 29–34
(American Economic Association 2014 Broadway, Suite 305, Nashville,
TN 37203, 2025).
[194] Zhou, G., Chu, G., Li, L. & Meng, L. The effect of artificial intelligence
on china’s labor market. China Economic Journal 13, 24–41 (2020).
[195] Hoffmann, M., Boysel, S., Nagle, F., Peng, S. & Xu, K. Generative ai
and the nature of work. Tech. Rep., CESifo Working Paper (2024).
[196] Choi, J. H. & Xie, C. Human plus ai in accounting: Early evidence
from the field (2025).
[197] Frank, M. R. et al. Toward understanding the impact of artificial
intelligence on labor. Proceedings of the National Academy of Sciences
116, 6531–6539 (2019).
[198] Tirole, J. The theory of industrial organization (MIT press, 1988).
[199] Varian, H. Artificial intelligence, economics, and industrial organization. In The economics of artificial intelligence: an agenda, 399–419
(University of Chicago Press, 2018).
[200] Stahl, B. C. & Eke, D. The ethics of chatgpt–exploring the ethical
issues of an emerging technology. International Journal of Information
Management 74, 102700 (2024).
[201] Acemoglu, D. Harms of ai. Tech. Rep., National Bureau of Economic
Research (2021).

43

