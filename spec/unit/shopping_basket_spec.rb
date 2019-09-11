require_relative '../../lib/shopping_basket'


describe ShoppingBasket do

  let(:mockItemClass) { double :ItemClass}
  let(:mockItem1) { double :Item}
  let(:mockItem2) { double :Item}
  let(:mockItem3) { double :Item}
  let(:mockDiscount) { double :SpecialOffer}
  let(:specialOfferClass) { double :SpecialOfferClass}



  describe '#add_single_item' do
    it 'adds an item to the shopping basket' do
      basket = ShoppingBasket.new
      allow(mockItemClass).to receive(:new).with('apple').and_return(mockItem1)
      basket.add_item('apple', mockItemClass)
      expect(basket.items.length).to be(1)
    end
  end

  describe '#add_many_items' do
    it 'adds a list of items item to the shopping basket' do
      basket = ShoppingBasket.new
      allow(mockItemClass).to receive(:new).with('apple').and_return(mockItem1, mockItem2, mockItem3)
      basket.add_item(['apple','apple','apple'], mockItemClass)
      expect(basket.items.length).to be(3)
    end
  end

  describe '#price' do
    it 'calculates the price of a basket without offers' do
      basket = ShoppingBasket.new
      allow(mockItemClass).to receive(:new).with('apple').and_return(mockItem1)
      allow(mockItemClass).to receive(:new).with('banana').and_return(mockItem2)
      allow(mockItemClass).to receive(:new).with('melon').and_return(mockItem3)
      allow(specialOfferClass).to receive(:new).and_return(mockDiscount)
      allow(mockItem1).to receive(:price).and_return(35)
      allow(mockItem2).to receive(:price).and_return(20)
      allow(mockItem3).to receive(:price).and_return(50)
      allow(mockDiscount).to receive(:discount).and_return(0)
      basket.add_item(['apple','banana','melon'], mockItemClass)
      expect(basket.price(specialOfferClass)).to be(105)
    end

    it 'calculates the price of a basket with 2 melon offer' do
      basket = ShoppingBasket.new
      allow(mockItemClass).to receive(:new).with('apple').and_return(mockItem1)
      allow(mockItemClass).to receive(:new).with('banana').and_return(mockItem2)
      allow(mockItemClass).to receive(:new).with('melon').and_return(mockItem3)
      allow(specialOfferClass).to receive(:new).and_return(mockDiscount)
      allow(mockItem1).to receive(:price).and_return(35)
      allow(mockItem2).to receive(:price).and_return(20)
      allow(mockItem3).to receive(:price).and_return(50)
      allow(mockDiscount).to receive(:discount).and_return(50)
      basket.add_item(['apple','banana','melon', 'melon'], mockItemClass)
      expect(basket.price(specialOfferClass)).to be(105)
    end
  end


end