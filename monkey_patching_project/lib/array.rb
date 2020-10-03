# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.length === 0

    if self.length > 1
      return self.max - self.min
    else
      return 0
    end      
  end
end