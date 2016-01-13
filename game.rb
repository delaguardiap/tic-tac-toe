require_relative 'board'
require_relative 'victory'
include Victory

class Game

  def initialize
    new_game
  end

  #Prompts the player to select between X or O
  def player_select
    puts "Select X or O"
    choice = gets.chomp.upcase
    if choice == "X" || choice == "O"
      @player_choice = choice
      puts "Player chose #{@player_choice}"
      sleep 1
      computer_choice
    else
      puts "Invalid selection, try again."
      player_select
    end
  end
  # The computer will play whatever the player won't
  def computer_choice
    if @player_choice == "X"
      @computer_choice = "O"
      puts "Computer will play #{@computer_choice}"
    else
      @computer_choice = "X"
      puts "Computer will play #{@computer_choice}"
    end
  end

  # checks if player wants to play again
  def play_again
    puts "Want to play again?"
    answer = gets.chomp.upcase
    if answer == "Y"
      new_game
    else
      puts "Thanks for playing, come back again!"
    end
  end

  #Turn method that will first call the player_place method and then checks for victory conditions
  def turn
    victory = false
    while victory == false do
      player_place
      @board.show_board
    end
  end

  def player_place
    puts "Choose where to play.(insert row number followed by a space and column number)"
    choice = gets.chomp.split(" ")
    @board.board[choice[0].to_i][choice[1].to_i] = @player_choice
  end



  # starts a new game
  def new_game
    @board = Board.new
    player_select
    turn
    play_again
  end

end

Game.new
