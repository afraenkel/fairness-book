# What is Fairness?

Throughout the course, we will take a practical view of understanding
fairness in algorithmic decision making: how can we identify potential
issues with a system, understand its impact on people with whom it
interacts, and what should we do about it.

This lecture will introduce terms and concepts from philosophy that
will help us approach these questions. We will briefly discuss terms
like fairness, justice, welfare, equality, equity, bias, and
discrimination and how they frame discussions about decision making as
a society.

### Example: Medical decision making

As an introductory example, we'll examine the issues involved in
rationing medical care, specifically ventilators, during the COVID-19
pandemic {cite}`savulescu_2020`.

People with severe cases of coronavirus experience trouble breathing
and medical treatment often consisted of putting the patient on a
ventilator for weeks at a time. During the height of the COVID-19
pandemic, many hospitals filled beyond capacity and experienced a
shortage of ventilators. The decision became: which patients receive
access to a ventilator?

* Should only those with the highest chance at recovery receive a
  ventilator?
  
This option attempts to *optimize* the existing (scarce) stock of
ventilators and falls into a *utilitarian* point of view. However,
there are a few objections to this:

* What if ventilators are sitting unused in anticipation of future
  patients with a higher chance of recovery? 
* How is "chance of recovery" measured? Those with a better chance of
  recovery may only be in better health because of prior access to
  quality health-care.
  
Other options might suggest that patients have, in some sense, an
equal right the needed ventilators:

* Should patients entering the hospital receive ventilators on a
  'first-come first-served' basis?
* Should anyone in need, regardless of access to health-care, have an
  equal chance of receiving a ventilator?
  
In practice, healthcare systems blend these two points of view
{cite}`savulescu_2020`. We will look at these concepts, and continuing
analyzing this example through this lecture.


## Notions of fairness, welfare, and justice

Initially, we will focus on concepts of fairness, welfare, and justice
in the context of allocative decision making by a state or
organization. This entry point is reasonable, as
1. algorithmic decision making systems usually make decisions for
   *others*, and
1. discussion of allocative decisions are plentiful, accessible, and
   important.
   
At the end of this lecture, we'll explore how these notions apply in
other settings.

## Utilitarianism

First developed by Jeremy Bentham and John Stuart Mill,
*utilitarianism* is a doctrine that states:
1. Only the consequences of actions determine what's right and wrong
   (*consequentialism*).
2. The right action is one that 'provides the greatest benefit to the
   most people.' (*utilitarianism*)

The perspective of maximizing aggregate social welfare has a notable
consequence: a person may be treated poorly for the good of
others. The thought-experiment illustrating is consequence is
the famous trolley problem: 

> A trolley is heading toward five people working on the track. You can pull a lever and redirect the trolley to a track that has only one worker. Would you pull the lever, deciding to kill one worker to save the other five?

Is the murder of one worker worth the benefit of saving the other
five? Or is the act of taking a human life an unthinkable moral act?
The utilitarian principle would describe the utility of pulling
the lever to be five times greater than not (assuming all lives have
equal worth, a noncontroversial statement) and consequentialism has no
problem with the specific act of pulling the lever.

The ventilator example illustrates a similar observation: 
* Would you hold back the use of a ventilator for a patient that might
  arrive later who is more likely to recover because of it (or recover
  more quickly)?
* Would you take away the ventilator from a patient already using it
  if another patient that might receive greater benefit from it needs
  one as well?

Even for the committed utilitarian, the answers to these questions
depend on how you define 'benefit' and calculate the utility of making
a given decision. The study by Savulescu et al. examine some of these
choices, including maximizing number of lives saved, the aggregrate
number of years-of-life saved (valuing healthy over frail; young over
old). 

Public health professionals working in healthcare systems make these
estimates daily, in a multitude of ways. Of course, these
professionals also take into account legal, professional, and moral
reasons in making their choices of benefit and utility. We will
address these later.

### Utilitarianism and machine learning

This theory aligns with the basic organization of a machine learning
powered decision making system. Fitting a model optimizes a loss
function over the training set. The features are used to approximate
potential benefits (often captured via a label), while the loss
function corresponds to the utility. By default, a model makes better
decisions when it optimizes loss of the entire training set.

```{question}
Sketch the structure of a model that decides whether an new patient
should receive a ventilator. Begin with the following components:
1. A model that, given information about the patient (place of
residence, age, medical history), predicts the number of days they
would use a ventilator.
1. The current state of the healthcare system (number of patients
arriving per day, with given medical information).
1. A utility function to optimize (think about what this might be).

What are some morally problematic behaviors of this model? What do you
think it should or should not use in making its decisions?
```

## Distributive Justice

A theory of distributive justice describes 'a just distribution of
relevant goods in a society.' The qualifier of 'just' is in response
to utilitarianism's unjust distribution of goods in the name of
maximizing the aggregate welfare of the people. What qualifiers and
limitations should be placed on such distribution to make them morally
acceptable?

Three closely related limits that address just distribution are
equality, priority, and sufficiency {cite}`vallentyne_2003_1`. Limiting optimal distribution by
a condition that ensures, in a broad sense, people benefit equally is
described by theories of egalitarianism. Prioritarianism attempts to
maximize goods *first* according to those most in need. Sufficiency
places a floor on the sufficient distribution of goods, so that all
basic needs are met, after which goods are distributed to maximize
welfare.

```{note}
The term 'goods' here is broadly defined as anything that positively
contributes to a persons welfare (tangible goods, happiness,
opportunity).
```

In the most naive way, an egalitarian theory might limit the
distribution of goods to be equal for everyone. However, in light of
the broad notion of 'goods', any such theory would be unreasonably
restrictive. Moreover, even if one only requires equality of total
utility for each person, one has to confront the effect that
drastically different choices in life make on that sum-total. One way
of approaching this issue is by stipulating that everyone has a right
to the same *opportunities* in life.

The remainder of this section follows {cite}`sep-equal-opportunity`.

### Formal Equality of Opportunity

Equality of Opportunity (EO) is a condition that seeks to restrict
distribution of goods in a fair way. There are several notions of EO
that refine the condition of 'equal' in ways that lead to different
results in practice. Various notions of EO are codified in law in
countries around the world.

Formal equality of opportunity requires that a benefit is theoretically
available to anyone, regardless of their background. For example, an open
job position that satisfies Formal EO requires the employer to open
the pool of applicants to everyone and that those applications be
consider based on merits (as opposed to, for example, nepotism). 

In the example of the distribution of ventilators, formal equality of
opportunity is not violated. Indeed, all patients that enter the
hospital are considered for treatment with a ventilator; the choice of
who receives one is based purely on 'merit' (conditions that are
equally applied to all individuals). It is not the case that
ventilators are only reserved for donors to the hospital.

### Fair Equality of Opportunity

One limitation of Formal Equality of Opportunity (FEO) is that while
the distribution of goods is open to all, the ability to take
advantage of such an opportunity may *effectively* be
non-existent. For example, a job may be available through passing an
arbitrary examination that only very wealthy pass (because only they
can afford the training). While this job is theoretically available to
everyone (satisfying formal EO), it in practice is only available to
the very wealthy.

John Rawls developed the concept of "fair equality of opportunity"
that modified the EO statement so that, "assuming there is a
distribution of natural assets, those who are at the same level of
talent and ability, and have the same willingness to use them, should
have the same prospects of success regardless of their initial place
in the social system."

{cite}`sep-equal-opportunity`.

To illustrate this ideal, Rawls envisioned a though-experiment he
coined 'The Veil of Ignorance': imagine that you are proposing a certain
distribution of goods in a hypothetical society. Would you consider
the distribution just if you did not know who you would be in this
society?

The Veil of Ignorance separates (dis)advantages given by circumstances
like to whom you were born from those circumstances that come from
conscious choice throughout life.

In the example of ventilator distribution, a patient born with a
disability should have an equal claim to a ventilator as someone
without a disability, even if that disability affects complicates
potential recovery.

In {cite}`heidari_2019`, they translate FEO into mathematical terms as
follows:
* $e$ refers to the effort (i.e. legitimate sources of inequality)
* $c$ refers to circumstance
* $F(\cdot|c, e)$ is the cumulative distribution of utility at fixed
  effort $e$ and circumstance $c$.
  
The Rawlsian FEO states that for all circumstances $c, c'$:

$$
F(\cdot|c, e) = F(\cdot|c', e)
$$

### Luck Egalitarianism

Conceptions of Equality of Opportunity dictate conditions under which
it is just to gain an advantage over others in society. On the other hand,
Luck Egalitarianism demands that differences in the goods that people
accumulate should only be determined by choices people make and not by
differences in unchosen circumstance *throughout* their life
(i.e. luck). 

In the example of ventilator distribution, a patient systematically
denied access to the healthcare system (e.g. by being born into
poverty) may have a *greater* claim to a ventilator (in spite of being
in poorer health), so that the expected benefit equals those with easy
access to healthcare (and thus more likely to be healthy, arrive at
the hospital less sick, etc).

For this reason, luck egalitarianism is also called 'The Level Playing
Field' ideal.

## Discrimination

Discrimination is unjust treatment of a person based on identification
with a social group. While the term has evolving legal definitions,
most characterizations violate one of the theories of equality of
opportunity above (as do more informal, social uses of the term).

In the next lecture, we will study how discrimination arises from power
structures in social systems. Later we will study different
quantitative characterizations of discrimination coming from
Economics. 
