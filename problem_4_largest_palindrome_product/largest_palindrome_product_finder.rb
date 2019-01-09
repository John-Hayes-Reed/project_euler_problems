# Service object styled class to find the largest palindrome
# for the product of any combination going down from 
# two given numbers.
class LargestPalindromeProductFinder
  def self.call(first_number:, second_number:)
    # Create lambda to curry later and utilise within Enumerable methods.
    is_palindrome = ->(a,b) { product = a * b; product.to_s == product.to_s.reverse }

    largest_palindrome = nil

    first_number.downto(1) do |i|
      # Curry for each slow_iteration to utilise with Enumerable#find
      # using ampersand (to_proc) syntax.
      makes_palindrome = is_palindrome.curry[i]
      
      # list to compare against for current slow iteration
      multipliers = second_number.downto(1).to_a

      # finds a multiplier whose product with the current slow iteration
      # will create a palindrome number.
      palindrome_multiplier = multipliers.find(&makes_palindrome)
      next unless palindrome_multiplier
      
      palindrome = palindrome_multiplier * i
      largest_palindrome = palindrome if palindrome > largest_palindrome.to_i
    end

    largest_palindrome
  end
end
