def title_case(title, minor_words='')
  if title.empty?
    title
  else
    words = title.downcase.split(" ")
    minor_words = minor_words.downcase.split(" ")
    words[0].capitalize!
    words.each do |w|
      if minor_words.include? w
        w.downcase
      else
        w.capitalize!
      end
    end
    words.join(" ")
  end
end

# Best Practice
def title_case(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end
