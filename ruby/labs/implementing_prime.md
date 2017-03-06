# Implementing Prime

The [largest prime number ever discovered](http://time.com/4187491/new-prime-number/) in 2016, made up of 22,338,618 digits:

![prime](https://timedotcom.files.wordpress.com/2016/01/largest-prime-number1.png?w=720 "The largest prime number ever discovered")

## Instructions

Define a method, `prime?()`, that takes in an integer argument and returns a boolean of whether or not that integer is a prime number.

A few things to think about:

* What defines an integer as a prime number? Research algorithms for how to determine if a number is prime.
* How do you create a range of numbers? How do you turn a range into an array so that it can be iterated over?

Requirements:

* Do not use any other Ruby library, you must build a method that can verify whether a number is prime. Don't `require 'math'` and just piggyback off their implementation of prime number!

## Advanced

Think about the efficiency of your algorithm. How many iterations does it do? Look into Benchmarking in Ruby and profile a few different approaches to implementing `prime?()`.

## Resources
* [Basic Benchmarking in Ruby](http://rubylearning.com/blog/2013/06/19/how-do-i-benchmark-ruby-code/)
* [Wikipedia](http://en.wikipedia.org/) - [Prime number](http://en.wikipedia.org/wiki/Prime_number)

<a href='https://learn.co/lessons/prime-ruby' data-visibility='hidden'>View the original Learn.co lab!</a>
