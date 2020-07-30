# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
  return false if num < 2

  (2...num).none? { |i| num % i == 0 }
end

def largest_prime_factor(num)
  num.downto(2) do |factor|
    if num % factor == 0 && prime?(factor)
      return factor
    end
  end
end

def unique_chars?(str)
  strHash = Hash.new(0)
  strUnique = true

  str.each_char do |char|
    strHash[char] += 1

    strHash.each_value do |val|
      return strUnique = false if val > 1
    end
  end

  strUnique
end

def dupe_indices(arr)
  indices = Hash.new { |hash, key| hash[key] = [] }
  arr.each_with_index do |ele, i|
    indices[ele] << i
  end

  indices.select { |ele, arr| arr.length > 1 }
end

dupe_indices(["a", "b", "c", "c", "b"])