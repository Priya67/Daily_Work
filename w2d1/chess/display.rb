require 'colorize'
require_relative 'cursor'
require_relative 'board'

# class Display
#
#   def initialize(grid)
#     @grid = grid
#     @cursor = Cursor.new([0,0], @grid)
#     render
#   end
#
#   def render
#     (0..7).each do |r|
#       (0..7).each do |c|
#         if (r+c).even?
#           print "#{@grid[r][c].symbol.colorize(:background => :white)}"
#         else
#           print "#{@grid[r][c].symbol.colorize(:background => :grey)}"
#         end
#       end
#       puts ""
#
#       # if r == 0 || r == 1
#       #   (0...7).each {|col| @grid[r][col].symbol.colorize(:color => :red)}
#       # elsif r == 7 || r ==6
#       #   (0...7).each {|col| @grid[r][col].symbol.colorize(:color => :blue)}
#       # end
#     end
#     # (0..7).each do |r|
#     #   (0..7).each do |c|
#     #     print " #{@grid[r][c].symbol.colorize(:background => )} "
#     #   end
#     #   puts ""
#     # end
#   end
# end

class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], @board)
    # render
  end

  def render
    (0..7).each do |r|
      (0..7).each do |c|



        if @cursor.cursor_pos == [r, c]
          print "#{@board[[r,c]].symbol.colorize(:background => :red)}"
        elsif (r+c).even?
          print "#{@board[[r,c]].symbol.colorize(:background => :white)}"
        else
          print "#{@board[[r, c]].symbol.colorize(:background => :grey)}"
        end
      end
      puts ""

      # if r == 0 || r == 1
      #   (0...7).each {|col| @grid[r][col].symbol.colorize(:color => :red)}
      # elsif r == 7 || r ==6
      #   (0...7).each {|col| @grid[r][col].symbol.colorize(:color => :blue)}
      # end
    end
    # (0..7).each do |r|
    #   (0..7).each do |c|
    #     print " #{@grid[r][c].symbol.colorize(:background => )} "
    #   end
    #   puts ""
    # end
  end
  def play
    while true
      # system "clear"
      self.render
      @cursor.get_input
    end
  end
end
