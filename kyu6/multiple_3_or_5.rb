def solution(number)
  arr = (1...number).select { |num|  num % 3 == 0  || num % 5 == 0 }
  arr.inject(0){ |sum, x| sum + x}
end

# best practice
def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end
