# The problem

The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# Using implemented classes to get the solution

### Brute force approach

```ruby
# In an irb console

require_relative 'sum_square_difference_brute_force'
#=> true

SumSquareDifferenceBruteForce.call roof: 10
#=> 2640

SumSquareDifferenceBruteForce.call roof: 100
#=> 25164150
```

### Using mathematical formula

```ruby
# In an irb console

require_relative 'sum_square_difference_formula'
#=> true

SumSquareDifferenceFormula.call roof: 10
#=> 2640

SumSquareDifferenceFormula.call roof: 100
#=> 25164150
```
