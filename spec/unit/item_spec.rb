require_relative '../../lib/item.rb'


describe Item  do
  describe '#price' do
  
    it 'correctly prices items in the basket' do
      item = Item.new('apple')
      expect(item.price).to be(35)
    end
  
  
  end

end