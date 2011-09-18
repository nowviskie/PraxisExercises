origin = 1950 
now = Time.now.year

if origin < now - 100
  puts "Welcome to the modern era! What took you so long?"
elsif origin > now + 100
  puts "Share your wisdom with us, O visitor from the world to come."
else 
  puts "I suppose you think we'll be impressed by someone who has moved less than 100 years in time."
end
