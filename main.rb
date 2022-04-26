
def stock_picker(priceList)
  max=0
  max_indexs=[]
  size=priceList.length+1
 results=Array.new(size,0) { Array.new(size,0)}
  # profit matrix
  priceList.each_with_index do |price, day_index|
   results.each_with_index do |profit, dayn_index|
  # prevent buying on day n and selling on day -n
    next if dayn_index>day_index
    profit[day_index]= price - priceList[dayn_index]
  # store max
     if profit[day_index]>max
       max=profit[day_index]
       max_indexs[0]=dayn_index
       max_indexs[1]=day_index
     end 
    end
  end
  return max_indexs
end 


stock_picker([1,100,20,40,60,150,7,8,1])

