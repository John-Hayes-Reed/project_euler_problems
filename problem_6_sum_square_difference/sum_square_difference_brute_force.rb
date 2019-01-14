# Service object to provide the difference between the
# sum of the squares and the square of the sum of the first
# x natural numbers, where x is provided to the service, 
# taking a brute force approach.
class SumSquareDifferenceBruteForce
  # Lambda function to get the exponent of a base to
  # a given power. Can be curried later to create functions
  # for specific uses like to square a base, or to cube it.
  EXPONENT = ->(power, base) { base**power }

  def self.call(roof:)
    # Curry the exponent function to get a square.
    square = EXPONENT.curry[2]

    # Find the difference.
    ((1..roof).reduce(:+)**2) - ((1..roof).map(&square).reduce(:+))
  end
end
