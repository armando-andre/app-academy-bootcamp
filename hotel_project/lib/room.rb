class Room
  def initialize(num)
    @capacity = num
    @occupants = []
  end

  def capacity
    @capacity
  end

  def occupants
    @occupants
  end

  def full?
    if @occupants.length < @capacity
      return false
    else
      return true
    end 
  end

  def available_space
    @capacity - @occupants.length
  end

  def add_occupant(string)
    if self.full?
      return false
    else
      @occupants << string
      return true
    end
  end
end