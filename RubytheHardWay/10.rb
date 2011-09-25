puts "I'm 5'11\" tall."
puts 'I said, I\'m 5\'11" tall.'

line1 = "\tIndent 1"
line2 = "\t\tIndent 2"
line3 = <<WHATEVER
Blah de blah de
\t* blah
\t* blah
\t* blah.
WHATEVER

# Interesting that closing the "whatever" didn't work in the presence of a trailing whitespace. This one looks dangerous.

line4 = "This one is actually a\nsplit line."

puts line1
puts line2
puts line3
puts line4
