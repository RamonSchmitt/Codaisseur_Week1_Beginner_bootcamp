require './department'
require './product'
require './shoppingcart'

#Departments
dept_name = []
dept_name << Department.new("Jewlery")
dept_name << Department.new("Clothes")
dept_name << Department.new("School Stuff")
dept_name << Department.new("Electronics")

#add them to the jukebox
box = Department.new(dept_name)

#play the song in the jukebox
# - Show the artis name and title of the song
# - show the song text
box.show_departments

#products
products = []
products << Product.new(1111, "Real Rolex", 1000)
products << Product.new(1112, "\"Real\" Balinese Beach Rolex", 10)
products << Product.new(1113, "Armani Suit", 500)
products << Product.new(1114, "Rags", 1)
products << Product.new(1115, "Tablet", 1200)
products << Product.new(1116, "Pen and Paper", 5)
products << Product.new(1117, "Really Nice Mac Book", 2000)
products << Product.new(1118, "Not So Nice Windows Thing", 20)

#Welcome the user by printing out a list of the different departments.
#box = Jukebox.new(dept_name)
#User should be able to select one of the department after which only the products belonging to that department will be printed out.

#User should be able to select any product and it will be added to the shopping cart.

#Every time that user buys a new product, the current shopping cart should be printed out. Don't forget to update the total price to be paid.

#Every time that user buys a new product, the program should ask if he/she wants to continue shopping or check out.

#If user decides to checkout, print out a bye-bye message.
