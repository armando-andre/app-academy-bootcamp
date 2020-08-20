def reverser(str, &prc)
  prc.call(str.reverse { |ele| ele })
end

def word_changer(str, &prc)
  newStr = []

  str.split(" ").each do |ele|
    newStr << prc.call(ele)
  end

  newStr.join(" ")
end

word_changer("goodbye moon") { |word| word.upcase + "!" }