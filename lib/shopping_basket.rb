require_relative './item.rb'
require_relative './special_offer.rb'

class ShoppingBasket
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item, basket_item = Item)
    item.class == Array ? add_many_items(item, basket_item) : add_single_item(item, basket_item)
  end

  def price(special_offer = SpecialOffer)
    @items
    price_no_discount = @items.reduce(0) { |total, item| total + item.price }
    special_offer = special_offer.new(@items)
    return price_no_discount - special_offer.discount
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