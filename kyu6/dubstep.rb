def song_decoder(song)
  song = song.split(/WUB/).reject { |c| c.empty? }.join(" ")
end
