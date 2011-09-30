def puts_two(*args)
  arg1, arg2 = args
  puts "#{arg1} #{arg2}"
end

def puts_two_too(arg1, arg2)
  puts "#{arg1} #{arg2}"
end

def puts_one(arg1)
  puts arg1.to_s
end

def puts_none()
  puts "I feel so empty inside."
end

puts_two("Scholars'", "Lab")
puts_two_too("Again,","again.")
puts_one("Uno!")
puts_none()

