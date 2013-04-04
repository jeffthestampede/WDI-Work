require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @question = "Do you have a test for that?"
  @yes_href = "/pass"
  @no_href = "/write_test"
  erb :yesno
end

get '/pass' do
  @question = "Does the test pass?"
  @yes_href = "/refactor"
  @no_href = "/write_code"
  erb :yesno
end

get '/do_refactor' do
  @question = "Refactor the code"
  @done_href = "/pass"
  erb :done
end
get '/refactor' do
  @question = "Need to refactor?"
  @yes_href = "/do_refactor"
  @no_href = "/new_feature"
  erb :yesno
end


get '/write_test' do
  @question = "Write a test"
  @done_href = "/pass"
  erb :done
end

get '/write_code' do
  @question = "Write just enough code for the test to pass."
  @done_href = "/pass"
  erb :done
end

get '/new_feature' do
  @question = "Select a new feature to implement."
  @continue_href = "/"
  erb :continue
end


