require_relative "room"

class Hotel
  def initialize(string, hash)
    @name =  string
    @rooms = {}

    hash.each do |key, val|
      @rooms[key] = Room.new(val)
    end
  end

  def name
    @name.split(" ").map(&:capitalize).join(" ")
  end

  def rooms
    @rooms
  end

  def room_exists?(string)
    @rooms.has_key?(string)
  end

  def check_in(person, roomName)
    if self.room_exists?(roomName)
      if @rooms[roomName].add_occupant(person)
        p 'check in successful'
      else
        p 'sorry, room is full'
      end
    else
      p 'sorry, room does not exist'
    end
  end

  def has_vacancy?
    @rooms.values.any? { |room| room.available_space > 0 }
  end

  def list_rooms
    @rooms.each do |key, val|
      puts "#{key} : #{val.available_space}"
    end
  end
end