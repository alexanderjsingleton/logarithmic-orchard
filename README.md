# logarithmic-orchard

##Summary

Here is Ruby a forecasting model simulating annual orange orchard yield from from creation to maturity.

The tests in `orange_tree_spec.rb` show how all this might work together.

##Objectives

###Objective 0 : Implement the OrangeTree and Orange classes

Use `attr_reader`, `attr_writer`, and/or `attr_accessor` so that we can call `tree.height` and `tree.age` to get a tree's height or age, respectively.  Which of the three `attr_` methods should you be using and why?

Do the same with the `Orange` class so that we can call `orange.diameter` to get an orange's diameter.

You should write tests for these methods.

#### Implement Aging

As a tree ages, it grows taller.  Eventually it starts bearing fruit and stops growing &mdash; not necessarily at the same time.  Some years later, the tree dies and can bear fruit no more!

Implement an `OrangeTree#age!` instance method that will age your tree one year.  Each year the tree should get some amount taller, and then eventually stop growing.  You can decide when the tree stops growing.

Later, it should die.

#### My Solution

I've projected annual yield logarithmically-think of a yield-curve.

<mic_dropped/>