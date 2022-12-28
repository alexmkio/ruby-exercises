class Catalog
  def initialize
    @products = []
  end

  def <<(product)
    @products << product
  end

  def cheapest
    if @products.length > 0
      @products.min_by {|product| product.price}.name
    else
      nil
    end
  end
end