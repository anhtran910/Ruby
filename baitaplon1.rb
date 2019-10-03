gas_spending = {}
grocery_spending = {}
recreation_spending = {}
accommodation_spending = {}
total_amount = {}
total_amount1 ={}

i=1
for i in 1..2 do
  puts "Input first name of person #{i}:"
  name=gets.chomp.upcase
  puts "how much person #{i} spent for gas?"
  gas=gets.chomp.to_f
  gas_spending[name]=gas
  puts "how much person #{i} spent for groceries?"
  grocery=gets.chomp.to_f
  grocery_spending[name]=grocery
  puts "how much person #{i} spent for recreation?"
  recreation=gets.chomp.to_f
  recreation_spending[name]=recreation
  puts "how much person #{i} spent for accommodation?"
  accommodation=gets.chomp.to_f
  accommodation_spending[name]=accommodation
  total_spending=gas+grocery+recreation+accommodation
  total_amount[name]=total_spending
end



puts gas_spending
puts grocery_spending 
puts recreation_spending
puts accommodation_spending
puts total_amount
puts "Total gas:"
g=0
gas_spending.each_value do |v|
g+=v
end
total_amount1["gas"]=g
puts g
puts "Total groceries:"
gr=0
grocery_spending.each_value do |v|
gr+=v
end
total_amount1["grocery"]=gr
puts gr
puts "Total recreation:"
r=0
recreation_spending.each_value do |v|
r+=v
end
total_amount1["recreation"]=r
puts r
puts "Total accommodation:"
a=0
accommodation_spending.each_value do |v|
a+=v
end
total_amount1["gas"]=a
puts a
puts "Break down spending as following:"
puts total_amount

puts total_amount1
arr=[gas_spending,grocery_spending,recreation_spending,accommodation_spending]
puts arr