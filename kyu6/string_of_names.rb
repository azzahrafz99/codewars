def list names
  arr = names.map do |item|
    item[:name]
  end.flatten
  arr.nil? ? '' : arr.reject(&:empty?).join(', ').gsub(/, (\w+)$/) { " & #{$1}" }
end
