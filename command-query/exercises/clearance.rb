class Clearance
  def initialize
    @items = []
  end

  def <<(item)
    @items << item
  end

  def best_deal
    return unless @items.length.positive?

    @items.max_by { |item| item.discount.to_f / item.price }.name
  end
end
