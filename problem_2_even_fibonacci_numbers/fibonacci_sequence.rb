class FibonacciSequence
  
  def self.call(roof:)
    [1, 2].tap do |fibonacci_sequence|
      current_number = fibonacci_sequence[-1]
      while current_number < roof do
        last_number = fibonacci_sequence[-1]
        previous_number = fibonacci_sequence[-2]
        current_number = last_number + previous_number
        fibonacci_sequence << current_number
      end
    end
  end
end
