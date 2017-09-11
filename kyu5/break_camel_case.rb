def solution(string)
  string = string.split /(?=[A-Z])/
  string.join(" ")
end

# best practice
def solution(string)
  string.gsub /([A-Z])/, ' \1'
end
