# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  else
    sum = 0
    arr.each do |i|
      sum += i
    end
    return sum
  end
end


def max_2_sum arr
    if arr.length == 0 
        return 0
    elsif arr.length == 1
        return arr[0]
    else 
      arr.sort!
      return arr[-1] + arr[-2]
    end
end

def sum_to_n? arr, n
  (0..arr.length-1).any? do |i| 
    arr[i+1..-1].any? { |j| j + arr[i] == n }
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s.downcase
  /^[bcdfghjklmnpqrstvwxyz]/i === s
end


def binary_multiple_of_4? s
  return false unless /^[01]+$/.match(s) != nil
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    
    raise ArgumentError if isbn.length == 0 || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn= number
    @isbn = number
  end
  
  def price
    @price
  end
  
  def price= value
    @price = value
  end
  
  
  def price_as_string
    return "$#{ '%.02f' % @price }"
  end
end
