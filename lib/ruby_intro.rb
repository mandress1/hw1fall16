# When done, submit this entire file to the ICON HW1 Dropbox.

# Part 1

def sum arr
  sum = 0
  arr.each do |el|
    sum = sum + el
  end unless arr.nil? or arr.empty?
  
  sum
end

def max_2_sum arr
  sum = 0
  if arr.nil? or arr.empty?
    sum = 0
  elsif arr.length == 1
    sum = arr[0]
  else
    high1 = arr[0]
    high2 = arr[1]
    high1loc = 0
    high2loc = 1
    
    for i in 0..arr.length - 1
      if high1 < arr[i]
        high1 = arr[i]
        high1loc = i
      end
    end
    
    for i in 0..arr.length - 1
      if high2 < arr[i] and i != high1loc
        high2 = arr[i]
        high2loc = i
      end
    end
    
    sum = high1 + high2
  end
  sum
end

def sum_to_n? arr, n
  for i in 0..arr.length-1
    for j in i+1..arr.length-1
      return true if (arr[i] + arr[j]) == n
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /\A[^aeiouAEIOU\W]/.match(s)
end

def binary_multiple_of_4? s
  return false if s.nil? or s.empty? or /[A-z2-9\W]/.match(s)
  return (s.to_i(2) % 4) == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, "Error: ISBN is empty" if isbn.empty?
    raise ArgumentError, "Error: invalid price (must be > $0)" if price <= 0
    @isbn  = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn= new
    raise ArgumentError, "Error: ISBN is empty" if new.empty?
    @isbn = new
  end
  
  def price= new
    raise ArgumentError, "Error: invalid price (must be > $0)" if price <= 0
    @price = new
  end
  
  def price_as_string
    priceOut = @price.round(2).to_s
    "$#{priceOut + ((priceOut.split(".")[1].length == 2)?(""):("0"))}"
  end
end