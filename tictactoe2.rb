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

  # def valid_move?(move)
  #   raise Invalid_Entry unless move > 0 && move < 10
  # end

  # #move should be an integer 0 < i < 10
  # def open_move?(move)
  #   raise Space_Taken unless @board[move].to_i > 0
  # end

  # move is an integer 1-9 and player is "X" or "Y"
  def update_board(move, mark)
    @number_of_moves += 1
    @board[move] = mark
  end

  def check_tie
    if @number_of_moves == 9
      display_board
      puts "it's a tie game!"
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




# class Game_Exception < Exception
#   def message
#     "GENERAL GAME EXCEPTION"
#   end
# end

# class Invalid_Entry < Game_Exception
#   def message 
#     "\nNOT A VALID POSITION."
#   end
# end

# class Space_Taken < Game_Exception
#   def message 
#     "\nTHIS SPACE IS ALREADY TAKEN."
#   end
# end

#code starts executing here
d = Display.new
p1 = Player.new
p2 = Player.new
p1.marker = "X"
p2.marker = "O"

turn = true
continue_game = true
# num_moves = 0

while continue_game
  begin

    # move = nil

    if turn
      player = p1
    else
      player = p2
    end

    d.display_board
    puts "pick a spot!"
      begin  
        move = gets.chomp.to_i
        puts d.board[move.to_i]
        invalid_move = (move < 1 && move > 9)||(d.board[move.to_i] == "X")||(d.board[move.to_i] == "Y")
          if invalid_move == true
            puts "Invaild Move. Pick Another Move!"
          else

        # unless (move > 0 && move < 10)||(player.move.to_i > 0)
        #   puts "invalid move"
        # end

        # d.valid_move?(move)
        # d.open_move?(move)

            d.update_board(move, player.marker)
            player.update_moves(move)
            turn = !turn

              if player.check_win
                continue_game = false
                puts ""
                puts "Winner!"
                d.display_board
                break
              end 
          end
      end until invalid_move == false
  end  
   

  # rescue Game_Exception => ex
  #   puts ex.message 
  #   retry
  # end
end
puts "game over!\n"
