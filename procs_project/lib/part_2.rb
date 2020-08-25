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

def greater_proc_value(num, prc1, prc2)
  if prc1.call(num) > prc2.call(num)
    return prc1.call(num)
  else
    return prc2.call(num)
  end
end