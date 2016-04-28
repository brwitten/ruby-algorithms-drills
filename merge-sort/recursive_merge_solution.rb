def merge_sort(arr)
  if arr.length <= 1
    arr
  else
    mid = (arr.length / 2).floor
    left_half = merge_sort(arr[0..mid - 1])
    right_half = merge_sort(arr[mid..arr.length])
    merge(left_half, right_half)
  end
end

def merge(left, right)
  # Two base cases
  # 1. left is empty
  if left.empty?
    right
  # 2. right is empty
  elsif right.empty?
    left
  # compile a list that is the smaller of the two first indecies
  # added to the merge of the remainder of the two sorted lists.
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end
