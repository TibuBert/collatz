def collatz( input_number)
  lenght = 1
  if input_number < 0
    raise ArgumentError.new 'Invalid. Only positive numbers'
  end

  while input_number != 1
    lenght += 1
    input_number = input_number.even? ? (input_number / 2) : (input_number * 3 + 1)
    
  end
  lenght
end

def max_collatz
  largest_len = 0
  largest_number = 0
  (1 .. 1000000).each do |n|
    lenght = collatz(n)
    if lenght > largest_len
      largest_len = lenght
      largest_number = n
    end

    class TestCollatz < Test::Unit::TestCase
      def test_collatz_sequence
        assert(collatz( input_number 1) = 1)
        assert(collatz( input_number 2) = 2)
        assert(collatz( input_number 3) = 8)
        assert(collatz( input_number 4) = 3)
        assert(collatz( input_number 5) = 6)
        assert(collatz( input_number 6) = 9)
        assert(collatz( input_number 7) = 17)
      end
    end