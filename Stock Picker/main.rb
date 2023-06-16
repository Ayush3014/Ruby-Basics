=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(prices)
  buy = 0
  sell = 1
  max_profit = prices[sell] - prices[buy]
  total_days = prices.length

  (0...total_days).each do |i|       #buy (exclusive range)
    (i+1...total_days).each do |j|   #sell(exclusive range)
      profit = prices[j] - prices[i]
      if max_profit < profit
        buy = i
        sell = j
        max_profit = profit
      end
    end
  end
  
  puts "Buy cost: #{prices[buy]} , Sell cost: #{prices[sell]}"
  puts "Total profit: #{max_profit}"
  [buy,sell]
end


p stock_picker([17,3,6,9,15,8,6,1,10])   