stock_prices = [5,40,2,9,15,29,1,20,58,5,120]

def stock_picker(prices)
  max_profit = 0
  best_day = []


  (0...prices.length).each do |i|
    (i + 1...prices.length).each do |j|
      profit = prices[j] - prices[i]

      if profit > max_profit
        max_profit = profit
        best_day = [i, j]
      end
    end 
  end
  best_day
end

p stock_picker(stock_prices)