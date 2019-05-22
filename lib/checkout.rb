class Checkout

  attr_reader :item_list

  def initialize
    @stock = {cereal: 1.5, potatoes: 2}
    @item_list = []
  end

  def price(item)
    @stock[item]
  end

  def scan(item)
    @item_list << price(item)
  end

  def total
    item_list.sum
  end

end
