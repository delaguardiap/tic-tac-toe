class Board
  # sets the value of the rows and columns the game board will have.
  def setSize
    puts "How many rows?"
    @rows = gets.chomp.to_i
    puts "How many columns?"
    @columns = gets.chomp.to_i
  end

  def initialize
    setSize
  end

end
