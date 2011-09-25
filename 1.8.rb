puts "How many iterations?"
iter = gets.chomp.to_i

x,y = 10,20

iter.times do |i|
  puts x
  x,y = y,x+y
end
