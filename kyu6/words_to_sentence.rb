def format_words(words)
  if words == nil
    words = ""
  else
    words.delete("")
    if words.length > 1
      words[-1] = " and " + words[-1]
      if words[-2].empty?
        words.join("")
      else
        words[-2] = words[-2] + words [-1]
        words.pop
        words.join(", ")
      end
    else
      words.join("")
    end
  end
end

# best practice
def format_words(words)
  words.nil? ? '' : words.reject(&:empty?).join(', ').gsub(/, (\w+)$/) { " and #{$1}" }
end
