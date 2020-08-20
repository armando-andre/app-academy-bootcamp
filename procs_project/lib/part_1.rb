def my_map(arr, &prc)
  newArray = []

  arr.each { |val| newArray << prc.call(val) }

  newArray
end

def my_select(arr, &prc)
  newArray = []

  arr.each { |val| newArray << val if prc.call(val) }

  newArray
end

def my_count(arr, &prc)
  counter = 0

  arr.each { |val| counter += 1 if prc.call(val) }

  counter
end