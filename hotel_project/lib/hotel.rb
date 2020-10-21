require_relative "room"

class Hotel
  def initialize(string, hash)
    @name =  string
    @rooms = {}

    hash.each do |key, val|
      @rooms[key] = Room.new(val)
    end

    def name
      upcaseName = @name.split(" ")
      upcaseName.each { |ele| ele[0] = ele[0].upcase }.join(" ")
    end

    def rooms
      @rooms
    end

    def room_exists?(string)
      if @rooms.include?(string)
        true
      else
        false
      end
    end
  end
end


p Hotel.new("hilbert's grand hotel", "Basement"=>4).room_exists?("cool")