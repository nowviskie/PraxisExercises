# a game for Vic

def prompt()
  print "> "
end

def gold_room()
  puts "This room is full of gold coins! How many will you take?"

  prompt; next_move = gets.chomp
    how_much = next_move.to_i()

  if how_much < 50
    puts "You're not too greedy, are you? But you are smart and brave. A door opens up to the outside world." 
    puts "Good job! (You can play again, if you want to.)"
    Process.exit(0)
  else
    dead("You're too greedy! A trap door opens beneath you and you fall to the dungeon!")
  end
end

def dragon_room()
  puts "There's a dragon here!"
  puts "He's lying on a pile of gemstones."
  puts "And he's also blocking the door."
  puts "Are you going to take the gemstones or try to move the dragon? (Hint: he looks ticklish.)"
  dragon_moved = false

  while true
    prompt; next_move = gets.chomp

    if next_move.include? "take"
      dead("The dragon swipes at the gemstones and slices you in half with a single claw.")
    elsif next_move == "tickle him" and not dragon_moved
      puts "The dragon rises slowly and lumbers away from the door. You can exit now."
      dragon_moved = true
    elsif next_move.include? "gemstones" and dragon_moved
      dead("Angered, the dragon burns greedy little you to a crisp.")
    elsif next_move == "exit" and dragon_moved
      gold_room()
    else
      puts "I don't understand you. Try again."
    end
  end
end

def dwarf_room()
  puts "Here, you see a small, hairy dwarf."
  puts "He raises an axe, menacingly."
  puts "Do you flee or fight?"

  prompt; next_move = gets.chomp

  if next_move.include? "flee"
    start()
  elsif next_move.include? "fight"
    dead("He makes quick work of you. It's all over now.")
  else
    dwarf_room()
  end
end

def dead(why)
  puts "#{why} Bad choice!"
  Process.exit(0)
end

def start()
  puts "You are in a darkened room."
  puts "There's a door to your left and a door to your right."
  puts "Which one do you take?"

  prompt; next_move = gets.chomp

  if next_move == "left"
    dragon_room()
  elsif next_move == "right"
    dwarf_room()
  else
    dead("You stumble around the room for hours, until you fall into a deep and dreamless sleep.")
  end
end

start()
