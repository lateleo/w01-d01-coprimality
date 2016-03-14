# Coprimality

Two numbers are considered "co-prime" if they share no prime factors (reminder: prime numbers
are positive. **1** is not prime, but **2**, **3**, and **5** are. There are no negative prime
numbers). A pair of numbers can be co-prime without either of them being prime. For example, 24
(`2 *2 *2 * 3`) and 49 (`7 * 7`) are co-prime because they share no common prime factors.

Write a method which takes two integers (positive, negative, or zero) and returns `true` (the
boolean value, not a string) if those numbers are co-prime, or `false` if they are not.

## Some hints:

+ A negative number has the same set of prime factors as its positive analog (e.g. `-56` and
  `56` share the same set of prime factors, but `-56` carries an additional non-prime factor of
  `-1`).
+ `0` is divisible by all numbers, and thus coprime with no numbers.
+ `1` is, by definition, not coprime with any numbers.
+ Don't worry about making this method handle anything other than integers.
+ If you're comfortable with math, consider investigating the relationship between coprimality
  and the Greatest Common Denominator.

As with the prep-work, you can run `rake` on the command line to run your tests.

## Sample Runs

+ `11` & `7` : `true` (both are prime and not identical)
+ `11` & `11` : `false` (even though both are prime, they have the same factors)
+ `24` & `49` : `true` (no shared prime factors
+ `-7` & `77` : `false` (share a factor of `7`)

See `tests/coprimality_test.rb` for more test runs.
