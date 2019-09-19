gas_spending = {}
grocery_spending = {}
recreation_spending = {}
accommodation_spending = {}
total_amount = {}
total_amount1 ={}

i=1
for i in 1..4 do
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

arr1=[]
arr=[gas_spending,grocery_spending,recreation_spending,accommodation_spending]
arr.each do |e|
total=0
e.each_value do |v|
total+=v
end
arr1<< total
end
total_amount1["gas"]=arr1[0]
total_amount1["grocery"]=arr1[1]
total_amount1["recreation"]=arr1[2]
total_amount1["accommodation"]=arr1[3]
puts "Break down spending as following:"
puts total_amount
puts total_amount1
puts "who spending most:"
total_amount.each do |k,v|
puts k if v==total_amount.values.max
end
puts "which was spent most"
total_amount1.each do |k,v|
puts k if v==total_amount1.values.max
end
puts "Who spent gas most"
gas_spending.each do |k,v|
puts k if v==gas_spending.values.max
end
puts "Who spent groceries most"
grocery_spending.each do |k,v|
puts k if v==grocery_spending.values.max
end
puts "Who spent recreation most"
recreation_spending.each do |k,v|
puts k if v==recreation_spending.values.max
end
puts "Who spent accommodation most"
accommodation_spending.each do |k,v|
puts k if v==accommodation_spending.values.max
end
