# The problem

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Using implemented classes to get the solution

```ruby
# In an irb console

require_relative 'smallest_multiple'
#=> true

SmallestMultiple.call range: 1..20
#=> 232792560
```
