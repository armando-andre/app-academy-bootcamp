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


def merge(hash_1, hash_2)
  mergeResult = *hash_1, *hash_2
  hash = Hash.new(0)

  mergeResult.each { |key, val| hash[key] = val }
  
  hash
end