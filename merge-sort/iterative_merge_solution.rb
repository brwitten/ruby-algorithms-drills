# given two sorted arrays
# combine all their elements into a new array and return it
def merge left, right
  output = []
  i1 = 0
  i2 = 0
  while left[i1] && right[i2]
    if left[i1] <= right[i2]
      output.push left[i1]
      i1 += 1
    else
      output.push right[i2]
      i2 += 1
    end
  end

  # output.concat left.slice(i1..-1) if left[i1]
  # ^ same answer as while loop below but creates a new array with slice
  while left[i1]
    output.push left[i1]
    i1 += 1
  end

  # output.concat right.slice(i2..-1) if right[i2]
  # ^ same answer as while loop below but creates a new array with slice
  while right[i2]
    output.push right[i2]
    i2 += 1
  end
  output
end

# return a new array that contains the input array's elements in sorted order
def merge_sort arr
  if arr.length <= 1
    arr
  else
    mid = arr.length/2
    left_half = arr.slice(0...mid)
    right_half = arr.slice(mid...arr.length)
    merge merge_sort(left_half), merge_sort(right_half)
  end
end
