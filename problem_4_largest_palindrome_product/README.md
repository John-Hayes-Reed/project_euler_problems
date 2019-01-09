# The problem

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

# Using implemented classes to get the solution

```ruby
# In an irb console

require_relative 'largest_palindrome_product_finder'
#=> true

LargestPalindromeProductFinder.call first_number: 99, second_number: 99
#=> 9009

LargestPalindromeProductFinder.call first_number: 999, second_number: 999
#=> 906609
```
