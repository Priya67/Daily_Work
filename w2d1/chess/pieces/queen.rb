require_relative 'piece'

class Queen < Piece
  attr_accessor :symbol

  def initialize
    checkmark = " \u2655 "
    @symbol = checkmark.encode('utf-8')
  end

  protected
  def move_diffs
  end
end
