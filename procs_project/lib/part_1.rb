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

def my_any?(arr, &prc)
  switch = nil

  arr.each do |val|
    if prc.call(val) === true
      switch = true
      break
    else
      switch = false
    end
  end

  switch
end

def my_all?(arr, &prc)
  switch = nil

  arr.each do |val|
    if prc.call(val) === false
      switch = false
      break
    else
      switch = true
    end
  end

  switch
end

def my_none?(arr, &prc)
  switch = nil

  arr.each do |val|
    if prc.call(val) === true
      switch = false
      break
    else
      switch = true
    end
  end

  p switch
end

my_none?([3, 5, 7, 11]) { |n| n.even? }