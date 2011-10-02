people = 10
cars = 2
busses = 10

if cars > people
  puts "We should drive."
elsif cars < people
  puts "We shouldn't drive."
else
  puts "Can't decide!"
end

if busses > cars
  puts "Too many busses!"
elsif busses < cars
  puts "We could take the bus."
else 
  puts "Still can't decide!"
end

if people > busses
  puts "Okay, let's take the bus."
else
  puts "Screw this. Let's stay home."
end

