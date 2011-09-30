filename = ARGV.first
# script = $0                      // This was in the sample, but I
#                                     don't understand what it's for. 
#                                     Script works fine without it.

puts "Let's erase #{filename}."
puts "If you don't want to, hit CTRL-C (^C)."
puts "If you do want to erase #{filename}, hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Please give me four lines of verse."
print "1: "; line1 = STDIN.gets.chomp()
print "2: "; line2 = STDIN.gets.chomp()
print "3: "; line3 = STDIN.gets.chomp()
print "4: "; line4 = STDIN.gets.chomp()

puts "Now we'll write these to the file...."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
target.write(line4)

puts "...and close it."
target.close()

