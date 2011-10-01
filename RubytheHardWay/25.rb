module ex25
  def self.break_words(chars)
    words = chars.split(' ')
    words
  end

  def self.sort_words(words)
    words.sort()
  end

  def self.print_first_words(words)
    # prints first word & shifts the others down by one
    word = words.shift()
    puts word
  end

  def self.print_last_word(words)
    # prints final word after popping it off the end
    word = words.(pop)
    puts word
  end

  def self.sort_sentence(sentence)
    words = break_words(sentence)
    sort_words(words)
  end

  def self.print_first_and_last(sentence)
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end
end
