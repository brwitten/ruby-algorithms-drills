def radix_sort(array)
  passes = (array.max == 0) ? 1 : array.max.to_s.length
  new_list = []
  passes.times do |i|
    buckets = make_buckets
    array.each do |n|
      digit = get_digit(n, i)
      buckets[digit] += [n]
    end
    new_list, buckets = buckets.flatten, make_buckets
  end
  new_list
end

#helpers
def make_buckets
  Array.new(10,[])
end

def get_digit(n, i)
  n % (10 ** (i + 1)) / (10 ** i)
end

#alternate solution
# def radix_sort(array)
# 	temp = []
# 	result = []
#
# 	array.each do |n|
# 		if temp[n] == nil
# 			temp[n] = 1
# 		else
# 			temp[n] = temp[n] + 1
# 		end
# 	end
#
# 	temp.each_with_index do |n, i|
# 		if (n)
# 			n.times do
# 				result << i
# 			end
# 		end
# 	end
# 	result
# end

print radix_sort([300,843,1111,23,912])
print radix_sort([239,40,150,282,60,2,2,120])

