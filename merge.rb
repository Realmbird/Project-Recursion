# merge code
def merge(left,right)
  # Sets bounardies of array and indexes
  a = left.length
  a_index = 0
  b = right.length
  b_index = 0
  c = []

  while a_index < a && b_index < b
    # Making code easier to understand 
    # Element values of the arrays left and right being pointed to
    l_point = left[a_index]
    r_point = right[b_index]
    if l_point < r_point
      c.push(l_point)
      # incrementing left array
      a_index += 1
    else
      c.push(r_point)
      # incrementing right array
      b_index += 1
    end
  end
  # adds leftovers
  if a == a_index
    c.push(right[b_index..])
  else
    c.push(left[a_index..])
  end

  c.flatten
end

def merge_sort(array)
  n = array.length
  # Escape is length is one
  if n <= 1
    return array
  end

  m = n / 2 - 1
  # Finding 2 halfs to merge
  left = merge_sort(array[0..m])
  right = merge_sort(array[(m + 1)..])
  merge(left, right)
end

# unsorted
array  = [9,8,6,3,7,10,1]
p merge_sort(array)
