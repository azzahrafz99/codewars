def digit_sum n
   n.to_s.split('').map(&:to_i).reduce(:+)
end
