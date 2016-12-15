def max_contig_subarray(arr)
    #base case
    if arr.length == 1
        return arr[0]
    end
        max = 0
    # pick a place to start in the array
    (0..arr.length-1).each do |start|
        result = 0

        # loop forward through each array element
        (start..arr.length-1).each do |n|
            result += arr[n]
            max = result if result > max
        end
    end
    max
end

#some tests
puts max_contig_subarray([-4,  5,  5, -7,  4, -1, 12, -2])  #18
puts max_contig_subarray([ 2, -3,  6,  5, -1,  2, -4,  3])  # 12
puts max_contig_subarray([7])  #7
puts max_contig_subarray([-2,1,-3,5,-1,1,2,-5,4]) #7
