class SmallestMultiple

  # Returns an integer that is evenly (no remainder) divisible
  # by all integers in the range provided.
  # @example
  #   SmallestMultiple.call range: 1..10
  #   #=> 2520
  def self.call(range:)
    range = range.to_a
    # Improve performance by reducing the number of comparisons 
    # by removing numbers that can be inferred. eg. if something
    # is evenly divisible by 4, we can infer that it is also
    # evenly divisible by 2, therefore the comparison with 2 is
    # redundant and will slow down the process.
    range.reject! do |divisor| 
      range[range.index(divisor).succ..-1].any? { |dividend| (dividend % divisor).zero? }
    end

    # lower numbers are more likely to be evenly divisible so
    # reverse the range to look at higher less likely numbers
    # first and avoid lots of comparisons on lower numbers.
    reverse_range = range.to_a.reverse

    # Going through every number will take a very long time,
    # we at least know it must be divisible by the two largest
    # numbers in the range, so should go in steps of the product
    # of those two numbers for performance, ie for a range of 
    # 1..20 it should increment in steps of 380 (20*19).
    # As the range has been reversed the two largest values will 
    # be the first two.
    iteration_step = range[0] * range[1]

    # iterate up in the above defined steps until a number evenly
    # divisible by everything in the range is found and return it.
    (iteration_step..Float::INFINITY).step(iteration_step).find do |dividend| 
      reverse_range.all? { |divisor| (dividend % divisor).zero? }
    end.to_i
  end
end
