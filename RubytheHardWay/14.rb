user = ARGV.first
prompt = '> '

puts "Hi, #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "\nWould you like to play... global thermonuclear war?"
print prompt
isgame = STDIN.gets.chomp()

puts "Where do you live, #{user}? (What!? That's not creepy.)"
print prompt
lives = STDIN.gets.chomp()

puts "What are you wearing?"
print prompt
wearing = STDIN.gets.chomp()

puts <<MESSAGE
\nWell, then. You said #{isgame} to my offer of a diverting afternoon.
It's a good thing I know where you live, #{user}.
I'm heading over to #{lives} promptly.
And I'll be looking for the person wearing #{wearing}.
MESSAGE

