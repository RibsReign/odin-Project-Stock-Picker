def stock_picker(stocks)
  highestYield = 0
  bestStart = 0
  bestSell = 0
  stocks.each do |startingDay|
     stocks.each do |sellingDay|
        if startingDay - sellingDay < highestYield and stocks.index(startingDay) < stocks.index(sellingDay)
          highestYield = startingDay - sellingDay
          bestStart = startingDay
          bestSell = sellingDay
        end
     end
  end
  p [bestStart, bestSell]
  p [stocks.index(bestStart), stocks.index(bestSell)]
  return [stocks.index(bestStart), stocks.index(bestSell)]
end

# stock_picker([17,3,6,9,15,8,6,1,10])
# stock_picker([50,17,2,3,6,9,15,8,6,10,1])