
class Piece

  def initialize(pos, value)
    @pos = pos
    @value = value
  end

  def to_s
    value == nil ? nil : value
  end

  def empty?
    if value == nil
      return true
    end
    false
  end

  def symbol
    @value
  end

  def valid_move
    p self.move_dirs
  end

  def move_into_check(to_pos)

  end

end
