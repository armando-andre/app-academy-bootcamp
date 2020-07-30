def select_even_nums(arr)
  arr.select(&:even?)
end

def reject_puppies(arr)
  arr.reject { |ele| ele["age"] <= 2 }
end

def count_positive_subarrays(arr)
  arr.count { |num| num.sum > 0 }
end

def aba_translate(string)
  vowels = "aeiou"
  newStr = ""

  string.each_char do |ele|
    if vowels.include?(ele)
      newStr += ele + "b" + ele
    else
      newStr += ele
    end
  end

  newStr
end

def aba_array(arr)
  arr.map { |ele| aba_translate(ele) }
end

p aba_array(["cat", "dog", "butterfly"])