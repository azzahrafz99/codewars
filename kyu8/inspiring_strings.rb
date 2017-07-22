#  6

def longest_word(string_of_words)
  string_of_words.split(" ").sort_by!(&:length).last
end
