require_relative '../../lib/special_offer'


describe SpecialOffer do

  let(:mockItemClass) { double :ItemClass}
  let(:mockItem1) { double :Item}
  let(:mockItem2) { double :Item}
  let(:mockItem3) { double :Item}
  let(:mockItem4) { double :Item}

  describe '#total_discount' do
    it 'calculates a zero discount for this basket' do
      allow(mockItem1).to receive(:item).and_return('apple')
      allow(mockItem2).to receive(:item).and_return('banana')
      allow(mockItem3).to receive(:item).and_return('melon')
      allow(mockItem4).to receive(:item).and_return('lime')
      zero_discount_basket = [mockItem1, mockItem1, mockItem2, mockItem4, mockItem3]
      discount = SpecialOffer.new(zero_discount_basket)
      expect(discount.discount).to eq(0)
    end

    it 'calculates a discount for 2 melons' do
      allow(mockItem1).to receive(:item).and_return('apple')
      allow(mockItem2).to receive(:item).and_return('banana')
      allow(mockItem3).to receive(:item).and_return('melon')
      allow(mockItem4).to receive(:item).and_return('lime')
      melon_discount_basket = [mockItem1, mockItem1, mockItem2, mockItem3, mockItem4, mockItem3]
      discount = SpecialOffer.new(melon_discount_basket)
      expect(discount.discount).to eq(50)
    end


  end

end