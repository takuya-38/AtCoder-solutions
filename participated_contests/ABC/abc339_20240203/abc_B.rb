H, W, N = gets.split.map(&:to_i)
grid = Array.new(H) { Array.new(W, ".") }
state = [1, 1]
direction = [0, 1]

N.times do |i|
  if grid[state[1] - 1][state[0] - 1] == "."
    grid[state[1] - 1][state[0] - 1] = "#"

    case direction
    when [0, 1]
      direction = [1, 0]
      state[0] += 1
      state[0] = 1 if state[0] > W
    when [1, 0]
      direction = [0, -1]
      state[1] += 1
      state[1] = 1 if state[1] > H
    when [0, -1]
      direction = [-1, 0]
      state[0] -= 1
      state[0] = W if state[0] == 0
    when [-1, 0]
      direction = [0, 1]
      state[1] -= 1
      state[1] = H if state[1] == 0
    end

  else
    grid[state[1] - 1][state[0] - 1] = "."

    case direction
    when [0, 1]
      direction = [-1, 0]
      state[0] -= 1
      state[0] = W if state[0] == 0
    when [1, 0]
      direction = [0, 1]
      state[1] -= 1
      state[1] = H if state[1] == 0
    when [0, -1]
      direction = [1, 0]
      state[0] += 1
      state[0] = 1 if state[0] > W
    when [-1, 0]
      direction = [0, -1]
      state[1] += 1
      state[1] = 1 if state[1] > H
    end

  end
end

grid.each do |row|
  puts row.join
end
