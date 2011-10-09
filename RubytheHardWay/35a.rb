# a game by Vic Sansing, age 8.

def prompt()
  print "Your turn! What do you do? > "
end

def huh()
  puts "\nI don't understand you. Please try again."
end

def gold_room()
  puts "\nYou've found Poseidon's treasure cave! How many treasures will you take?"

 def prompt()
   print "Type a number. > "
 end

  prompt; next_move = gets.chomp
    how_much = next_move.to_i()

  if how_much.between?(1, 49)
    puts "\nYour treasure is light, but very valuable. You make it safely back to the surface!" 
    puts "GAME OVER. YOU WIN. (You can play again, if you want to.)"
    Process.exit(0)
  elsif how_much.between?(-100000000000000000, 0)
    puts "\nYou're a fool! But you make it safely back to the surface."
    Process.exit(0)
  else
    dead("\nThe treasure is too heavy. You swim slowly, and run out of air.")
  end
end

def eel_cave()
  puts "\nIn this cave, there are many eels in a pit!"
  puts "They are swimming around a treasure chest. You also see a door."
  puts "You have one depth charge. Do you throw it at the eels? Do you try to open the chest? Do you try to open the door?"
  eels_moved = false
  chest_open = false

  while eels_moved == false
    prompt; next_move = gets.chomp

    if next_move.include? "chest"
      dead("\nThe eels kill you with an electric shock.")
    elsif next_move.include? "door"
      dead("\nAn eel spots you and strikes!")
    elsif next_move.include? "charge"
      puts "\nYou throw the charge and quickly take cover. The eels are frightened by the blast and swim away."
      eels_moved = true
    else
      huh()
    end
  end

  while eels_moved == true
    prompt; next_move = gets.chomp

    if next_move.include? "chest"
       puts "\nInside the chest you find a key. You take it!"
       chest_open = true
    elsif next_move.include? "door"
      puts "\nThe door is locked!"
    else
      huh()
    end

      while chest_open == true
        prompt; next_move = gets.chomp

      if next_move.include? "door"
         puts "\nYou unlock the door. You can go through!"
         gold_room()
      else
        huh()
      end
   end
  end


end

def kraken_cave()
  puts "\nIn this cave, you see a gigantic, black, horrifying kraken!"
  puts "He tries to grab you with his tentacles."
  puts "Do you swim away or stay to fight?"

  prompt; next_move = gets.chomp

  if next_move.include? "swim"
    start()
  elsif next_move.include? "fight"
    dead("\nThe kraken raises one tentacle and strangles you like a boa constrictor.")
  else
    puts "\nYou try that, but it doesn't work."
    kraken_cave()
  end
end

def dead(why)
  puts "#{why}\nYour days are over, fool."
  Process.exit(0)
end

def start()
  puts "\nYou are a diver in a deep, dark sea."
  puts "There's a cave to your left and a cave to your right."

  prompt; next_move = gets.chomp

  if next_move.include? "left"
    eel_cave()
  elsif next_move.include? "right"
    kraken_cave()
  else
    dead("\nOh, no! A rock falls from the surface and hits your oxygen tank. (Try swimming left or right next time.)")
  end
end

start()
