greetings = ["Good day.", "Arrr! Matey.", "Hello, kind sir."]

greetings.each do |greeting|
  puts "'" + greeting + "'"
  if greeting['Arrr!']
    puts "I, for one, welcome our pirate overlords."
  else
    puts "Oh, thank heavens you're not a pirate."
  end
end
