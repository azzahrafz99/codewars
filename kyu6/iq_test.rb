def iq_test(numbers)
  numbers = numbers.split(" ")
  numbers = numbers.map do |n|
    n.to_i.odd?
  end
  unique = numbers.select { |n| numbers.count(n) === 1 }
  index = unique.map { |u| numbers.index(u) }
  index.join("").to_i + 1
end

# best practice

def iq_test(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end
