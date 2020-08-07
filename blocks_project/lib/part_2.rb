def all_words_capitalized?(words)
  words.all? { |word| word.capitalize == word }
end

def no_valid_url?(urls)
  urls.none? { |ele| ['com', 'net', 'io', 'org'].include?(ele.split(".")[-1]) } 
end