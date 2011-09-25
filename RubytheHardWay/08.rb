formatter = "%s %s %s %s"

puts formatter % [1, 2, 3, 4]
puts formatter % ["alpha", "beta", "gamma", "delta"]
puts formatter % [formatter, formatter, formatter, formatter]

puts "A song by Nora (age 5), for tuning her ukelele:"

puts formatter % [
  "My dog eats fleas, /",
  "Most ev'ry night; /",
  "He waits for them /",
  "In pale moonlight..."
]
