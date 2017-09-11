def digital_root(n)
  a = 0
  while a < n.to_s.length
    n = sum(n)
    a += 1
  end
  n
end

private

def sum(n)
  s = n.to_s
  l = s.length
  s.split("").map { |s| s.to_i }.inject(:+)
end

# Clever

def digital_root(n)
  n < 10 ? n : digital_root(n / 10 + n % 10)
end
