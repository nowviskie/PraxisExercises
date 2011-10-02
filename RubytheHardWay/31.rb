def prompt
  print "> "
end

puts "You stand before two doors. Ivory or horn?"

prompt; door = gets.chomp

if door == "ivory"
  puts "Swirling mists, beautiful scents, laughter. What do you do?"
  puts "1. Enter."
  puts "2. Take a deep breath."

  prompt; mists = gets.chomp

  if mists == "1"
    puts "The mists fall away under your feet and you plummet to the depths below. Goodbye!"
  elsif mists == "2"
    puts "You swoon and fall through the ivory doorway, plummeting through the mists to the depths below. Goodbye!"
  else 
    puts "Oh, a contrarian barbarian? #{mists}, indeed. Game over for you."
  end

elsif door == "horn"
  puts "The door swings open. A man carrying paper towels and Windex steps out. 'Pardon me,' he says, 'while I cleanse this perception.'"
  puts "1. You run."
  puts "2. You run very, very quickly."
  puts "3. You wait patiently for the treatment."

  prompt; perception = gets.chomp

  if perception == "1" or perception == "2"
    puts "Smart cookie. You win!"
  elsif perception == "3"
    puts "This is really quite disappointing. Game over for you."
  else 
    puts "Cheaters never prosper. Game over for you."
  end

else
  puts "Not a team player, are we? Game over for you."
end
