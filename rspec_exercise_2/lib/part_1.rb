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

def censor(sentence, arrCensor)
  vowels = "aeiou"

  arrCensor.each do |arrCensorWord|
    if sentence.downcase.include?(arrCensorWord.downcase)
      arrCensorWord.each_char.with_index do |char, i|
        p char
        # sentence[i] = "*" if vowels.include?(char)
      end
    end
  end

  # sentence.each_char do |sentenceChar|
  #   p sentenceChar
  # end
end

p censor("Gosh darn it", ["gosh", "darn", "shoot"])