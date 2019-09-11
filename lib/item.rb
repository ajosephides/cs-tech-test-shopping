class Item

  attr_reader :price, :item

  PRICE_LIST = {:apple => 35, :banana => 20, :melon => 50, :lime => 15 }

  def initialize(item)
    @item = item
    @price = lookup_price(item)
  end

  private

  def lookup_price(item)
    return PRICE_LIST[item.downcase.to_sym]
  end
end
