require_relative '../../lib/item.rb'


describe Item  do
  describe '#price' do
  
    it 'correctly prices items in the basket - apple' do
      item = Item.new('apple')
      expect(item.price).to be(35)
    end

    it 'correctly prices items in the basket - banana' do
      item = Item.new('banana')
      expect(item.price).to be(20)
    end

    it 'correctly prices items in the basket - melon' do
      item = Item.new('melon')
      expect(item.price).to be(50)
    end

    it 'correctly prices items in the basket - lime' do
      item = Item.new('lime')
      expect(item.price).to be(15)
    end
  
  end
end