require_relative 'piece'


class Rook < Piece
  attr_accessor :symbol

  def initialize
    checkmark = " \u265C "
    @symbol = checkmark.encode('utf-8')
  end

  # protected
  # def move_dirs
  #   row, col = @pos
  #   possible_moves = []
  #   (0...8).each do |c|
  #     possible_moves << [row, c]
  #     possible_moves << [c, col]
  #   end
  #   possible_moves.delete([row, col])
  #   possible_moves
  # end
end
