# Standard resolutions for architecture dashboard findings

The Architecture Dashboard is a most valuable tool for keeping our code
clean and the application maintainable. However, there are situations
where we beg to differ with teh good folks that developed the
Architecture Dashboard. Here are some of the standard resolutions we
allow for Architecture Dashboard findings.

Rule 1: resolve all findings; that will make them go away automatically

Rule 2: in some cases, the resolution may be obtained by responding to
the finding as "won't fix" or "false positive", complemented by a valid
reason. These are the cases where we allow this:

Finding | Case | Resolution | Reason| Rationale
--------|------|------------|-------|-----------
Large local variable in ViewState | BDD test | Won't fix.| For test purposes only | There is no easy workaround for this in the BDD test environment, and this code will never travel to production
Unlimited records in aggregate | Filter on unique index | False positive |  Filter on unique index | Entering “1” for maximum records here introduces additional but unnecessary SQL.
Unlimited records in aggregate | Reference table with limited number of records (may be a static or a regular entity) | Won’t fix | Reference table; all records are required to facilitate select functionality. | By setting a maximum there is a risk that more records will be in the table than the maximum.
