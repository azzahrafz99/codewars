# 3

def ensure_question(s)
  if s.include?"?"
    s
  else
    s = "#{ s }?"
  end
end

# Clever Solution

def ensure_question(s)
  s.chomp("?") + "?"
end
