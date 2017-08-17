def descending_order(n)
  arr = n.to_s.split("")
  arr = arr.sort.reverse
  arr.join.to_i
end
