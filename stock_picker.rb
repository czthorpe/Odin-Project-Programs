stock_prices = [5,40,2,9,15,29,1,20,58,5,120]

def stock_picker(price_array)
  difference = 0
  max_and_min = []

  (0...price_array.length).each do |i|

    price_array.slice(i, price_array.length).each_with_index do |price, j|
      new_difference = price - price_array[i]

      if new_difference > difference
        difference = new_difference

        max_and_min[0] = i
        max_and_min[1] = i + j
      end
    end
  end
  
  max_and_min

end

p stock_picker(stock_prices)