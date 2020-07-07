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