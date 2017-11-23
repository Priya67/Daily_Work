require_relative 'piece'

class Knight < Piece
  attr_accessor :symbol

  def initialize
    checkmark = " \u2658 "
    @symbol = checkmark.encode('utf-8')
  end

  protected
  def move_diffs

  end
end
