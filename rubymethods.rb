require 'pry'

class Rubymethods
  def convert_to_original
    original=gets.chomp
    if original == "11"
      puts "11th"
    elsif original == "12"
      puts "12th"
    elsif original == "13"
      puts "13th"
    elsif original[-1] == "1"
      puts "#{original}st"
    elsif original[-1] == "2"
      puts "#{original}nd"
    elsif original[-1] == "3"
      puts "#{original}rd"
    else
      puts "#{original}th"
    end
  end

  def convert_to_phone_number
    n = gets.chomp
    puts "+1 (#{n[0]}#{n[1]}#{n[2]}) #{n[3]}#{n[4]}#{n[5]}-#{n[6]}#{n[7]}#{n[8]}#{n[9]}"
  end

  def convert_to_currency
    n = gets.chomp.to_f
    n2 = sprintf "%.2f", n.round(2)
    print "$" 
    puts n2.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end

  def convert_to_euros
    n = gets.chomp.to_f
    rate =  0.77
    r = n*rate
    r2 = sprintf "%.2f", r.round(2)
    print r2.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    puts " EUR"
  end

  def convert_to_phrase
    puts "Enter items for an array (space in between each item)"
    a = gets.chomp.to_s 
    n = a.split(' ') 
    i = -n.size
    while i < -1
      print n[i]
      i += 1
      print ", "
    end
    print "and "
    puts n[-1]
  end
end


n = Rubymethods.new
n.convert_to_euros

