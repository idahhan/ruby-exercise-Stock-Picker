def stock_picker(priceList)
 max_profit=0
  days=[]
  size=priceList.length+1
 matrix=Array.new(size,0) { Array.new(size,0)}
  # profit matrix
  priceList.each_with_index do |price, day_index|
   matrix.each_with_index do |profit, dayn_index|
  # prevent buying on day n and selling on day -n
    next if dayn_index>day_index
    profit[day_index]= price - priceList[dayn_index]
  # store max_profit
     if profit[day_index]>max_profit
       max_profit=profit[day_index]
       days[0]=dayn_index
       days[1]=day_index
     end 
    end
  end
  return days
end 

p stock_picker([1,100,20,40,60,150,7,8,1])
