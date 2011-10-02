i = 0
numbers = []

while i < 6
  puts "Top of the loop, i is #{i}."
  numbers.push(i)

  i = i + 1
puts "Numbers now: #{numbers}."
puts "Bottom-o-the-loop, i is #{i}."
end

puts "The numbers: "

for num in numbers
  puts num
end

