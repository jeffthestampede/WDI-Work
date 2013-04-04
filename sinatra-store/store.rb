# gem install --version 1.3.0 sinatra
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'


# Add a layout that yields to a template
# Add a /products route that lists all the products in the store database in an HTML table
# Add a root route (/) that contains links to the /users and /products pages
# Add a back button on /users and /products that takes you back to the home page
# Style the tables using CSS
# If the product is on sale, display an image in the table
# Add "zebra stripes" to the table (rows alternate background colors, making them easier to read across) 


get '/users' do
  db = SQLite3::Database.new "store.sqlite3"
  db.results_as_hash = true
  @rs = db.prepare('SELECT * FROM users;').execute
  erb :show_users
end

get '/products' do
  db = SQLite3::Database.new "store.sqlite3"
  db.results_as_hash = true
  @rs = db.prepare("SELECT * FROM products;").execute
  erb :show_products
end

get '/products/:id' do
  id = params[:id]
  db = SQLite3::Database.new "store.sqlite3"
  db.results_as_hash = true
  @rs = db.prepare("SELECT * FROM products WHERE id = #{id};").execute
  @id = id
  erb :productsdetails
end

get '/new-product' do
  erb :new_product
end

post '/new-product' do
  name = params[:product_name]
  price = params[:product_price]
  db = SQLite3::Database.new "store.sqlite3"
  db.results_as_hash = true
  @rs = db.prepare("INSERT INTO products ('name', 'price') VALUES ('#{name}', '#{price}');").execute
  @name = name
  @price = price
  erb :product_created
end



 
 
get '/' do
  erb :home
end
 
 
 
 
 
 
 
 
 
=begin
 
  <form method='post' action='/create'>
    <input type='text' name='name' autofocus>
    <input type='text' name='photo'>
    <input type='text' name='breed'>
    <button>dog me!</button>
  </form>
 
 
  post '/create' do
  end
 
 
  redirect '/'
 
=end