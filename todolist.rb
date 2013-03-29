#todo list
#add items to list
#mark items as completed
#list out completed and uncompleted

class Menu
	
	# def initialize
	# 	@p1 = nil
	# 	@p2 = nil
	# end

	def display_menu
		puts "TO-DO List"
		puts 
		
	end


	# def intro
	# 	greeting
	# 	p1_name
	# 	p2_name
	# end
end


class TodoList
  attr_accessor :task_name, task_complete

  def task_name
  	@task_name = gets.chomp

  def task_complete
  	@task_complete = gets.chomp
  end
  def 
      # read the file, create a list, create items, add them
  end

  def initialize
  end

  def add(item)
  end

  def write(file)
    # write the file, only write the undone items
  end

  def [](id)
    @list[id]
  end
end

class TodoItem
# provide reader and setter for name and state

  def initialize(name)
    # store name
    # set state to undone
  end
end

# ---
# the library will be used like this:
# list = TodoList.load("todo.td")
# list[0].done = true
# list.add TodoItem.new("another cool item")
# list.write("todo.td")
#
 




#class Menu
# 	# attr_accessor :p1, :p2
# 	# def initialize
# 	# 	@p1 = nil
# 	# 	@p2 = nil
# 	# end

# 	def display_menu
# 		puts ""
# 		puts "***********************"
# 		puts "Welcome to Tic-Tac-Toe!"
# 	end

# 	def p1_name
# 		puts "Player 1 name?"
# 		@p1 = gets.chomp
# 	end

# 	def p2_name
# 		puts "Player 2 name?"
# 		@p2 = gets.chomp
# 	end

# 	def intro
# 		greeting
# 		p1_name
# 		p2_name
# 	end
# end
