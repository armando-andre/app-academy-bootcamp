def my_map(arr, &prc)
  newArray = []

  arr.each { |val| newArray << prc.call(val) }

  newArray
end