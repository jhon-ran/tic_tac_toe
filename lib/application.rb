require 'game'

class Application
  
  # Starts the game, called from app.rb
  def perform
    puts "*" * 25
    puts "* Welcome to Tic tac Toe *"
    puts "*" * 25
    puts "\n"
    @game = Game.new
    @game.turn
  end
  
end