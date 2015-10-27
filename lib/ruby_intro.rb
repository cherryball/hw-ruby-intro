# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
   total = 0
   arr.each { |x| total += x }  unless arr.empty?
   return total
end

def max_2_sum arr
  # YOUR CODE HERE
  total = 0
  if arr.empty?
    total = 0
  elsif arr.length == 1
    total = arr[0]
  else
   arr.sort! { |x, y| y <=> x } 
#   arr.each { |x| puts x }
   (0..1).each { |x| total += arr[x] }
  end
  
  return total
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? || arr.length == 1
    return false
  else
    arr.each do |x|
      arr.each { |y| return true if x != y && x + y == n }
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.to_s.length == 0
  return false if s[0,1] =~ /[^a-z|A-Z]/
  consonant = ["a", "e", "i", "o", "u"]
  return !consonant.include?(s[0,1].downcase)
end

def binary_multiple_of_4? s
  return false if s.to_s.length == 0 || s =~ /[^0|1]/ 
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

=begin
arr = [5, 7, 3, 4, 5]
total = max_2_sum(arr)
puts total


puts "sum_to_n? test"
arr = [-1,-2,3,4,6,-8]
puts sum_to_n? arr, 12

puts hello("Dan")


puts "==========="
puts starts_with_consonant?("#a")

=end