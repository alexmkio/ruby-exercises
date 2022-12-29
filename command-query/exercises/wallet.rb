class Wallet
  attr_reader :cents

  def initialize
    @cents = 0
    @change_hash = {
      penny: 1,
      nickel: 5,
      dime: 10,
      quarter: 25
    }
  end

  def <<(argument)
    @cents += @change_hash[argument]
  end

  def take(argument)
    @cents -= @change_hash[argument]
  end
end
