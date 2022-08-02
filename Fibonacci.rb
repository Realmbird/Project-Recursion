# fibonaci code
def fibonaci(n)
  if(n == 0)
    return 0
  elsif(n == 1)
    return 1
  else
    return fibonaci(n-1) + fibonaci(n-2)
  end
end
# makes an fibonaci array
def fibs(n)
  array = []
  n.times{|index| array.push(fibonaci(index))}
  p array
  return array
end

def fibs_rec(n, index = 0)
  # Add one since index starts at 1 so 0 - (n - 1)
  if(n == index + 1)
    return [fibonaci(index)]
  end
  return [fibonaci(index), fibs_rec(n, index + 1)].flatten()
end
fibs(8)
p fibs_rec(8)