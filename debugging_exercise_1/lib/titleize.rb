# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, titleize, that accepts a string representing a title 
# and capitalizes each word in a string except 'a', 'and', 'of', 'on', or 'the'.
# The first word of the title should be capitalized no matter what.

require "byebug"

def titleize(title)
  little_words = [ "and", "the", "over", "a", "on", "of" ]
  words = title.split(" ")

  titleized_words = words.map.with_index do |i, word|
    if word == 0 && little_words.include?(i)
      i[0].upcase + i[1..-1].downcase if i[0].downcase
    elsif little_words.include?(i)
      i.downcase
    else
      i[0].upcase + i[1..-1].downcase
    end
  end

  titleized_words.join(" ")
end

p titleize("the bridge on the river kwai")