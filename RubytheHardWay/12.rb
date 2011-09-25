require 'open-uri'

open("http://www.jasonheppler.org/the-rubyist-historian-getting-started.html") do |f|
  f.each_line {|line| p line}
  puts f.base_uri 
  puts f.content_type 
  puts f.charset 
  puts f.content_encoding 
  puts f.last_modified 
end

puts "Hey, Scholars' Lab! Why am I not using THIS tutorial?"
