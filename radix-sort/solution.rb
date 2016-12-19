def radix_sort(array)
	temp = []

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
				puts i
			end
		end
	end
end

print radix_sort([3,8,1,2,9])
print radix_sort([23,4,15,8,6,2,2,12])
