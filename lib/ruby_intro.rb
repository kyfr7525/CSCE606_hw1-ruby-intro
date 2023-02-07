# When done, submit this entire file to the autograder.

# Part 1


def sum(arr)
      # if arr.length() == 0 
      #   return 0 
      # else
      #   add = 0
      #   for i in (arr.length() - 1)
      #     add += arr[i]
      #   end
      # end
  sum = 0
  arr.each{|i| sum += i }
  return sum
end
  
#####################################################################################################################################################################

def max_2_sum(arr)
  # one = arr.min()
  # two = arr.min()
  # arr.sort()
  # arr.each{|i| puts i }
  # puts "\n\n"
  # return arr[-1] + arr[-2]
  
  if arr.empty? 
    return 0
    
  elsif arr.length() == 1
    return arr[0]
    
  else
    one = arr.max()
    arr.each do |i|
      if arr[i] == one
        arr.delete_at(i)
        break
      end
    end
    
    two = arr.max()
    
    return one + two
  end
  
end


#####################################################################################################################################################################

def sum_to_n? arr, n
  tempsum = 0
  
  arr.each do |i|
    arr.each do |j|
      if i != j # we don't want to add the same number to itself, so for iteration 0, we don't check j = arr[0]
        tempsum = i+j # check if i + that current j is equal to n
        if tempsum == n
          return true
        else
          tempsum = 0
        end
      end
    end
  end
  
  return false
end

#####################################################################################################################################################################
#####################################################################################################################################################################
# # Part 2

def hello(name)
  return "Hello, " + name
end


#####################################################################################################################################################################

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if s.empty?
    return false
  end
  
  if s[0] =~ /[aeiouAEIOU]/ 
    return false
  elsif s[0] =~ /[^a-zA-Z]/
    return false
  else 
    return true
  end

  # if s[0] =~ /[a-zA-Z_]/
  #   new_str = s.downcase # convert the original string, s, to all lowercase
  #   vowels = ["a","e","i","o","u"]
    
    
  #   vowels.each do |vow|
  #     if vow == new_str[0]
  #       return false
  #     end
  #   end
    
  #   return true
    
  # else
  #   return false
  # end
end


#####################################################################################################################################################################

def binary_multiple_of_4? s
  if s =~ /[^0-9]/ #/[a-zA-Z]/
    return false # this is because we want to have a pure binary number. Any characters means it's not an int
  elsif (s.to_i(2) % 4 == 0) && !s.empty?
    return true
  else
    return false
  end
end


#####################################################################################################################################################################
#####################################################################################################################################################################
# # Part 3


# Define a class `BookInStock` which represents a book with an ISBN number, `isbn`, and price of the book as a floating-point number, `price`, as attributes. 
# Run associated tests via:  `$ rspec -e 'getters and setters' spec/part3_spec.rb` (Make sure you are in the correct directory: `cd assignment`)

# The constructor should accept the ISBN number (a string, since in real life ISBN numbers can begin with zero and can include hyphens) as the first argument 
# and price as second argument, and should raise `ArgumentError` (one of Ruby's built-in exception types) if the ISBN number is the empty string or if the 
# price is less than or equal to zero.  Include the proper getters and setters for these attributes. Run associated tests via:  `$ rspec -e 'constructor' spec/part3_spec.rb`

# Include a method `price_as_string` that returns the price of the book formatted with a leading dollar sign and two decimal places, that is, a price of 20 should format 
# as `$20.00` and a price of 33.8 should format as `$33.80`. Check out formatted string methods in Ruby. Run associated tests via:  `$ rspec -e '#price_as_string' spec/part3_spec.rb`

# You can check your progress on all of the above by running `rspec spec/part3_spec.rb`.


class BookInStock
  def initialize(isbn, price) # constructor that takes in ISBN number and price; same as initialize?
    if (isbn == "" or price <= 0.0)
      raise ArgumentError, "Either the ISBN number is empty or the price is <= to 0!"
    end
    @isbn = isbn
    @price = price.to_f
  end

  def isbn #instance method--like a getter? based on https://canvas.tamu.edu/courses/206251/files/51082386?module_item_id=7192309
    @isbn
  end
  
  def isbn=(new_isbn) # setter
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string # string formatting: https://www.rubyguides.com/2012/01/ruby-string-formatting/
    # return format("$%0.2f", @price)
    return "$%0.2f" % [@price]
    # return "$#{@price}"
  end
end
