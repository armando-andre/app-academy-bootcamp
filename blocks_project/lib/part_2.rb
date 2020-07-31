def all_words_capitalized?(words)
  words.all? { |word| word.capitalize == word }
end