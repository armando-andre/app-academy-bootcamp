# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.length === 0

    self.max - self.min
  end

  def average
    return nil if self.length === 0

    self.sum / self.length.to_f
  end

  def median
    return nil if self === []

    arraySorted = self.sort
    arrLength = arraySorted.length
    firstNumToAverage = arraySorted[arrLength / 2 - 1]
    secondNumToAverage = arraySorted[arrLength / 2]

    if arrLength % 2 == 1
      arraySorted[arrLength / 2]
    else
      total = firstNumToAverage + secondNumToAverage
      total.to_f / 2
    end
  end

  def counts
    counter = Hash.new(0)

    self.each do |ele|
      counter[ele] += 1
    end

    counter
  end

  def my_count(val)
    counter = 0

    self.each do |ele|
      counter += 1 if ele === val
    end

    counter
  end

  def my_index(val)
    index = 0

    (0...self.length).each do |position| 
      if self[position] === val
        return index = position
      else
        index = nil
      end
    end

    index
  end

  def my_uniq
    counter = Hash.new(0)
    emptyArr = []

    self.each do |ele|
      counter[ele] += 1
    end

    counter.each_key { |key| emptyArr << key }

    emptyArr
  end

  def my_transpose
    newArr = []

    (0...self.length).each do |row|
      newRow = []

      (0...self.length).each do |ele|
        newRow << self[ele][row]
      end

      newArr << newRow
    end

    newArr
  end
end