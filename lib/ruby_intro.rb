# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  arr.max(2).reduce(:+) || 0
end

def sum_to_n? arr, n
  return false if arr.length < 2
  arr.reduce(0) do |last, ele|
    if last + ele == n
      return true
    else
      ele 
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  not ['A', 'E', 'I', 'O', 'U'].include? s[0].upcase
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
