require 'pry'

class Display
  attr_accessor :board, :number_of_moves
  def initialize
    board = {"1" => "#{1}", "2" => "#{2}", "3" => "#{3}",
             "4" => "#{4}", "5" => "#{5}", "6" => "#{6}", 
             "7" => "#{7}", "8" => "#{8}", "9" => "#{9}"}
    @board = board
    @number_of_moves = 0
  end

  def display_board
    puts
    puts "  #{@board["1"]} | #{board["2"]}  | #{board["3"]}   "
    puts "----+----+----"
    puts "  #{@board["4"]} | #{@board["5"]}  | #{@board["6"]}  "
    puts "----+----+----"
    puts "  #{@board["7"]} | #{@board["8"]}  | #{@board["9"]}  "
    puts
  end

  def update_board(position, marker)
    @board[position] = marker
    @position = position
    @marker = marker
    @number_of_moves += 1
  end

  def check_for_ties
    if number_of_moves == 9
      display_board
      puts "Tie Game."
      return false
    else
      return true
    end
  end
end

class Play
  attr_accessor :player_moves, :marker
  def intialize
    @marker = nil
    @player_moves = {}
    9.times{|i| @player_moves[i+1] = false}
  end

  def player_moves_updates (move)
    @player_moves[move] = true
  end

  def check_win
    return check_horizontal || check_vertical || check_diagonal
  end

  def check_horizontal
    wint = @player_moves[1] && @player_moves[2] && @player_moves[3]
    winm = @player_moves[4] && @player_moves[5] && @player_moves[6]
    winb = @player_moves[7] && @player_moves[8] && @player_moves[9]
    win = wint || winm || winb
    return win
  end

  def check_vertical
    winl = @player_moves[1] && @player_moves[4] && @player_moves[7]
    winm = @player_moves[2] && @player_moves[5] && @player_moves[8]
    winr = @player_moves[3] && @player_moves[6] && @player_moves[9]
    win = winl || winm || winr
    return win
  end

  def check_diagonal
    wint = @player_moves[1] && @player_moves[5] && @player_moves[9]
    winb = @player_moves[7] && @player_moves[5] && @player_moves[3]
    win = wint || winb
    return win
  end
end

d = Display.new
p1 = Play.new
p1.marker = "X"
p2 = Play.new
p2.marker = "O"

turn = true
game_on = true
num_moves = 0

while game_on
    move = nil

    if turn
      player = p1
    else
      player = p2
    end

    d.display_board
    puts "What's your move?"
    move = gets.chomp.to_i

    # b.valid_move?(move)
    # b.open_move?(move)

    d.update_board(move, player.marker)
    player.player_moves_updates(move)
    turn = !turn

    if player.check_win
      game_on = false
      puts ""
      puts "**Congrats You win!!**"
      d.display_board
      break
    end     
      game_on = d.check_tie
  end
  # def p1moves
  #   puts "Player 1 Position?"
  #   @marker = "X"
  #   p = gets.chomp.to_s
  #   @position = p
  # end  

#   def p2moves
#     puts "Player 2 Position?"
#     @marker = "O"
#     p = gets.chomp.to_s
#     p = p
#     @position = p
#   end  
# end

# class Winner
#   attr_reader :board
#   def initialize (board)
#     @board = board
#   end
#   def winner_horizontal
#     combo1 = "#{@board["1"]}#{board["2"]}#{board["3"]}"
#     combo2 = "#{@board["4"]}#{board["5"]}#{board["6"]}"
#     combo3 = "#{@board["7"]}#{board["8"]}#{board["9"]}"
#     if combo1 == "XXX" || combo1 == "OOO"
#       return true 
#     elsif combo2 == "XXX" || combo2 == "OOO"
#       return true 
#     else combo3 == "XXX" || combo3 == "OOO"
#       return true 
#     end
#   end
#   def winner_vertical
#     combo1 = "#{@board["1"]}#{board["4"]}#{board["7"]}"
#     combo2 = "#{@board["2"]}#{board["5"]}#{board["8"]}"
#     combo3 = "#{@board["3"]}#{board["6"]}#{board["9"]}"
#     if combo1 == "XXX" || combo1 == "OOO"
#       return true 
#     elsif combo2 == "XXX" || combo2 == "OOO"
#       return true 
#     else combo3 == "XXX" || combo3 == "OOO"
#       return true 
#     end
#   end
#   def winner_diagonal
#     combo1 = "#{@board["1"]}#{board["5"]}#{board["9"]}"
#     combo2 = "#{@board["3"]}#{board["5"]}#{board["7"]}"
#     if combo1 == "XXX" || combo2 == "OOO"
#       return true 
#     else combo2 == "XXX" || combo3 == "OOO"
#       return true 
#     end
#   end
# end




# d = Display.new
# d.display_board
# p1 = Play.new
# p2 = Play.new
# w = Winner.new(d.board)

# i=0
# loop do
#   i += 1
#   begin 
#     p1.p1moves 
#     invalid_move = d.board[p1.position.to_s] == "X" or d.board[p1.position.to_s] == "O"
#     if invalid_move == true
#       puts "Invaild Move. Pick Another Move!"
#     else
#       d.update_board(p1.position, p1.marker)
#       d.display_board
#       w.winner_diagonal
#       w.winner_horizontal
#       w.winner_vertical
#       binding.pryd.
#     end
#   end until invalid_move == false

#   begin
#     p2.p2moves
#     invalid_move = d.board[p2.position.to_s] == "X" or d.board[p2.position.to_s] == "O"
#     if invalid_move == true
#       puts "Invaild Move. Pick Another Move!"
#     else
#       d.update_board(p2.position, p2.marker)
#       d.display_board
#       w.winner_diagonal
#       w.winner_horizontal
#       w.winner_vertical
#     end
#   end until invalid_move == false
# break if i==5
# end


