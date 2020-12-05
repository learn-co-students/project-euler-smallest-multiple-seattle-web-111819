# Implement your object-oriented solution here!
class SmallestMultiple
    attr_reader :lcm

    def initialize(input)
        @placeholder = 1
        @lcm = smallest_multiple(input) 
    end

    def smallest_multiple(input)
        (2..input).each do |i|
          @placeholder *= i / gcd(@placeholder, i)
        end
        @placeholder
    end
      
    def gcd(a, b)
        while b > 0
          a %= b
          return b if a == 0
          b %= a
        end
        a
    end    
end
