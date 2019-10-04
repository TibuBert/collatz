def collatz(n)
  array = []
  array[0] = n
  if n > 1 
    while n > 1
      if n.even?
        n = n/2
      else
        n = 3*n + 1
      end
      array.push(n)
    end
  end
  return array.length
end

longest = 0
num = 1
while num <= 1000000
  clen = collatz(num)
  if clen >= longest 
    longest = clen
  end
  num += 1
end
puts longest