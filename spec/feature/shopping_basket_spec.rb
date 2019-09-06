# A basket can be created, items added and a correct price calculated

require 'shopping_basket'

describe ShoppingBasket do
  xit "should be able to correctly create and price a basket of goods" do
    basket = ShoppingBasket.new
    basket.add("Apple")
    basket.add("Apple")
    basket.add("Melon")
    expect(basket.price).to eq(120)
    basket.add(['Lime', 'Lime', 'Lime', 'Melon'])
    expect(basket.price).to eq(150)
  end
end