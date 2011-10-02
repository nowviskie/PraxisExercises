# encoding: utf-8

# Wayne, I found that this is the way to force the parser to use UTF-8
# in Ruby 1.9 -- but I don't get it! Why would this special comment be
# read and others ignored?
#
# encoding: yo-mamma

menschen = 20
katzen = 30
hunden = 15

if menschen < katzen
  puts "Ach, du lieber! Zu viele katzen!"
end

if menschen > katzen
  puts "eine ausreichende Zahl von Sklaven und willige Diener."
end

if menschen < hunden
  puts "alles stinkt"
end

if menschen > hunden
  puts "alles stinkt, aber nicht so sehr"
end

hunden += 5

if menschen >= hunden
  puts = "größer oder gleich"
end

if menschen <= hunden
  puts "weniger oder gleich"
end

if menschen == hunden
  puts "Schweinehunden! Na, und?"
end
