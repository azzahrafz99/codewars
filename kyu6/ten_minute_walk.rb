def isValidWalk(walk)
  walk.count('w') == walk.count('e') &&
  walk.count('n') == walk.count('s') &&
  walk.count == 10
end
