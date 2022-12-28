class Cupcakes
  def initialize
    @cupcakes = []
  end

  def <<(cupcake)
    @cupcakes << cupcake
  end

  def sweetest
    return unless @cupcakes.length.positive?

    @cupcakes.max_by { |cupcake| cupcake.grams_of_sugar }
  end
end
