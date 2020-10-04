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
end