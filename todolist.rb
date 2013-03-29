class Menu < Object
	attr_accessor :p1, :p2
	def initialize
		@p1 = nil
		@p2 = nil
	end

	def greeting
		puts ""
		puts "***********************"
		puts "Welcome to Tic-Tac-Toe!"
	end

	def p1_name
		puts "Player 1 name?"
		@p1 = gets.chomp
	end

	def p2_name
		puts "Player 2 name?"
		@p2 = gets.chomp
	end

	def intro
		greeting
		p1_name
		p2_name
	end
end
