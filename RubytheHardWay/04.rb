# This is a program by Vic and Mommy.

monkeys = 100
bananas = 1000
kittens = 2
balls_of_yarn = 20
monkey_happiness = bananas / monkeys
knitters = 5
knitter_equity = balls_of_yarn / knitters
kitten_equity = balls_of_yarn / kittens
yarn_brigade = knitters + kittens
planet_of_the_apes = monkey_happiness <= yarn_brigade

puts "There are #{monkeys} monkeys here!"
puts "It's a good thing we have #{bananas} bananas."
puts "Monkey happiness levels are at #{monkey_happiness}. Are we in any danger?"
puts planet_of_the_apes
puts "Oh, aren't those #{kittens} kittens cute?"
puts "Each of the #{knitters} knitters will require #{knitter_equity} balls of yarn."
puts "Uh, oh! Each kitten is demanding #{kitten_equity} balls of yarn!"

bananas = 100
monkey_happiness = bananas / monkeys
planet_of_the_apes = monkey_happiness <= yarn_brigade
# Query: it made sense to me that I'd need to re-declare the bananas variable to re-set it,
# but I guess I thought that the ones that did math would run on the current state of 
# the variable when called, rather than requiring a re-setting themselves. Don't know why.

puts "The #{yarn_brigade} members of the yarn brigade seem distracted..."
puts "Now we have #{bananas} bananas."
puts "Monkey happiness levels have fallen to #{monkey_happiness}.  Have we reached 'Planet of the Apes' conditions?"
puts planet_of_the_apes
