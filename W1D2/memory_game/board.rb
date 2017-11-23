require_relative 'card'
require 'set'

class Board
  attr_accessor :board
  def initialize
    @board = Array.new(2){Array.new(3)}
  end

  def populate
    array = []
    3.times do
      array << Random.rand(10..50)
    end

    (0..1).each do |row|
      i = 0
      arr = rand_n(3)
      arr.each do |col|
        @board[row][col] = Card.new(array[i], false)
        i+=1
      end
  end
  end

  def rand_n(n)
    random = Set.new
    loop do
      random << rand(0..2)
      return random.to_a if random.size >=n
    end
  end

  def render
    (0..1).each do |row|
      (0..2).each do |col|
        if @board[row][col].face_up == true
          print "#{@board[row][col].face_value}  "
        else
          puts "   "
        end
      end
      puts "\n"
    end
  end

  def won?
    (0..1).each do |row|
      (0..2).each do |col|
        return false if @board[row][col].face_up == false
      end
    end
    return true
  end

  def reveal(pos)
    if @board[pos[0]][pos[1]].face_up == false
      @board[pos[0]][pos[1]].face_up = true
      return @board[pos[0]][pos[1]].face_value
    end
    #self.render
  end

end
