def spinWords(string)
  arr = string.split(" ")
  if arr.length > 1
    arr = arr.map do |a|
      if a.length >= 5
        a.reverse
      else
        a
      end
    end
    arr.join(" ")
  else
    arr.join("").reverse
  end
end

# refactor
def spinWords(string)
  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join(" ")
end
