# num = 1
# while num < 1000
#   puts num += 1
# end

# Okay, commented out because that's not a method. This one is:

def iterate(total)
  num = 1
  while num < total.to_i
    puts num += 1
  end
end

iterate(1000)
