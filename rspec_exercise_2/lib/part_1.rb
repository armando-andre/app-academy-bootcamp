def partition(arr, num)
  lowArr = []
  highArr = []

  arr.each do |ele|
    if ele >= num
      highArr << ele
    else
      lowArr << ele
    end
  end

  return lowArr, highArr
end
