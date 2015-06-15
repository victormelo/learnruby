def count_mines_near(x, y)
  count = 0
  for i in x-1..x+1
    for j in y-1..y+1
      count += 1 if mine_at?(i, j)
    end
  end
  count
end

def verdade?
  r = rand 10
  return r.odd?
end

p verdade?