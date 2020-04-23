require 'board'
require 'show'
require 'player'

class Game
  attr_accessor :current_player, :status, :board, :array_players, :count_turn

  def initialize
  # Players in an array
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @array_players = [@player1, @player2]
    @current_player = @player1
  
  # Status of the game
    @status = "on going"
    @board = Board.new
    @count_turns = 0
  end

  # Turn taking
  def turn
    while @status == "on going"
        Show.new.show_board(@board) 
       @board.play_turn(@current_player)

    # 
      if @board.victory?(@current_player, @status) == true
            puts ""
            Show.new.show_board(@board) 
            @status = @current_player
      else
    
    # In case no one wins switche players
        if @current_player == @player1
          @current_player = @player2
        else
          @current_player = @player1
        end
      end
    
    # For ties
    @count_turns += 1
      if @count_turns == 9 && @status == "on going"
        @status = "tie"
        puts "\n"
        puts "Cat's Game!"
        puts "\n"
        Show.new.show_board(@board) 
        puts ""
      end
    end
    new_round
  end

  # Generetes a new round & asks player if wants to keep playing
  def new_round
    puts "Wanna play again? Y/N"
    answer = gets.chomp.upcase
      if answer == "Y"
      @board = Board.new
      @status = "on going"
      @count_turns = 0
      turn
      else
      game_end
    end
  end   

  def game_end
    puts "\n"
    puts "*" * 15
    puts "*Game over*"
    puts "*" * 15
  end

end