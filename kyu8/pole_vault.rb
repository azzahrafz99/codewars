# 5

def starting_mark(height)
  a = (10.67 - 9.45) / (1.83 - 1.52)
  b = 10.67 - a * 1.83

  (height * a + b).round(2)
end
