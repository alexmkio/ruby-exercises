class Clearance
  def initialize
    @items = []
  end

  def <<(item)
    @items << item
  end

  def best_deal
    if @items.length > 0
      @items.max_by {|item| item.discount / item.price}.name
    else
      nil
    end
  end
end