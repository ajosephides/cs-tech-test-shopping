# A basket can be created, items added and a correct price calculated

require 'shopping_basket'

describe ShoppingBasket do
  it "should be able to correctly create and price a basket of goods" do
    basket = ShoppingBasket.new
    basket.add_item("apple")
    basket.add_item("apple")
    basket.add_item("melon")
    expect(basket.price).to eq(120)
    basket.add_item(['lime', 'lime', 'lime', 'melon'])
    expect(basket.price).to eq(150)
  end
end