class Adult
  attr_reader :sober

  def initialize
    @sober = true
    @drinks = 0
  end

  def consume_an_alcoholic_beverage
    @drinks += 1
    drinks > 2 ? @sober = false : @sober = true
  end

  def sober?
    @sober
  end
end