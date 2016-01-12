module Victory

  #will traverse the entire array and check if there's a horizontal or vertical victory for
  # each element of the array
  def check_victory(mark)
    i = 0
    @board.rows.times do
      @board.board[i].each_index do |x|
        if horizontal_victory mark, i, x
          true
          break
        elsif vertical_victory mark, i, x
          true
          break
        else
          false
        end
      end
      i+=1
    end
  end

  def vertical_victory(mark, row, column)
    if @board.board[row][column] == mark
      if @board.board[row + 1][column] == mark && @board.board[row + 2][column] == mark
        puts "Victory!!!"
        true
      elsif @board.board[row -1][column] == mark && @board.board[row - 2][column] == mark
        puts "Victory!!!"
        true
      else
        puts "Noting yet"
        false
      end
    end
  end

  def horizontal_victory(mark, row, column)
    if @board.board[row][column] == mark
      if @board.board[row][column + 1] == mark && @board.board[row][column + 2] == mark
        puts "Victory!!!"
        true
      elsif @board.board[row][column - 1] == mark && @board.board[row][column - 2] == mark
        puts "Victory!!!"
        true
      else
        puts "Nothing yet"
        false
      end
    end
  end

end
