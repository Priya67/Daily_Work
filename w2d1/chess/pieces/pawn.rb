require_relative 'piece'

class Pawn < Piece
  attr_accessor :symbol

  def initialize
    checkmark = " \u2659 "
    @symbol = checkmark.encode('utf-8')
  end

  # protected
  # def move_dirs
  #   row, col = @pos
  #
  #   possible_moves = [ ]
  #     possible_moves << [row + 1, col - 1]
  #     possible_moves << [row + 1, col]
  #     possible_moves << [row + 1, col + 1]
  #
  #     possible_moves.select! do |r,c|
  #       [r,c].all? do |coor|
  #         coor.between?(0, 7)
  #       end
  #   end
  #   possible_moves
  # end
end
