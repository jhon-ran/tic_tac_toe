class Player

attr_reader :name, :token
  
  def initialize (nom)
  	puts " What's your name player?"
  	print "> "
  	@name = gets.chomp
  	puts "Choose a mark to play (X or O are reccomended)"
  	print "> "
  	@token = gets.chomp[0]
  end
end

