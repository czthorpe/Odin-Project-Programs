stock_prices = [5,40,200,9,15,29,1,20,58,5,120]

def stock_picker(prices)
  difference = 0
  max_and_min = []

  (0...prices.length).each do |i|

    sliced_arr = prices.slice(i, prices.length)

    sliced_arr.each_with_index do |price, j|

      new_difference = price - sliced_arr[0]

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