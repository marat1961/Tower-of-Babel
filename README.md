Tower of Babel
==============

The Tower of Babel narrative in Genesis is an origin myth meant to explain
why the world's peoples speak different languages.

According to the story, a united human race in the generations following the Great Flood,
speaking a single language and migrating eastward, comes to the land of Shinar.
There they agree to build a city and a tower tall enough to reach heaven.
God, observing their city and tower, confounds their speech so that they can no 
longer understand each other, and scatters them around the world.

Why this project appeared
-------------------------

In all my time as a programmer, I often had to port a program from one programming language to another. 
It was assembler, C, C++, Pyton, Basic, Modula 2, Pascal, FoxPro, Oberon, Delphi, Java, Go, JavaScript 
and probably that's all. We will not mention SQL, XML, XSLT, HTML and the like.  

They were either my programs written earlier, or they were great programs written by other people.
In the process of translation, errors were often creeped into the code in order to detect and fix them.

Several methods have been used quite successfully:

Attentive code review
--------------------------

It's a laborious and unreliable way.
Suitable for simple code.

Writing unit tests
------------------

It's great when the project has unit tests.
They allow you to verify the performance of individual modules.
But they're not a panacea, there's always a shortage of them. 
I haven't seen a project big enough, with 100% test coverage. 
Tests will help you find an error but they are not a proof of correct program operation.
You should spend time on developing tests.

Comparison of the results of execution of two programs
------------------------------------------------------

The method is, of course, very time consuming, but for complex programs it is a very effective way of debugging.

Typical scenario
a) Preparing sets of test data.
b) Add the dump code to the program into the text file log.
As a rule, this is the name of the method (subroutine), input parameters and results obtained in the method.
c) Comparing two files from the dump, it is easy to find the location of the discrepancy 
and find the place of the error and its cause.

Unified Random Number Generator
-------------------------------

The comparison method will not work if different random number generators are used.
That is why the algorithm of the unified random number generator 
is the first candidate to be added to this project.

