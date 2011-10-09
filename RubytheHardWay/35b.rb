# a game by Nora Nowviskie, age 5. Based on her brother's magnum opus.

def prompt()
  print "Go ahead! It's your turn. > "
end

def huh()
  puts "\nThat didn't work, but don't worry. You can try again!"
end

def gold_room()
  puts "\nThis is a golden treasure room. A golden one!"
  puts "A gold, shiny treasure room that is shaped like a diamond, and you can get diamonds \npast all the numbers that have a hundred in them."
  puts "That's a lot!"

 def prompt()
   print "Type a number. \n(If you take too many, you will still stay alive, but some dolphins will come to help you carry it home, \nbecause once they get on land, they turn into humans! Anyway, please type a number. > "
 end

  prompt; next_move = gets.chomp
    how_much = next_move.to_i()

  if how_much.between?(1, 49)
    puts "\nYou can return home safely with your treasure."
    puts "You won the game! The game is over, now."
    Process.exit(0)
  elsif how_much.between?(-100000000000000000, 0)
    puts "\nDon't you want any treasure? Oh, well. \nYou can go to your mom now and show her everything else you found when you were underwater. \nAnd maybe she'll even dive underwater with you."
    Process.exit(0)
  else
    dead("\nYou take lots of treasure. The dolphins come to help you! \nAnd you say, \"Thank you, dolphins, for helping me return my treasure to my mom! \nI might also need your help this weekend to help my mom because Daddy is out of town this weekend \nand she is going to get 159 fruits.\" And the mom might need the dolphins' help. \nIt's going to be another funny game.")
  end
end

def anglerfish_cave()
  puts "\nIn this cave, there is a pit of a hundred anglerfishes (kind of like in Vic's game). \nAnd they are swimming around a treasure chest, and if you throw a glass cup at the anglerfishes, they'll die and you'll win."
  puts "You have a glass cup. Do you THROW it at the anglerfish? \nOr do you decide to STAY for them to eat you? (Only one little bite of your arm -- a tiny nibble!)"
  puts "Oh, also there is a door here."
  anglerfish_dead = false
  chest_open = false

  while anglerfish_dead == false
    prompt; next_move = gets.chomp

    if next_move.include? "stay"
      dead("\nThe anglerfish nibble you a little bit, but they also give you two jewels! \nBut it's not really two jewels, it's just really a purple circle jewel with a glued-on jewel on top of it, \nand that one is a yellow star.")
    elsif next_move.include? "throw"
      puts "\nYou throw the cup. Don't you remember? I said they die! Now you can open the treasure chest."
      anglerfish_dead = true
    else
      huh()
    end
  end

  while anglerfish_dead == true
    prompt; next_move = gets.chomp

    if next_move.include? "chest"
       puts "\nInside the chest you find a little diamond. It's not shaped like a key, but it reminds you of a key. \nYou take it! Maybe you should try it in the door!"
       chest_open = true
    elsif next_move.include? "door"
      puts "\nThe door is locked!"
    else
      huh()
    end

      while chest_open == true
        prompt; next_move = gets.chomp

      if next_move.include? "door"
         puts "\nThe diamond unlocks the door! \nYou can go through the door to get all the treasure that is past all the numbers with a hundred in it!"
         gold_room()
      else
        huh()
      end
   end
  end


end

def dolphin_cave()
  puts "\nIn this cave, there's treasure that dolphins give you!"
  puts "And they save you from any anglerfish that are nearby."
  puts "Do you want to take your treasure out of the cave, or ride on a dolphin?"

  prompt; next_move = gets.chomp

  if next_move.include? "treasure"
    puts "\nYou got the treasure! You swim out."
    start2()
  elsif next_move.include? "ride"
    dead("\nIf you ride a dolphin, nothing will happen except that you'll have fun -- that's all.")
  else
    huh()
    dolphin_cave()
  end
end

def dead(why)
  puts "#{why}\nAnd the game is over."
  Process.exit(0)
end

def start()
  puts "\nMy name is Nora, and the name of my game is called:"
  puts "THE ANGLERFISHES STRIKE!"
  puts "It's only a game for girls. And boys can play. \nAnd this is how it's going to go: someone dives underwater very deeply. That's you!"
  start2()
end

def start2()
  puts "There's a cave to your left and a cave to your right."

  prompt; next_move = gets.chomp

  if next_move.include? "left"
    anglerfish_cave()
  elsif next_move.include? "right"
    dolphin_cave()
  else
    dead("\nOh, no! You got stuck in a booby-trap! \nBecause the anglerfish have set a booby-trap here and it goes down and it goes KLING! \nAnd now you have to eat rocks and sand. (Try swimming left or right next time.)")
  end
end

start()
