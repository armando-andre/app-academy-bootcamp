# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

def only_vowels?(str)
  strArray = str.split("")
  vowels = "aeiou"
  charArray = []

  strArray.each do |char|
    if vowels.include?(char)
      true
    else
      charArray << char
    end
  end

  if charArray.length === 0
    true
  else
    false
  end
end

p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false
