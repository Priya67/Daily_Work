require 'singleton'
require_relative 'piece'


class NullPiece < Piece
include Singleton

attr_accessor :symbol

  def initialize
    @symbol = "   "
  end

  def moves

  end
end
