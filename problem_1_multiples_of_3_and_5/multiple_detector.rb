class MultipleDetector
  attr_accessor :multiples_to_detect

  def initialize(multiples_to_detect:)
    @multiples_to_detect = multiples_to_detect
  end

  def sum_of_all_multiples_under(roof)
    (1...roof).reduce(0) do |sum, number|
      if multiples_to_detect.any? { |multiple| (number % multiple).zero? }
        sum + number
      else
        sum
      end
    end
  end
end
