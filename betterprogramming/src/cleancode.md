# Clean Code Summary

Summary of 'Clean code' by Robert C. Martin

Code is clean if it can be understood easily – by everyone on the team. Clean code can be read and enhanced by a developer other than its original author. With understandability comes readability, changeability, extensibility and maintainability.
_____________________________________

## General rules

1. Follow standard conventions.
1. Keep it simple stupid. Simpler is always better. Reduce complexity as much as possible.
1. Boy scout rule. Leave the campground cleaner than you found it.
1. Always find root cause. Always look for the root cause of a problem.

## Design rules

1. Keep configurable data at high levels.
1. Prefer polymorphism to if/else or switch/case.
1. Separate multi-threading code.
1. Prevent over-configurability.
1. Use dependency injection.
1. Follow Law of Demeter. A class should know only its direct dependencies.

## Understandability tips

1. Be consistent. If you do something a certain way, do all similar things in the same way.
1. Use explanatory variables.
1. Encapsulate boundary conditions. Boundary conditions are hard to keep track of. Put the processing for them in one place.
1. Prefer dedicated value objects to primitive type.
1. Avoid logical dependency. Don't write methods which works correctly depending on something else in the same class.
1. Avoid negative conditionals.

## Names rules

1. Choose descriptive and unambiguous names.
1. Make meaningful distinction.
1. Use pronounceable names.
1. Use searchable names.
1. Replace magic numbers with named constants.
1. Avoid encodings. Don't append prefixes or type information.

## Functions rules

1. Small.
1. Do one thing.
1. Use descriptive names.
1. Prefer fewer arguments.
1. Have no side effects.
1. Don't use flag arguments. Split method into several independent methods that can be called from the client without the flag.

## Comments rules

1. Always try to explain yourself in code.
1. Don't be redundant.
1. Don't add obvious noise.
1. Don't use closing brace comments.
1. Don't comment out code. Just remove.
1. Use as explanation of intent.
1. Use as clarification of code.
1. Use as warning of consequences.

## Source code structure

1. Separate concepts vertically.
1. Related code should appear vertically dense.
1. Declare variables close to their usage.
1. Dependent functions should be close.
1. Similar functions should be close.
1. Place functions in the downward direction.
1. Keep lines short.
1. Don't use horizontal alignment.
1. Use white space to associate related things and disassociate weakly related.
1. Don't break indentation.

## Objects and data structures

1. Hide internal structure.
1. Prefer data structures.
1. Avoid hybrids structures (half object and half data).
1. Should be small.
1. Do one thing.
1. Small number of instance variables.
1. Base class should know nothing about their derivatives.
1. Better to have many functions than to pass some code into a function to select a behavior.
1. Prefer non-static methods to static methods.

## Tests

1. One assert per test.
1. Readable.
1. Fast.
1. Independent.
1. Repeatable.

## Code smells

1. Rigidity. The software is difficult to change. A small change causes a cascade of subsequent changes.
1. Fragility. The software breaks in many places due to a single change.
1. Immobility. You cannot reuse parts of the code in other projects because of involved risks and high effort.
1. Needless Complexity.
1. Needless Repetition.
1. Opacity. The code is hard to understand.
