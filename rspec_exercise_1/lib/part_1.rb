def average(average_num_1, average_num_2)
  (average_num_1 + average_num_2) / 2.0
end

def average_array(num_array)
  (num_array.sum) / num_array.length.to_f
end

def repeat(repeat_string, repeat_num=1)
  repeat_string * repeat_num
end

def yell(yell_string)
  yell_string.upcase + "!"
end

def alternating_case(sentence_string)
  newString = []

  sentence_string.split(" ").each_with_index do |char, i|
    if i % 2 == 0
      newString << char.upcase
    else
      newString << char.downcase
    end
  end

  newString.join(" ")
end