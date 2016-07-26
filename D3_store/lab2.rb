@shoppingcart = []

@departments = [ :jewlery, :clothes, :schoolstuff, :electronics ]

@products = {
  jewlery: [
    { refnr: 1111, name: "real rolex", price: 1000 },
    { refnr: 1112, name: "\"real\" balinese beach rolex", price: 10 }
  ],
  clothes: [
    { refnr: 1113, name: "armani suit", price: 500 },
    { refnr: 1114, name: "rags", price: 1 }
  ],
  schoolstuff: [
    { refnr: 1115, name: "tablet", price: 1200 },
    { refnr: 1116, name: "pen and paper", price: 5 }
  ],
  electronics: [
    { refnr: 1117, name: "really nice mac book", price: 2000 },
    { refnr: 1118, name: "not so nice windows things", price: 200 }
  ]
}

def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

def choose_department
  puts "which department would you like to visit? (1,2,3,4)"
  answer = gets.chomp.to_i
  return answer - 1
end

def buy_product
  puts "which product would you like to buy? (1,2)"
  answer = gets.chomp.to_i
  return answer - 1
end

def add_to_cart
  puts "you've added a #{} to your shopping cart"
end

def cart_contains
  puts "your shopping cart contains \n
  #{}which costs #{} euro. \n
  that will be a total of #{} euro"
end

def continue
  puts "would you like to buy something else? y/n"
  cont_answer = gets.chomp.downcase
end

#right here we go
puts "Welcome to Vroom & Dreesman"
print_divider

@departments.each_with_index do |department, index|
  puts "#{(index + 1)}. #{department}"
end

def show_products(department_index)

end

department_index = choose_department

puts department_index

department_sym = @departments[department_index]
products_by_department = @products[department_sym]

products_by_department.each_with_index do |product, index|
  puts "#{(index + 1)}. #{product[:name]} #{product[:price]}"
end

products = show_products(department_index)

puts buy_product
