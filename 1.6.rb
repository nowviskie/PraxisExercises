text = "The quick brown fox jumped over the lazy dogs."

longestword = ""

text.split(" ").each do |word|
  if word.length > longestword.length
    longestword = word
  end
end

puts longestword 
puts longestword.length.to_s + " chars"
