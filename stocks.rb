def stock_picker(prices)
	maxDiff = 0;
	buyDay = 0;
	sellDay = 0;
	prices.each_with_index do |x, index|
	
		("#{index}".to_i+1...prices.length).each do |y|
			n = prices[y]
			puts n.to_s + " "+ "#{x}"
			currentDiff = n- "#{x}".to_i
			puts  currentDiff
			if (currentDiff >maxDiff)
				maxDiff = currentDiff;
				buyDay = y;
				sellDay = "#{index}".to_s;
			end
		end
	end
	puts "final diff=" + maxDiff.to_s;
	puts "buyDay=" +buyDay.to_s
	puts "sellDay="+sellDay.to_s
end
	
stock_picker([17,3,6,9,15,8,6,3,10,1])