def chicken_n_biscuits(chickens, biscuits)
  puts "You have #{chickens} chickens!"
  puts "You have #{biscuits} biscuits!"
  if
    biscuits > 0   
    # assuming you always have chickens. You always have chickens, right?
  puts "You have chicken'n'biscuits!\n\n"
  else
    puts "So sad."
  end
end

puts "feed the function some integers"
chicken_n_biscuits(142, 87)

puts "use variables"
chicken_amount = 20
biscuit_amount = 19243
chicken_n_biscuits(chicken_amount, biscuit_amount)

puts "doing some math"
chicken_n_biscuits(10 + 15, 37 - 2)

puts "variables plus math"
chicken_n_biscuits(chicken_amount + 20, biscuit_amount - 19245)

