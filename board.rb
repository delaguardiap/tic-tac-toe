class Board
  # sets the value of the rows and columns the game board will have.
  def setSize
    puts "How many rows?"
    @rows = gets.chomp.to_i
    puts "How many columns?"
    @columns = gets.chomp.to_i
  end

  # Creates the game board based on @rows and @columns
  def createBoard
    @board = Array.new(@rows) {Array.new(@columns, "_")}
  end

  # Formats the @board array so it looks prettier
  def showBoard
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
    setSize
    createBoard
    showBoard
  end

end
