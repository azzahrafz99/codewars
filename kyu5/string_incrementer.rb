def increment_string(input)
  if input[-1] == "0"
    input[-1] = "1"
    return input
  elsif input[-1].to_i == 0
    input + "1"
  else
    input.gsub(/(\d*)\Z/){ $1.succ }
  end
end

# best practice

def increment_string(input)
  input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
end
