require_relative 'board.rb'
require_relative 'card.rb'


class Game

  attr_accessor :board, :prev_guessed_pos

  def initialize
    @board = Board.new
    @prev_guessed_pos = nil
  end

  def play
    @board.populate

    while !@board.won?
      system("clear")
      @board.render
      #prompt user for input
      input = []
      print "Enter a row index "
      input[0] =  gets.chomp.to_i
      puts ""
      print "Enter a column index "
      input[1] = gets.chomp.to_i
      make_guess(input)
    end
  end

  def make_guess(input)
    if @prev_guessed_pos == nil
      @board.board[input[0]][input[1]].face_up = true
      @prev_guessed_pos = input
    elsif @board.board[input[0]][input[1]].face_value == @board.board[@prev_guessed_pos[0]][@prev_guessed_pos[1]].face_value
        @board.board[input[0]][input[1]].face_up = true
        @prev_guessed_pos = nil
    else
        @board.board[@prev_guessed_pos[0]][@prev_guessed_pos[1]].face_up = false
        @prev_guessed_pos = nil
    end

  end
end
