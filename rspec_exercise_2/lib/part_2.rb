def palindrome?(palindromeString)
  i = palindromeString.length
  reverseWord = ""

  while i > 0
    reverseWord += palindromeString[i - 1]

    i -= 1
  end

  if reverseWord === palindromeString
    true
  else
    false
  end
end

def substrings(string)
  emptyArray = []

  (0...string.length).each do |start_idx|
    (start_idx...string.length).each do |end_idx|
      emptyArray << string[start_idx..end_idx]
    end
  end

  emptyArray
end

def palindrome_substrings(string)
  substringsArray = []

  substrings(string).each do |ele|
    if ele.length > 1 && palindrome?(ele) 
      substringsArray << ele
    end
  end

  substringsArray
end