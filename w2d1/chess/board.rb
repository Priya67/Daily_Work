require_relative 'pieces'
# require_relative 'display'

class Board
  # attr_accessor :
  def initialize
    @singleton = NullPiece.instance
    @grid = Array.new(8) { Array.new(8, @singleton)}
    make_starting_grid
  end

  def make_starting_grid
    #ROOK
     @grid[0][0] = Rook.new
     @grid[0][7] = Rook.new
     @grid[7][7] = Rook.new
     @grid[7][0] = Rook.new

     #PAWN
    (0..7).each do |c|
      @grid[1][c] = Pawn.new
      @grid[6][c] = Pawn.new
    end

    @grid[0][6] = Knight.new
    @grid[0][1] = Knight.new
    @grid[7][1] = Knight.new
    @grid[7][6] = Knight.new

    @grid[0][3] = King.new
    @grid[7][3] = King.new

    @grid[0][4] = Queen.new
    @grid[7][4] = Queen.new

    @grid[0][2] = Bishop.new
    @grid[0][5] = Bishop.new
    @grid[7][2] = Bishop.new
    @grid[7][5] = Bishop.new

    # Display.new(@grid)

  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    @grid[row][col] = piece
  end

  def dup()

  end

  def move_piece(color, from_pos, to_pos)
    r, c = from_pos
    holder = @grid[r][c]
    @grid[r][c] = @singleton
    x,y = to_pos
    @grid[x][y] = holder
      # Display.new(@grid)
  end

  def move_piece!(from_pos, to_pos)

  end

  def checkmate?

  end

  def find_king(color)

  end

end
