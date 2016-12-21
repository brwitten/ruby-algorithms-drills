def radix_sort(array)
	temp = []
	result = []

	array.each do |n|
		if temp[n] == nil
			temp[n] = 1
		else
			temp[n] = temp[n] + 1
		end
	end

	temp.each_with_index do |n, i|
		if (n)
			n.times do
				result << i
			end
		end
	end
	result
end

print radix_sort([300,843,1111,23,912])
print radix_sort([239,40,150,282,60,2,2,120])
