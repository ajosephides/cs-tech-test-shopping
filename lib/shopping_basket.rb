class ShoppingBasket
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item, basket_item = Item)
    item.class == Array ? add_many_items(item, basket_item) : add_single_item(item, basket_item)
  end

  def price
    return @items.reduce(0) { |total, item| total + item.price }
  end


  private

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