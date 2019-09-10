require_relative '../../lib/shopping_basket'


describe ShoppingBasket do

  let(:mockItemClass) { double :ItemClass}
  let(:mockItem1) { double :Item}
  let(:mockItem2) { double :Item}
  let(:mockItem3) { double :Item}


  describe '#add_single_item' do
    it 'adds an item to the shopping basket' do
      basket = ShoppingBasket.new
      allow(mockItemClass).to receive(:new).with('apple').and_return(mockItem1)
      basket.add_single_item('apple', mockItemClass)
      expect(basket.items.length).to be(1)
    end
  end

  describe '#add_many_items' do
    it 'adds a list of items item to the shopping basket' do
      basket = ShoppingBasket.new
      allow(mockItemClass).to receive(:new).with('apple').and_return(mockItem1, mockItem2, mockItem3)
      basket.add_many_items(['apple','apple','apple'], mockItemClass)
      expect(basket.items.length).to be(3)
    end
  end
end