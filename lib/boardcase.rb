class BoardCases
  attr_accessor :state, :id
  
  def initialize(board_case)
  # Pour chaque case, tu associe un id et un state
  	@id = board_case
  	@state = "_"
  end
  
end