def select_even_nums(arr)
  arr.select(&:even?)
end

def reject_puppies(arr)
  arr.reject { |ele| ele["age"] <= 2 }
end

def count_positive_subarrays(arr)
  arr.count { |num| num.sum >= 1 }
end