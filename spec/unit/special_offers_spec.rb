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

    it 'calculates a discount for 4 melons' do
      allow(mockItem1).to receive(:item).and_return('apple')
      allow(mockItem2).to receive(:item).and_return('banana')
      allow(mockItem3).to receive(:item).and_return('melon')
      allow(mockItem4).to receive(:item).and_return('lime')
      four_melon_discount_basket = [mockItem1, mockItem3, mockItem3, mockItem3, mockItem4, mockItem3]
      discount = SpecialOffer.new(four_melon_discount_basket)
      expect(discount.discount).to eq(100)
    end

    it 'calculates a discount for 3 limes' do
      allow(mockItem1).to receive(:item).and_return('apple')
      allow(mockItem2).to receive(:item).and_return('banana')
      allow(mockItem3).to receive(:item).and_return('melon')
      allow(mockItem4).to receive(:item).and_return('lime')
      lime_discount_basket = [mockItem4, mockItem4, mockItem1, mockItem1, mockItem4, mockItem3]
      discount = SpecialOffer.new(lime_discount_basket)
      expect(discount.discount).to eq(15)
    end

    it 'calculates a discount for a mixed bag of discounts' do
      allow(mockItem1).to receive(:item).and_return('apple')
      allow(mockItem2).to receive(:item).and_return('banana')
      allow(mockItem3).to receive(:item).and_return('melon')
      allow(mockItem4).to receive(:item).and_return('lime')
      mixed_discount_basket = [mockItem4, mockItem4, mockItem3, mockItem1, mockItem4, mockItem3]
      discount = SpecialOffer.new(mixed_discount_basket)
      expect(discount.discount).to eq(65)
    end

  end

end