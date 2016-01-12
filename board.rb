class Board
  # sets the value of the rows and columns the game board will have.
  attr_accessor :board, :columns, :rows
  
  def set_rows
    puts "How many rows?"
    @rows = gets.chomp.to_i
    if @rows <= 0
      puts "Row number can't be 0 or less"
      set_rows
    end
  end

  def set_columns
    puts "How many columns?"
    @columns = gets.chomp.to_i
    if @columns <= 0
      puts "Column number can't be 0 or less"
      set_columns
    end
  end

  def set_board_size
    set_rows
    set_columns
  end

  # Creates the game board based on @rows and @columns
  def create_board
    @board = Array.new(@rows) {Array.new(@columns, "_")}
  end

  # Formats the @board array so it looks prettier
  def show_board
    colNum = 0
    @columns.times do
      print "#{colNum} "
      colNum += 1
    end

    puts

    rowNum = 0
    @rows.times do
      @board[rowNum].each {|x| print x + " "}
      puts rowNum
      rowNum += 1
    end
  end

  def initialize
    set_board_size
    create_board
    show_board
  end

end
