require_relative "room"

class Hotel
  def initialize(string, hash)
    
    hash.each do |key, val|
      @name = string
      @rooms = hash.each do |key, val|
        Hash.new(Room.new(self))
      end

      p @rooms
    end
  end
end


p Hotel.new("hilbert's grand hotel", "Basement"=>4)