# A service object class to get the difference between
# the sum of the squares and the square of the sum of the
# first x natural numbers, where x is provided to the service,
# taking a mathematical formula approach.
class SumSquareDifferenceFormula
  def self.call(roof:)
    # sum(n) = n(n+1)/2
    sum = roof * (roof + 1) / 2
    square_of_sum = sum ** 2

    # sum_of_squares(n) = (2n+1)(n+1)n/6
    sum_of_squares = (2 * roof + 1) * (roof + 1) * roof / 6

    square_of_sum - sum_of_squares
  end
end
