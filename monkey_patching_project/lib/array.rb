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
end