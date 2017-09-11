def fire_and_fury(tweet)
  words = tweet.scan(/(FIRE|FURY)/).flatten
  if words.empty? || tweet.match(/[^EFIRUY]/)
    return "Fake tweet."
  end
  sentences = []
  last = words[0]
  count = 1
  words.drop(1).each do |word|
    if word == last
      count += 1
    else
      sentences << meaning(last, count - 1)
      last = word
      count = 1
    end
  end
  sentences << meaning(last, count - 1)
  sentences.join(' ')
end

private

def meaning(last, count)
  if last == 'FIRE'
    'You ' + 'and you ' * count + 'are fired!'
  else
    'I am ' + 'really ' * count + 'furious.'
  end
end
