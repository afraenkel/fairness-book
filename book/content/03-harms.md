# Harm, Discrimination, and Measurement

The previous lecture discussed frameworks for justice in an ideal
world: what we expect from a social institution that treats its
members fairly. We will examine concepts of harm and discrimination as
a way to better understand the limits of these frameworks for justice
and understand, in a non-ideal world, how power structures created by
social institutions encourage such discrimination.

## Discrimination

Discrimination is the unjust treatment of a person based on
identification with a salient social group. What 'unjust' and
'salient' mean in this context is contested among academics,
lawmakers, and the public. However, most characterizations violate one
of the theories of equality of opportunity above, as do more informal,
social uses of the term.

### Legal Conceptions

Legal protections against discrimination exist in many countries
around the world. A practicing data scientist must be aware of legal
concepts of discrimination, at the very least, to make sure her
decision making algorithm is in compliance with the law.

In the US, discrimination law protects citizens that identify with
specified protected groups from *disparate treatment* and *disparate
impact*. 

These salient groups are defined by race, skin color, religion, sex,
sexual orientation, gender identity, national origin, (old)-age,
disability, or genetic information. Which groups are protected by law,
and who may identify with those groups, is a hotly contested matter
regularly argued in the judicial system.

*Disparate treatment* is the act of treating an individual
unfavorably based on one of the protected charactertics listed
above. This requires the cause or intent of the action is
discriminatory. Disparate treatment is illegal in the US under Title
VII of the Civil Rights Act.

*Disparate impact* occurs when an act unfairly affects people
identifying with one of the protect groups listed above, even if the
intent of the action is necessarily discriminatory. Disparate impact
is only illegal in certain scenarios, like mortgage
lending. 

### Notions of discriminations from Economics

Economists model the world from a utilitarian perspective: humans are
rational beings that act in their 'best' interest. That is, people
act, in an efficient way, to optimize their utility. 

The Nobel prize winning economist Gary Becker first developed an
economic model of discrimination in 1957. Becker tied discrimination
with intent, much like the theory of disparate treatment. His theory
of *taste-based discrimination* asserts that one possible consequence
of discrimination is that a discriminating actor will sacrifice
utility in the pursuit of discrimination. 

As an example, suppose an employer refused to hire minority
employees. This would decrease the number of jobs available to minority
employees and increase the competition that employers may have to hire
non-minority employees. This results in minority employees making smaller
wages on average and employers paying higher wages to non-minority
employees of the same productivity. According to the economic model,
taste-based discrimination is a non-optimal choice for the
employer (and, of coures, harms the minority employee). This example
also violates Formal Equality of Opportunity.

In the 1970s, economists Edmund Phelps and Kenneth Arrow developed a
theory of *statistical discrimination*. This theory asserts that,
under imperfect information, a decision maker may act optimally in a
way that still results in systematically different outcomes for
members of a salient group.

Another way of phrasing statistical discrimination is that a decision
maker may rely on a stereotype when we don't have full information on
every individual. The decision maker, when making their decision, acts
on information on the group in question, instead of the individuals
themselves. This type of discrimination is optimal for the
decision maker.

In the example above, suppose that an employer hires minority employees
less often, as their internal company data show that such employees
take sick days more often. This employer, when considering a job
applicant, doesn't have access to an employees timesheet; they instead
generalize what they know about their current employees and use that
to profile the applicant according to their race/ethnicity. This
is statistical discrimination. While this example satisfies formal equality
of opportunity, it doesn't satisfy formal equality of opportunity.

There are examples where the use of statistical measuresment about groups
may actually make decisions more fair in certain senses of the
term. For example, affirmative action uses aggregate information on
minority groups' access to education to makes it more likely
to admit those that identify with those groups to educational
institutions. This reasoning is similar to that of fair
egalitarianism.

An important takeaway from the example of statistical discrimination
is that inequality and discrimination may persist even in the
presence of equal ground rules, due to structural differences already
present in social institutions. This is a theme we will return to later.

## Bias

Bias is a term often associated with discrimination; it is milder in
the severity of intent. Those that are *biased against an individual*
exhibit some systematic leaning that causes the person treat this
individual differently (in a negative way).

Bias also has a statistical meaning: a *statistical estimator is
biased* if it systematically differs from the population parameter it
estimates.

The two meanings are (loosely) connected, if one assumes that a
person's decisions (i.e. decisions) are drawn from an underlying
true, 'fair' distribution. However, to avoid confusion, we will avoid
using the term bias in the colloquial sense.

## Harms inflicted by decision making

Now that we have surveyed different notions of fairness and
unfairness, we will discuss the impact that unfair decisions have on
people (and not just those directly involved in the decision). These
impacts or *harms* occur after the decision and understanding them
requires understanding how they interact with the social institutions
that contain them.

Understanding harm is of paramount importance, as it's the primary
reason to be concerned with fairness. While examining conceptions of
justice and welfare will help us reason through what a fair system
might look like, understanding harm grounds our reasoning in reality
and serves as a gut check on the stakes involved.

### Allocative Harms

Allocative harms result from an allocative decision. The impacts of
such harms are immediately observable and relatively easy to
quantify. As the decisions are concerned with allocating measurable
goods and opportunities, harms inflicted by them involve a lack of
allocation. These harms are precisely those discussed in the previous
lecture.

Even with this ease of measurement, understanding the causes and
extent of allocative harms is difficult. While philosophers can
imagine an ideal 'start of society' and let it hypothetically evolve
under the veil of ignorance, tangible (algorithmic) decisions take
place in a tangible social structure with existing inequalities. It's
under these conditions that an algorithm may be attempting to optimize
some allocation of goods.

The impact of incorrect allocative decisions may be loss of life
(medicine), loss of freedom (criminal justice), loss of financial
opportunity (loans), loss of livelihood (work/education), and
more. What are some of the ways decision making models make
systemically wrong decisions?

1. One of the main difficulty in allocative decision making comes
   in defining the utility being optimized. The 'true' utility is
   often an unquantifiable, poorly defined goal; human attempts to
   define them fall short in myriad ways. 
2. Algorithmic decision making algorithms fit their decisions to
   patterns in existing data, thus requiring data on the population it
   affects. As we will see in the next section, existing power
   structures affect who is seen and entered in the record in ways
   that reinforce these power structures.
3. It's not always clear how decisions will be used. An algorithmic
   decision is often presented as "one piece of information" to be
   used by a human decision, who may use the output of the algorithm
   to discriminate in unexpected ways.
   
### Representative Harms

Recall that representational decisions surface the most relevant
features of its subject and returns that representation. Thus a
representational decision making algorithm *controls the flow of
information* to its subjects and affects how they perceive the
world. Harms inflicted by such decisions evolve over long periods of
time. They are difficult to measure as the impact diffuses across
social institutions with varying impacts not obviously associated to
narrow utility of interest.

As Jamie Susskind writes in *Future Politics* {cite}`susskind_2018`:
> If you control the flow of information in a society, you can influence its shared sense of right and wrong, fair and unfair, clean and unclean, seemly and unseemly, real and fake, true and false, known and unknown.

Thus, representational harm has the potential to guide and reinforce
unfairness built into the fabric of our social institutions
themselves. These harms form or strengthen people's existing
associations of the compisition and subordination of different
groups. While these harms are unjust in their own right, they also lay
the foundation for an environment that normalizes unfair allocative
decisions that affect people's freedom and livelihood.

A classic example of representational harm is found in algorithmic image
search. In 2015, a Google image search for the term 'CEO' resulted in
dozens of white, old men, while the term 'nurse' resulted in a page of
women {cite}`Otterbacher_2017`. This result reinforces existing
notions of gender stereotypes that (white) men lead business and while
women are the symbol of the caretaker.

From the model developers perspective, anticipating the harm from this
example is more difficult than for an allocative decision making
algorithm. The model is likely built from associations in a large
corpus of images and text that carry the same biases as the society
that created it. Moreover, such a model has no obvious utility
function that transparently tallies gain and harm; systematically
surfacing this discrimination in the search functionality requires a
clever experiment (of course, it's also anecdotally apparent from use).

Lastly, this algorithm was *accurate* in the sense that it reflected
the real demographics of these two fields at the time. Its unfairness
was a reinforcement from the unfairness in the social structures under
which the model was fit. The question then becomes, what *should* the
algorithm return? This question begs to use the frameworks for justice
developed in the last lecture.

## Measurement

Up until now, we've focused on identifying unfairness and its impacts;
we have not systematically asked how such fairness occurs. Any
quantitative process for decision making requires recording real-world
events in data. This process of *measurement* requires choices of what
characteristics of these events to record; choices designed and
implemented by humans living in a particular social
structure. Moreover, those involved in measurement are usually in a
position of power and more likely to reinforce the existing the
existing order of power within that social structure. Evaluating
measurement necessarily requires understanding the process that
generates the data and how well it reflects the events that are
informing the decision making. It cannot be quantified and automated.

The act of measurement enables the existence of the data that informs
the system. It is fundamental to this process, affecting every aspect
of a decision making system. Three areas measurement may insert human
biases into a decision making system are:
* Does the 'training data' reflect the social system it attempts to
  model? Is the social system itself flawed?
* Do variables adequately capture complex notions needed for the
  decision making? Should those notions be used?
* Is the outcome a well-defined measurement or a biased proxy that
  reinforces existing inequality? Is that outcome worth modeling?

Consider the example of allocating medical care. Suppose a health-care
company is stream-lining their triaging system: for each patient that
walks into the emergency room, the system must decide if this patient
receives medical care right away, or if they must wait in the waiting
room (and for how long). The developers of the system may look at past
patient visits, the medical care they received, and the eventual
outcome of the visit to decide which of these patients needed to be
seen right away and which could wait. The allocative harm of a wrong
decision is the witholding of medical care that could potential lead
to prolonged sickness or death.

One difficult aspect of developing such a model is that the 'eventual
outcome' of a visit isn't a well-defined event. Presumably, the true
utility they should optimize for is 'how quickly the patient needed
care'. The model developers wanted to use 'the severity of the
illness' and as an approximation used insurance code to measure the
this severity.

The problems with using insurance codes for measuring this outcome is
that patients with better insurance typically receive more thorough
medical care. Two people with the same illness may come in requiring
an expensive intervention. The patient with expensive insurance will
receive that coverage, whereas the other may decline treatment out of
financial concerns (and so the need was never recorded). Fitting a
model on this data results in decisions that prioritize the
well-insured patient.

The existing power difference in the medical institution is merely
reinforcing itself. The wealthier patient, with better existing care
and a record of that care, is noticed by the triage model; the patient
with a smaller insurance plan is minimized from the record and
forgotten by the triage model.

### Poorly defined variables

The act of collecting data requires design. Recording race and ethnicity
provides an instructive example. Suppose, filling out a survey, you
are given the choice to select one of the following (taken from the NIH):
* American Indian or Alaska Native.
* Asian.
* Black or African American.
* Hispanic or Latino.
* Native Hawaiian or Other Pacific Islander.
* White.

Someone with a multiracial background would not have a way of
truthfully answering. For example, someone from the Dominican
Republic, with a large popululation of African descent, would likely
*want* to reply they are Dominican! 

Historically, these categories are created to classify with the aim of
subordination. The effect of being categorized as Native American
uprooted you from your home. The effect of being categorized as
Black at one time enslaved you. And these categories change as the
social structures change: at one point in time, Irish, Italian, and
Jewish people were not considered White.

The example of race is not contrived. We will see case after case of
measurement that reflects a historical purpose of subjugation. 


### Missing from data

Decision making models are more accurate on populations for which they
are familiar. However, as measurement is fundamentally costly, those
that take part in its design are measured most often.


### Proxies for targets

The 'true' outcome that informs a model is often an idealized,
immeasurable concept. One common approach is to define a proxy measure
for that idealize outcome. Such a procedure is similar to poorly
defined variables, but guaranteed to bias your model, as it will
learn the wrong utility function.

