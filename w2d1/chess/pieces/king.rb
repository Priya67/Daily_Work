require_relative 'piece'


class King < Piece
  attr_accessor :symbol

  def initialize
    checkmark = " \u2654 "
    @symbol = checkmark.encode('utf-8')
  end

  protected
  def move_diffs
  end
end
