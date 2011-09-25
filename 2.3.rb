puts "What's your name?"
answer = gets.chomp.to_s
puts "Howdy, " + answer.to_s + "."

def OhWaitIDidItWrong name
  return "And howdy to #{name}."
end

puts OhWaitIDidItWrong "the stored parameter"
