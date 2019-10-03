puts "Let's play a numbers game. How many numbers would you like to enter?"
n=gets.chomp.to_i
numbers=Array.new(n)
i=0
while i<n do
puts "Enter positive integerthe number #{(i+1)}:"
numbers[i]=gets.chomp
i+=1
end 
puts numbers
puts "Comparing to the last value entered, #{numbers[(n-1)]}, here are the observations:"
x=0
while x<n do
  if numbers[x]<numbers[n-1]
  puts "The value at index #{x}, #{numbers[x]} is less than value at the last index, #{numbers[(n-1)]}."
  end
  if numbers[x]>numbers[n-1]
  puts "The value at index #{x}, #{numbers[x]} is greater than value at the last index, #{numbers[(n-1)]}."
  end
  if numbers[x]=numbers[n-1]
  puts "The value at index #{x}, #{numbers[x]} is equal to value at the last index, #{numbers[(n-1)]}."
  end
  x+=1
end

