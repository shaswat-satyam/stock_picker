def stock_picker(prices)
    buy = 0
    sell = 1
    days = [buy,sell]
    profit = prices[sell] - prices[buy]
    prices.each_with_index{
        |price,day|
        if price < prices[buy]
            buy  = day
            next
        end
        if price - prices[buy] > profit
            profit = price - prices[buy]
            days = [buy,day]
        end

    }
    puts days
end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]