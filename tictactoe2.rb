require 'pry'
class Display

  attr_accessor :board, :number_of_moves

  def initialize
    @board = {1 => "#{1}", 2 => "#{2}", 3 => "#{3}",
              4 => "#{4}", 5 => "#{5}", 6 => "#{6}", 
              7 => "#{7}", 8 => "#{8}", 9 => "#{9}"}
    @number_of_moves = 0
  end

  def display_board
    puts 
    puts "   #{@board[1]} | #{@board[2]} | #{@board[3]} "
    puts "  ---+---+---"
    puts "   #{@board[4]} | #{@board[5]} | #{@board[6]} "
    puts "  ---+---+---"
    puts "   #{@board[7]} | #{@board[8]} | #{@board[9]} "
    puts 
  end

  def valid_move?(move)
    raise Invalid_Entry unless move > 0 && move < 10
  end

  #move should be an integer 0 < i < 10
  def open_move?(move)
    raise Space_Taken unless @board[move].to_i > 0
  end

  # move is an integer 1-9 and player is "X" or "Y"
  def update_board(move, mark)
    @number_of_moves += 1
    @board[move] = mark
  end

  def check_tie
    if @number_of_moves == 9
      display_board
      puts "THIS GAME ENDED IN A TIE"
      return false
    else
      return true
    end
  end
end
class Player

  attr_accessor :player_moves, :marker

  def initialize
    @marker = nil
    @player_moves = {1 => false, 2 => false, 3 => false,
                     4 => false, 5 => false, 6 => false, 
                     7 => false, 8 => false, 9 => false}
  end

  def update_moves (move)
    @player_moves[move] = true
  end

  def check_win
    win1 = @player_moves[1] && @player_moves[2] && @player_moves[3]
    win2 = @player_moves[4] && @player_moves[5] && @player_moves[6]
    win3 = @player_moves[7] && @player_moves[8] && @player_moves[9]
    win4 = @player_moves[1] && @player_moves[4] && @player_moves[7]
    win5 = @player_moves[2] && @player_moves[5] && @player_moves[8]
    win6 = @player_moves[3] && @player_moves[6] && @player_moves[9]
    win7 = @player_moves[1] && @player_moves[5] && @player_moves[9]
    win8 = @player_moves[7] && @player_moves[5] && @player_moves[3]
    win = win1 || win2 || win3 || win4 || win5 || win6 || win7 || win8
    return win
  end
end




class Game_Exception < Exception
  def message
    "GENERAL GAME EXCEPTION"
  end
end

class Invalid_Entry < Game_Exception
  def message 
    "\nNOT A VALID POSITION."
  end
end

class Space_Taken < Game_Exception
  def message 
    "\nTHIS SPACE IS ALREADY TAKEN."
  end
end

#code starts executing here
b = Display.new
p1 = Player.new
p1.marker = "X"
p2 = Player.new
p2.marker = "O"

turn = true
continue = true
num_moves = 0

while continue
  begin

    move = nil

    if turn
      player = p1
    else
      player = p2
    end

    b.display_board
    puts "pick a spot!"
    move = gets.chomp.to_i

    # unless (move > 0 && move < 10)||(player.move.to_i > 0)
    #   puts "invalid move"
    # end

    b.valid_move?(move)
    b.open_move?(move)

    b.update_board(move, player.marker)
    player.update_moves(move)
    turn = !turn

    if player.check_win
      continue = false
      puts ""
      puts "Winner!"
      b.display_board
      break
    end     
    
   

  rescue Game_Exception => ex
    puts ex.message 
    retry
  end
end
puts "**** GAME OVER ****\n"
