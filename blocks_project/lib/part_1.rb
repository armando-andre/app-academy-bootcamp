def select_even_nums(arr)
  evenNumsArr = []

  arr.select { |num| evenNumsArr << num if num.even? }

  evenNumsArr
end