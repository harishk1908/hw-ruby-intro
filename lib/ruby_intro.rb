# When done, submit this entire file to the autograder.

# Part 1
#
# This is a test comment for my first commit.

def sum arr
  # YOUR CODE HERE
  if arr == nil
    return 0
  end
  sum = 0
  arr.each do |val|
    sum += val
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr == nil or arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  end
  sorted = arr.sort.reverse
  return sorted[0] + sorted[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr == nil or arr.size <= 1
    return false
  end
  arr.each_with_index do |x, i|
    arr.each_with_index do |y, j|
      if i != j and x + y == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return ((s =~ /^[A-Z]/i) and ((s =~ /^[^AEIOU]/i)))
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return ((s =~ /^[0-1]+$/) and (s == '0' or s =~ /^[0-1]*00$/))
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if not isbn.instance_of? String or isbn == '' or not price > 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "#{'$%.2f'  % @price}"
  end
  
  attr_accessor :isbn
  attr_accessor :price
  

end
