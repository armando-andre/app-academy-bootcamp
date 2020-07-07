def partition(arrPartition, num)
  lowArr = []
  highArr = []

  arrPartition.each do |ele|
    if ele >= num
      highArr << ele
    else
      lowArr << ele
    end
  end

  return lowArr, highArr
end


def merge(hash_1, hash_2)
  mergeResult = *hash_1, *hash_2
  hash = Hash.new(0)

  mergeResult.each { |key, val| hash[key] = val }
  
  hash
end

def censor(sentence, curse_words)
  words = sentence.split(" ")

  new_words = words.map do |word|
    if curse_words.include?(word.downcase)
      star_vowels(word)
    else
      word
    end
  end

  new_words.join(" ")
end

def star_vowels(string)
  vowels = "aeiou"
  new_str = ""

  string.each_char do |char|
    if vowels.include?(char.downcase)
      new_str += "*"
    else
      new_str += char
    end
  end

  new_str
end

def power_of_two(powerNumber)
  product = 1

  while product < powerNumber
    product *= 2
  end

  product == powerNumber
end