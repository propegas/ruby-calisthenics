class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
		strat_p1 = player1[1]
		strat_p2 = player2[1]
		case [strat_p1, strat_p2 ]
		when ["R", "S"] then player1
		when ["R", "P"] then player2
		when ["R", "R"] then player1
		when ["P", "S"] then player2
		when ["P", "P"] then player1
		when ["P", "R"] then player1
		when ["S", "S"] then player1
		when ["S", "P"] then player1
		when ["S", "R"] then player2
		else raise NoSuchStrategyError, "Strategy must be one of R,P,S"
		end
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
		puts "++++ #{tournament.size}" 
		puts "++++ #{tournament.flatten.size}" 
		puts "++++ #{tournament}"
		puts "++++ #{tournament[0]} vs #{tournament[1]}"
		if tournament.flatten.size == 4 
			puts "Winner: #{winner(tournament[0], tournament[1])}"
			tournament = winner(tournament[0], tournament[1])
			return tournament
		end
  	tournament_winner(tournament)

  end

end
