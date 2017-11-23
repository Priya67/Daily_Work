require 'pry'

class Card
  attr_accessor :face_value, :face_up

  def initialize(face_value, face_up)
    @face_value = face_value
    @face_up = face_up
  end

  def reveal
    puts "#{@face_value}" #if @face_up
  end

  def hide
    @face_up = false
  end

  def equals(card1)
    self.face_value == card1.face_value ? true : false
  end

  def to_s
    puts "#{@face_value}"
  end
end

# if __FILE__ == $PROGRAM_NAME
#   card1 = Card.new(2, false)
#   card1.reveal
#   card1.hide
#
#   card2 = Card.new(4, true)
#   card1.reveal
#   card1.hide
#
#   p card1.equals(card2)
#   card1.to_s
#
# end
