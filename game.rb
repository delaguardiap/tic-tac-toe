require_relative 'board'


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

  # starts a new game
  def new_game
    board = Board.new
    player_select
    play_again
  end

end

Game.new
