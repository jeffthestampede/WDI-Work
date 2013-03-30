#todo list
#add items to list
#mark items as completed
#list out completed and uncompleted

#Verbs
# add
# finish
# list
# Nouns
# tasklist
# Menu
require 'pry'
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


class Task_List
  attr_accessor :task_name, :finish_task, :add_task

  def task_name
  	puts "Task name?"
    @task_name = gets.chomp
  end

  def finish_task
    puts "Finish Task (y/n)"
  	@task_complete = gets.chomp.downcase
  end
  
  def add_task
    @add_task = gets.comp.downcase
  end
end


t = Task_List.new
t.task_name
t.finish_task
binding.pry
t.add_task


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
