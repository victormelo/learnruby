def count_mines_near(x, y)
  ((x-1..x+1).entries * 3).sort.
    zip((y-1..y+1).entries * 3)
end

count_mines_near(2, 8)