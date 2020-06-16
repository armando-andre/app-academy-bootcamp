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

p hipsterfy("cdl")