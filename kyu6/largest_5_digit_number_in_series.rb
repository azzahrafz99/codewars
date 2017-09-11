def solution(digits)
  if digits.length <= 5
    digits.to_i
  else
    arr = digits.split("")
    i = digits.rindex(arr.max) - 2
    arr.shift(i)
    arr.join.scan(/.{5}/).join.to_i
  end
end
