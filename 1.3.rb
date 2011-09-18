authors = {"Charles Dickens" => "1870", "Gerard Manley Hopkins" => "1889", "William Makepeace Thackeray" => "1863", "Anthony Trollope" => "1882"}
authors.each do |name, date|
  puts name.to_s + " shuffled off this mortal coil in " + date.to_s + "."
  if name == "Gerard Manley Hopkins"
    puts "(Alas!)"
  end
end
