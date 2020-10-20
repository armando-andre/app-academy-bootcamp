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
      false
    else
      true
    end 
  end

  def available_space
    @capacity - @occupants.length
  end

  def add_occupant(string)
    if !full?
      @occupants << string
      true
    else
      false
    end
  end
end