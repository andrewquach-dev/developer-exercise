class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.gsub(/\w{5,}/) do |word|
      if word[0] == word[0].upcase
        "Marklar"
      else
        "marklar"
      end
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fib = [1,1]
    sum = 0
    while fib.length < nth
      next_fib = fib[-1] + fib[-2]
      fib << next_fib
    end
    fib.each do |num|
      if num %2 ==0
        sum +=num
      end
    end 
    sum
  end

end
