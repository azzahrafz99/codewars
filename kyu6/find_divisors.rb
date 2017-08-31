def divisors(n)
  max = n == 2 ? n : n -1
  a = (2..max).select{ |num| num if n % num == 0 }
  a.empty? ? "#{n} is prime" : a
end
