def band_name_generator(name)
  if name.split(//).last == name.split(//).first
    first = name.split(//)
    remove = first.pop
    first.join.capitalize + name
  else
    name = "The #{name.capitalize}"
  end
end

# refactor

def band_name_generator(name)
  if name[0] == name[-1]
    name[0..-2].capitalize + name
  else
    "The #{name.capitalize}"
  end
end

# best practice

def band_name_generator(name)
  name[0] == name[-1] ? (name[0...-1] + name).capitalize : "The #{name.capitalize}"
end
