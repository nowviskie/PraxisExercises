puts "\nPracticing a bunch of stuff."
puts "Here we go a- \'scaping and \ta-tabbing and making \nooh! new lines. Thrill."

poem = <<THIS_STILL_SEEMS_WEIRD

  She is coming, my own, my sweet;	
\tWere it ever so airy a tread,	
  My heart would hear her and beat,
\tWere it earth in an earthy bed;
  My dust would hear her and beat,	
\tHad I lain for a century dead;	
  Would start and tremble under her feet,	
\tAnd blossom in purple and red.

THIS_STILL_SEEMS_WEIRD
#but boy is syntax highlighting nice in macVim

puts "___"
puts poem
puts "___"

five = 10 - 2 + 3 - 6
puts "Holy moly, five is #{five}.\n\n"

def Ivy_Stacks(started)
  books = started * 500
  shelves = books / 1000
  stacks = shelves / 100
  return books, shelves, stacks
end

start_point = 10000
books, shelves, stacks = Ivy_Stacks(start_point)

puts "With a starting point of #{start_point}..."
puts "we'd have #{books} books, and need #{shelves} shelves and #{stacks} stacks."
start_point = start_point / 10

puts "More elegantly, and divided by 10:"
puts "%s books, %s shelves, and %s stacks." % Ivy_Stacks(start_point)
