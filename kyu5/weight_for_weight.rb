def order_weight(strng)
  s = strng.split(" ")
  sum = s.map do |s|
    s.split("").map { |s| s.to_i }.inject(:+)
  end
  s = s.map { |s| s.to_i }
  zipped = s.zip(sum).sort_by { |k, v| v }
  zipped = zipped.each do |z|
    z.pop
  end
  zipped.join(" ")
end