require 'prime'

class Integer
  def largest_prime_factor
    largest = 2
    Math.sqrt(self).to_i.downto(2) do |i|
      next unless (self % i).zero?
      largest = i and break if Prime.prime?(i)
    end
    largest
  end
end
