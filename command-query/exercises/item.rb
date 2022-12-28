class Item
  attr_accessor :name,
                :price,
                :discount
  
  def initialize(name, price, discount)
    @name = name
    @price = price
    @discount = discount
  end
end