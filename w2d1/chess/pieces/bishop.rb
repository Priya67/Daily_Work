require_relative 'piece'

class Bishop < Piece
  attr_accessor :symbol

  def initialize
    checkmark = " \u2657 "
    @symbol = checkmark.encode('utf-8')
  end

  protected
  def move_diffs
  end
end
