require_relative '../../lib/shopping_basket'


describe ShoppingBasket do

  let(:mockItemClass) { double :ItemClass}
  let(:mockItem) { double :Item}

  describe '#add_single_item' do
    it 'adds an item to the shopping basket' do
      basket = ShoppingBasket.new
      allow(mockItemClass).to receive(:new).with('apple').and_return(mockItem)
      basket.add_single_item('apple', mockItemClass)
      expect(basket.items.length).to be(1)
    end
  end
end