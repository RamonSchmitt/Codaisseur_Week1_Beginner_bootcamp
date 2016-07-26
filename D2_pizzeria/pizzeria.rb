#this defines the customers name
def customer_name
  print "Welcome to Pizza Hut could you tell me your name?"
end

customer_name
name = gets.chomp

#this is the menu
def pizzas
  [
    {name: "Margerita", price: "5"},
    {name: "Hawai", price: "7"},
    {name: "Quattro Formaggi", price: "7"},
    {name: "Calzone", price: "8"}
  ]
end

delivery_costs = 2.50

def menu(pizza)
  "#{pizza[:name]} #{pizza[:price]} euro"
end

puts "This is our menu"
puts "1 #{menu(pizzas[0])}"
puts "2 #{menu(pizzas[1])}"
puts "3 #{menu(pizzas[2])}"
puts "4 #{menu(pizzas[3])}"

def choice(paard)
  puts "Which number would you like to order #{paard}?"
  order = gets.chomp
end

pizza_number = choice(name)

puts "how much would you like to order?"

pizza_amount = gets.chomp

puts "Thank you #{name}, you've ordered #{pizza_amount} #{pizza_number}"
