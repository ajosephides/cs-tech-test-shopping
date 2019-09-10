class ShoppingBasket
  attr_reader :items

  def initialize
    @items = []
  end

  def add_single_item(item, basket_item = Item)
    basket_item = basket_item.new(item)
    @items.push(basket_item)
  end

end