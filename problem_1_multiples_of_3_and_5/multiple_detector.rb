class MultipleDetector
  attr_accessor :multiples_to_detect

  def initialize(multiples_to_detect:)
    @multiples_to_detect = multiples_to_detect
  end

  def sum_of_all_multiples_under(roof)
    sum = 0
    (1...roof).each do |n|
      sum += n if multiples_to_detect.any? { |multiple| (n % multiple).zero? }
    end
    sum
  end
end
