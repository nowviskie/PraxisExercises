the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'peaches', 'pears']
change = [1, 'pennies', 2, 'nickels']

for x in the_count
  puts "This is #{x}."
end

fruits.each do |yum|
  puts "A fruit of type: #{yum}."
end

for i in change
  puts "I gots #{i}."
end

elements = []

for i in (0..5)
  puts "Adding #{i} to the list..."
  elements.push(i)
end

for i in elements
  puts "Element was #{i}."
end
