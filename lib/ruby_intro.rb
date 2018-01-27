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

$CONS = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V',
         'W', 'X', 'Y', 'Z']

def starts_with_consonant? s
  begin
    $CONS.include? s[0].upcase
  rescue NoMethodError
    false
  end
end

def binary_multiple_of_4? s
  not s.empty? and (s =~ /[^01]/) == nil and s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize isbn, price
    raise ArgumentError, 'isbn is empty' if isbn.empty?
    raise ArgumentError, 'price is non-positive' if price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%4.2f" % @price
  end
end
