require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader'


get '/:operator/:num1/:num2' do
  names_to_operators = {
    "add" => :+,
    "subtract" => :-,
    "multiply" => :*,
    "divide" => :/
  }

  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @operator = params[:operator]
  @result = @num1.send(names_to_operators[params[:operator]],@num2)
  erb :calc
end

# get '/subtract/:num1/:num2' do
#   @result = params[:num1].to_i - params[:num2].to_i
#   @num1 = params[:num1]
#   @num2 = params[:num2]
#   @operator = "-"
#   erb :calc
# end

# get '/multiply/:num1/:num2' do
#   @result = params[:num1].to_i * params[:num2].to_i
#   @num1 = params[:num1]
#   @num2 = params[:num2]
#   @operator = "*"
#   erb :calc
# end

# get '/divide/:num1/:num2' do
#   @result = params[:num1].to_f / params[:num2].to_f
#   @num1 = params[:num1]
#   @num2 = params[:num2]
#   @operator = "/"
#   erb :calc
# end


