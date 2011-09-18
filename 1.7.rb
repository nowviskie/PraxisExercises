score1 = 47
score2 = 82
score3 = 98

average = (score1 + score2 + score3) / 3
letter = ""

if average >60 && average <=69
  letter = "D"
elsif average >70 && average <=79
  letter = "C"
elsif average >80 && average <=89
  letter = "B"
elsif average >=90
  letter = "A"
end

puts average.to_s + " average"
if average >= 60
  puts "This is a passing grade of " + letter + "."
else
  puts "The student is failing the course with an F."
end
