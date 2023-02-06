# When done, submit this entire file to the autograder.

# Part 1


# ------------------------------------------------------------------------------------------------------------------------------------------------------
# Although Ruby supports looping constructs like 'for' and 'while', consider using block syntax with each for a more idiomatic use of Ruby

# # 0. Define a method `sum(array)` that takes an array of integers as an argument and returns the sum of its elements. 
#   For an empty array it should return zero.  Run associated tests via:  `$ rspec -e '#sum ' spec/part1_spec.rb` 
#   (Make sure you are in the correct directory: `cd assignment` and rspec is installed)
# ------------------------------------------------------------------------------------------------------------------------------------------------------
# # 0. Define a method `max_2_sum(array)` which takes an array of integers as an argument and returns the sum of its two largest elements. 
#   For an empty array it should return zero. For an array with just one element, it should return that element 
#   (Consider if the two largest elements are the same value as well). Run associated tests via:  `$ rspec -e '#max_2_sum' spec/part1_spec.rb`
# ------------------------------------------------------------------------------------------------------------------------------------------------------
# # 0. Define a method `sum_to_n?(array, n)` that takes an array of integers and an additional integer, n, as arguments and returns true 
#   if any two elements in the array of integers sum to n. `sum_to_n?([], n)` should return false for any value of n, by definition. 
#   Run associated tests via:  `$ rspec -e '#sum_to_n' spec/part1_spec.rb` 
# ------------------------------------------------------------------------------------------------------------------------------------------------------
# # You can check your progress on all of the above by running `$ rspec spec/part1_spec.rb`.

# ------------------------------------------------------------------------------------------------------------------------------------------------------



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
# Define a method `max_2_sum(array)` which takes an array of integers as an argument and returns the sum of its two largest elements. 
# For an empty array it should return zero. For an array with just one element, it should return that element 
# (Consider if the two largest elements are the same value as well). Run associated tests via:  `$ rspec -e '#max_2_sum' spec/part1_spec.rb`


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

# 0. Define a method `sum_to_n?(array, n)` that takes an array of integers and an additional integer, n, as arguments and 
# returns true if any two elements in the array of integers sum to n. `sum_to_n?([], n)` should return false for any value of n, by definition. 
# Run associated tests via:  `$ rspec -e '#sum_to_n' spec/part1_spec.rb` 


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

# def hello(name)
#   # YOUR CODE HERE
# end


#####################################################################################################################################################################
# def starts_with_consonant? s
#   # YOUR CODE HERE
# end


#####################################################################################################################################################################
# def binary_multiple_of_4? s
#   # YOUR CODE HERE
# end


#####################################################################################################################################################################
#####################################################################################################################################################################
# # Part 3

# class BookInStock
# # YOUR CODE HERE
# end
