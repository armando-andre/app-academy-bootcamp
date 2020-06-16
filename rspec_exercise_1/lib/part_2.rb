def hipsterfy(word)
  vowels = "aeiou"

  i = word.length - 1
  while i >= 0
    if vowels.include?(word[i])
      return word[0...i] + word[i+1..-1]
    end

    i -= 1
  end

  word
end

def vowel_counts(string_arg)
  vowels = "aeiou"
  hash = Hash.new(0)

  string_arg.downcase.each_char do |i|
    if vowels.include?(i)
      hash[i] += 1
    end
  end

  p hash
end

p vowel_counts("WILLIAMSBURG bridge")