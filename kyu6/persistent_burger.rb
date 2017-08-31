def persistence(n)
  count = 0
  while n >= 10
    a = 1
    while n > 0
      a *= n % 10
      n /= 10
    end
      n = a
      count += 1
  end
  count
end
