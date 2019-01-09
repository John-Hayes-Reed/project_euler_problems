# The problem

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

# Using implemented classes to get the answer to the problem

```ruby
# In an irb console
require_relative 'multiple_detector'

MultipleDetector.new(multiples_to_detect: [3,5]).sum_of_all_multiples_under(1000)
#=> 233168
```
