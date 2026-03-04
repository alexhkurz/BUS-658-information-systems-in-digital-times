Comment
https://doi.org/10.1038/s41562-025-02137-1

The next generation of experimental
research with LLMs
Gary Charness, Brian Jabarian & John A. List

Check for updates

Large language models (LLMs) can enhance
experimental research via the design and
implementation of studies, and data analysis.
When available, we suggest using LLM-based
tools that require no coding skills and only a
simple human–AI interaction. We discuss the
social risks associated with this integration.
LLMs represent a sophisticated application of machine-learning algorithms, and show promise for many opportunities in science, policy
and society. The human–AI interface, which merges human cognition
with AI algorithms, is central to this evolution, and offers an innovative
collaboration model to address key experimental challenges at scale1
and transform knowledge production that relies on experimentation2.
We show how LLMs can or could soon be integrated into the design,
implementation and analysis of social and economic experiments
through simple human–AI interface solutions.

Experimental research begins by looking for the relevant research
question. This search is carried out by going back and forth between
ideation and literature review. LLM-based specialized applications have
already shown their usefulness for the latter. Although nonspecialized
LLMs are prone to hallucinations (for example, generating inaccurate
or fabricated information), specialized LLM-based tools such as Elicit
help researchers to accurately explore and compare findings from multiple studies across fields. Tools such as ScholarAI and Consensus can
efficiently summarize papers, and some tools (for instance, Humata.AI)
can even crossread multiple articles directly in PDF and summarize
them as groups, which streamlines the literature review process. The
application Research Kick enables users to input broad research topics
and generate refined research questions by providing demographic or
contextual details. It then scans academic databases to check whether
a chosen question addresses gaps in the existing literature.
Once the question is found, LLMs with chat interfaces (such
as ChatGPT) can suggest which type of experiments (laboratory,
laboratory-in-the-field or natural field experiments) seems appropriate
to investigate the given inquiry, and further refinements in the suggestions can be obtained by providing more information, such as budget
or logistic constraints. Still relying on LLMs, trained on large amounts
of human data, researchers can optimally tailor survey wording items
to the targeted population to anticipate and maximize compliance
without need for focus groups or actual interviews. When the study
is simple enough, GPT-4 can generate a formulation, which allows
researchers to refine it. This low-cost capacity enables the research
community to quickly increase the quality of their experiments.

nature human behaviour

Another area in which LLMs can help researchers to increase their
productivity is the coding of their study. For example, Github Copilot
can check and fix coding errors and help to convert the coded design
from one language to another, which enables data collection between
platforms (o-Tree versus Qualtrics) that could be needed to accumulate
different types of samples — which is crucial for external validity3. It can
also improve collaboration between researchers who code studies in
different languages and facilitate the reproduction and replication of
studies. Another example of an LLM-based tool that assists with coding
is the beta expert generative pretrained transformer (GPT) BehavioralScientist, developed by one of the authors (B.J.), which shows promise
in generating the code and providing a QSF file with Javascript directly
to be imported into one’s Qualtrics account, given the language and
design of the study. This expert GPT has been contextualized on the
basis of public libraries of Qualtrics coded study templates, such as
SMARTRIQS4, and specific public guidelines for designing experiments in Qualtrics. ExpectedParrot is more ambitious, but demands
advanced coding skills; it aims to automate the entire process from
design to implementation in data-populated simulations5. However,
whether these LLM-based simulations consistently represent factual data remains a topic of debate6. Such LLMs could revolutionize
the field by making sophisticated designs accessible and scalable to
more researchers.
Continuing in the benefits of open experimental science, LLMs
(even those such as GPT-4) are already good enough to streamline
and standardize the generation of scientific documentation from
Volume 9 | May 2025 | 833–835 | 833

CREDIT: VALENTINE AMOSENKOV/ALAMY STOCK VECTOR

LLMs in experimental design

Comment

institutional review board protocols to preanalysis plans and preregistration, which helps to increase the reliability of research findings7.
For example, the beta expert GPT ReproductibilityGPT, developed
by one of the authors (B.J.), not only takes as input the diverse files of
a given study and proposes suggestions to standardize their naming
and README files, but also comments more extensively on different
codes in their files to make it easier for other researchers to reproduce
the study.

LLMs in experimental implementation
AI-powered chatbots have the potential to improve efficiency and
productivity in multiple aspects of experimental implementation. For
example, these chatbots could provide detailed and instant responses
to participant inquiries, and substantially improve human support
efficiency. Their scalability allows for extensive participant assistance,
addressing queries, and clarifying instructions; this is crucial for maintaining compliance and construct validity in online experiments. For
example, chatbase.co allows researchers to connect data sources,
train AI chatbots and deploy them by embedding a simple HTML code
in two clicks.
In the future, chatbots could even dynamically adjust experimental tasks on the basis of participant responses, tailor the difficulty of
tasks in cognitive-ability experiments or prioritize questions in assessments, which would enable a type of live, personalized experiment.
This personalized approach could ensure accurate data collection that
is tailored to each participant’s understanding and abilities. Through
chat assistants, AI agents could also simulate complex human-like
social interactions, and allow humans and AI to participate in interactive games-based experiments. AI chat assistants could also help to
maintain participant engagement by providing guidance and feedback within the chat interface, which would reduce cognitive load and
experimental fatigue.
Advanced AI agents could detect and prevent cheating automatically by monitoring participant actions such as browser activity, as
well as through techniques implemented manually (for example,
with Javascript as in ref. 8). They could analyse the responses of the
participants for inconsistencies, which would enable researchers
to address potential cheating proactively. By providing real-time
reminders and support, AI agents can ensure a more controlled
experimental environment and foster higher-quality data collection
— especially for experiments outside of the laboratory (such as field
experiments) — thereby helping to maintain some of the virtues of
laboratory experiments in the field and improve field experiment
quality9. Finally, LLMs can help to incentivize cognitive economic
experiments (as done in ref. 8), in which standard incentive techniques often do not apply.

LLMs in data analysis
LLMs are reshaping the landscape of social and economic experiment
analysis, and offer substantial advancements in data handling and interpretation. These models contribute in two main ways: by automating
routine data-analysis tasks and by offering new behavioural data to
explore alongside experimental data.
First, LLMs such as the OpenAI code interpreter running on GPT-4
can streamline data analysis by automating tasks such as sanitization
and examining relationships within datasets. Advanced features such as
ChatGPT Code Interpreter enhance efficiency and accuracy in analysing complex social and economic data. This automation saves time and
can improve consistency and objectivity in data handling.

nature human behaviour

Second, researchers can now leverage human interaction data
from participants who chat with chatbots during experiments to understand their choice process, which helps to reduce measurement errors.
LLMs could use question frequency, engagement levels and sentiment
expressions in chat logs for specific treatments that would offer access
to chat assistants (to avoid affecting the entire experiment). These
insights could lead to a richer understanding of experimental outcomes, and foster the development of nuanced hypotheses and more
comprehensive statistical tests.
In addition, ChatGPT Code Interpreter can help to run statistical
tests, develop econometric models and establish causal relationships.
This model, and similar tools, models apply state-of-the-art techniques
that have the potential to facilitate robust and reliable findings. LLMs
can also generate insightful data visualizations that help in the understanding and communication of complex results.
After the analysis, LLMs can help to compare completed research
with preregistration plans, by identifying deviations or new variables introduced. Although no specific examples have yet been documented, these tools have the potential to distinguish between
confirmatory and exploratory analyses, and to ensure adherence to
open science. Their growing proficiency in detecting AI-generated
code and analysis anomalies further solidifies their role in maintaining research integrity. LLMs can also help to standardize peer review.
They can facilitate quick access to summaries of appendices and verify
the appropriateness of tests and robustness checks. The potential
for simulated replications using existing research data opens new
possibilities for confirming findings and enhancing replication rates,
relying, for instance, on beta expert GPTs such as the ReproductibilityGPT cited above.

LLMs in experiments and AI risks
Throughout this Comment, we have referenced various tools to illustrate the capabilities of generative AI in research. However, we do not
endorse any specific tool nor imply that they are free from legal or
ethical concerns. Researchers should carefully assess the legal and
ethical implications of any tool they choose to use.
The introduction of LLMs in experimental research not only leads
to the scientific opportunities described previously, but also presents
several societal risks. These risks include issues related to intellectual
property, the propagation of misinformation and biases. Strategies
to mitigate these risks include maintaining high ethical standards and
encouraging diverse, creative approaches in research.
Intellectual property and privacy concerns are paramount, as
deploying generative AI technologies in research settings could inadvertently result in the unauthorized use of copyrighted material and
sensitive data. AI that does not explicitly cite its sources might unintentionally infringe on existing copyrights, which calls for increased
vigilance and more transparent scientific practices. Current tools offer
partial solutions, such as metadata tracking and citation generation,
but ensuring full transparency and strict adherence to data protection
protocols — including anonymization and informed consent — remains
a challenge.
Furthermore, the potential for AI to be used in deceptive ways or to
disseminate misinformation is of substantial concern. AI systems, particularly those involved in experimental research, can be manipulated
(intentionally or unintentionally) to produce customized outcomes
that might support specific hypotheses or agendas, and lead to scientific fraud. This manipulation can be as overt as fabricating data or
as subtle as selecting data that confirm a preconceived notion, often
Volume 9 | May 2025 | 833–835 | 834

Comment

without easy detection. To combat this, rigorous peer review processes
and the development of AI systems that detect and flag potentially
fraudulent data are essential.
The introduction of AI into scientific inquiry also raises concerns
about compounding biases. If trained on skewed or unrepresentative
data, LLMs can perpetuate and amplify existing biases, and potentially
lead to experimental research with negative social implications. If AI
systems used in experiments inherit biased data or flawed assumptions, results can appear falsely as objective scientific truths; if initial
AI-assisted experiments are biased, subsequent studies may inadvertently reinforce these biases and embed them more deeply within the
scientific canon.
In light of these risks, it is imperative that the scientific community
not only focus on the advantages that AI can bring to experimental
research, but also fully address these potential drawbacks. Researchers can leverage the capabilities of AI while minimizing its societal
risks by fostering an environment in which ethical considerations are
at the forefront of AI integration, and creativity and diverse perspectives are valued.
Gary Charness1,4, Brian Jabarian 2 & John A. List 3
1
Department of Economics, UCSB, Santa Barbara, CA, USA.
2
Booth Business School, University of Chicago, Chicago, IL, USA.
3
Department of Economics, University of Chicago, Chicago, IL, USA.
4
Deceased: Gary Charness
e-mail: brian.jabarian@chicagobooth.edu

Published online: 31 March 2025

nature human behaviour

References

1. Athey, S. Machine learning and causal inference for policy evaluation. In Proc. 21th ACM
SIGKDD International Conference on Knowledge Discovery and Data Mining (eds. Cao, L. et al.)
5–6 (ACM, 2015).
2. List, J. Experimental Economics: Theory and Practice (Univ. Chicago Press, 2025).
3. Snowberg, E. & Yariv, L. Am. Econ. Rev. 111, 687–719 (2021).
4. Molnar, A. J. Behav. Exp. Finance 22, 161–169 (2019).
5. Horton, J. J. Large Language Models As Simulated Economic Agents: What Can We Learn
From Homo Silicus? (Working Paper 31122) (National Bureau of Economic Research, 2023).
6. Felin, T. & Holweg, M. Strat. Sci. https://doi.org/10.1287/stsc.2024.0189 (2024).
7. Ludwig, J., Mullainathan, S. & Spiess, J. AEA Pap. Proc. 109, 71–76 (2019).
8. Jabarian, B. & Sartori, E. Preprint at https://doi.org/10.48550/arXiv.2303.16422 (2023).
9. Charness, G., Cox, J. C., Eckel, C. C., Holt, C. A. & Jabarian, B. The Virtues of Lab Experiments
(CESifo Working Paper No. 10796) (CESifo, 2023).

Acknowledgements

We thank D. Carey and R. Dassanayake for excellent research assistance. We thank Erik
Brynjolsson, Colin Camerer, J. Holz, A. Listo, Sendhil Mullainathan, and Hal Varian for their
helpful comments and discussions. We thank A. Listo and J. Holz for useful suggestions and
seminar audiences at the World Bank, International Monetary Fund, University of Chicago Booth
Business School, University of California, Santa Barbara, Texas A&M University, Caltech Division
of the Humanities and Social Sciences, University of Illinois Urbana-Champaign, Dropbox AI,
Microsoft Research, Google Research, Keystone Strategy and participants at the Advanced Field
Experiments Conference 2023, for useful comments. B.J. acknowledges funding from Effective
Ventures US. The funders had no role in the preparation of or decision to publish this manuscript.
This paper is dedicated to the memory of G.C., who unexpectedly passed away in May 2024.

Author contributions

B.J. was the lead author of this Comment, and wrote original draft; G.C. and J.A.L. contributed
to discussions of the content, and edited the manuscript.

Competing interests

The authors declare no competing interests.

Additional information

Peer review information Nature Human Behaviour thanks Zhicheng Lin and the other,
anonymous, reviewer(s) for their contribution to the peer review of this work.

Volume 9 | May 2025 | 833–835 | 835

