def test_smallest(x,y)
  smallest = x

  if x == y
    smallest = "They're equal."
  elsif x < y
    smallest = y
  end
  
  return smallest

end

puts test_smallest(10,10)
