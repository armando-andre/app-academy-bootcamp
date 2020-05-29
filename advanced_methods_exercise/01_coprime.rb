# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)
  low = 0
  high = 0
  emptyArray = []

  if num_1 < num_2
    low = num_1
    high = num_2
  else
    low = num_2
    high = num_1
  end

  (2..high).each do |num|
    if low % num === 0 && high % num === 0
      emptyArray << num
    end
  end

  if emptyArray.length === 0
    return true
  else
    return false
  end
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false