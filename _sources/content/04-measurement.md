# Measurement, Data, and Power

## Data Collection

* lack of data on a group
* too much data on a group
* target variable definition (or variables in general)
* 



One example of this concerns the allocation of medical care. Suppose
a health-care company is stream-lining their triaging system: for each
patient that walks into the emergency room, the system must decide if
this patient receives medical care right away, or if they must wait in
the waiting room (and for how long). The developers of the system may
look at past patient visits, the medical care they received, and the
eventual outcome of the visit to decide which of these patients needed
to be seen right away and which could wait. The allocative harm of a
wrong decision is the witholding of medical care that could potential
lead to prolonged sickness or death. 

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

