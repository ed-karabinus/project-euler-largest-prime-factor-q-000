# Enter your procedural solution here!
def largest_prime_factor(number)
  index = 2
  prime_factor = 0
  until index > Math.sqrt(number)
    if number % index == 0 && is_prime?(index)
      prime_factor = index
    end
    index += 1
  end
  prime_factor
end

def is_prime?(number)
  if number == 2 || number % 6 == 1 || number % 6 == 5
    index = 2
    prime = true
    until index >= number - 1
      if number % index == 0
        prime = false
      end
      index += 1
    end
    prime
  else
    nil
  end
end