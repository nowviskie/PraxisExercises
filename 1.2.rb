second = 1

minute = second * 60
hour = minute * 60
day = hour * 24
year = day * 365

puts minute.to_s + " seconds in a minute"
puts hour.to_s + " seconds in an hour"
puts day.to_s + " seconds in a day"
puts year.to_s + " seconds in a year"

input1 = 600000000
input2 = 60
input3 = 40000.33.to_f

puts "."
puts "converting to years..."

puts  input1 / year
puts  input2 / year
puts  input3 / year
