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
  sentenceSplited = sentence.split(" ")
  vowels = "aeiou"
  emptyArray = []

  sentenceSplited.each do |word|
    (0...arrCensor.length).each do |i|
      if word.downcase.include?(arrCensor[i])
        newWord = []

        word.each_char do |char|
          if vowels.include?(char)
            newWord << "*"
          else
            newWord << char
          end
        end

        emptyArray << newWord.join("")
      end
    end
  end

  emptyArray.each do |word|
    (0...sentenceSplited.length).each do |ele|
      p sentenceSplited[ele]
    end
  end

  emptyArray
end

p censor("Gosh darn it", ["gosh", "darn", "shoot"])







  # vowels = "aeiou"
  # emptyArray = []
  # sentenceSplited = sentence.split(" ")

  # arrCensor.each do |arrCensorWord|
  #   if sentence.downcase.include?(arrCensorWord.downcase)
  #     newWord = []

  #     arrCensorWord.each_char do |char|
  #       if vowels.include?(char)
  #         newWord << "*"
  #       else
  #         newWord << char
  #       end
  #     end

  #     emptyArray << newWord.join("")
  #   end
  # end

  # emptyArray