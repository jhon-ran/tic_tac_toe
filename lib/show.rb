class Show

  # Shows the board
  def show_board(board)
	petit_arr = ["A ", "B ", "C "]
	k = 0
	puts "   1 2 3"
	
	0.upto(2) do |i|
	  print petit_arr[k]
	  k += 1
	  
	  0.upto(2) do |j|
	    print "|" + board.array_of_rows[i][j].state.to_s
	  end
	  
	  print "|"
	  puts ""
	end
	
	puts ""
  end
end