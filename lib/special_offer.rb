class SpecialOffer

  PRICE_LIST = {:apple => 35, :banana => 20, :melon => 50, :lime => 15 }
  BUY_X_GET_1 = {:melon => 2, :lime => 3}

  def initialize(basket)
    @basket = basket
    @basket_by_type = count_items(basket)
  end


  def discount
    discount = 0
    BUY_X_GET_1.keys.each do |offer|
      if @basket_by_type.key?(offer)
        discount = discount + ((@basket_by_type[offer] / BUY_X_GET_1[offer]) * PRICE_LIST[offer])
      end
    end
    return discount
  end


  private

  def count_items(basket)
    basket_count = {}
    basket.each do |item|
      key = item.item.downcase.to_sym
      basket_count.key?(key) ? basket_count[key] += 1 : basket_count[key] = 1
    end
    return basket_count
  end

end