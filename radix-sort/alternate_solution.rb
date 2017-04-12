def radix_sort(arr)
  sort_arr = arr
  buckets = [[],[],[],[],[],[],[],[],[],[]]
  times = 0
  arr.each { |item| times = item.to_s.length if item.to_s.length > times }
  times.times do |idx|
    sort_arr.each do |num|
      bucket = -1 - idx
      bucket_num = num.to_s[bucket].to_i
      buckets[bucket_num] << num
    end
    sort_arr = buckets.flatten
    buckets = [[],[],[],[],[],[],[],[],[],[]]
  end
  sort_arr
end

print radix_sort([112,456,232,34,99,109,410,333])
