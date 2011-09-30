from_file, to_file = ARGV
script = $0                 # But I still don't know why I have to set this. 
#                             See 16.rb

puts "Copying from #{from_file} to #{to_file}."

input = File.open(from_file)
indata = input.read()

puts "The input file = #{indata.length} bytes."
puts "Does the output file exist? #{File.exists? to_file}"
puts "Sure you want to copy? RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Copying complete."

output.close()
input.close()

