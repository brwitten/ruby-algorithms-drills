def merge_sort arr
  # BASE CASE
  # If the array is length of 1
  #  return the array.
  if arr.length <= 1
    arr
  else
    # split the array by
    #     finding the middle
    #     making a left_half before the middle
    #     making a right_half after the middle
    mid = (arr.length/2).floor
    left_half = arr[0...mid]
    right_half = arr[mid..arr.length]
    # p left_half
    # p right_half

    #   merge_sort the left_half and merge_sort the right_half
    left_half = merge_sort(left_half)
    right_half = merge_sort(right_half)

    #   merge the sorted arrays
    sorted = merge(left_half,right_half)
    p sorted
    sorted
  end

end

# Takes in two SORTED arrays and merges them so they're sorted
def merge left, right
  output = []
  # until we've emptied both arrays
  while left[0] && right[0]
    # compare the first index of both arrays
    # take the lesser value and push it into a new array
    if left[0]<right[0]
      output.push(left.shift)
    elsif right[0]<left[0]
      output.push(right.shift)
    # if the values are equal, push both of them
    else
      output.push(right.shift).push(left.shift)
    end
  end
  while left[0]
    output.push(left.shift)
  end

  while right[0]
    output.push(right.shift)
  end

  output

  # merge two arrays to make them sorted

end

# test your sort on numbers
# merge_sort([1,42,64,28,1,12,6,23,12,5])
