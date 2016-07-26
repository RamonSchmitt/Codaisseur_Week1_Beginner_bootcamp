class Product
  attr_reader :refnr, :name, :price

  def initialize(refnr, name, price)
    @refnr = refnr
    @name = name
    @price = price
  end

  def show_products
    @name.each do |show|
      show.show_products
    end
  end
end
