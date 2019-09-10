class ShoppingBasket
  attr_reader :items

  def initialize
    @items = []
  end

  def add_single_item(item, basket_item = Item)
    basket_item = basket_item.new(item)
    @items.push(basket_item)
  end

  def add_many_items(items, basket_item = Item)
    items.each do |item|
      add_single_item(item, basket_item)
    end
  end

end