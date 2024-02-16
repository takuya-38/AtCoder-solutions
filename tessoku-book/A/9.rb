H, W, N = gets.split.map(&:to_i)
matrix = Array.new(H) { Array.new(W, 0) }

N.times do
  A, B, C, D = gets.split.map(&:to_i)
  matrix[A - 1][B - 1] += 1
  matrix[A - 1][D] -= 1

  matrix[C][B - 1] -= 1
  matrix[C][D] += 1
end

H.times do |i|
  W.times do |j|
    matrix[i][j] += matrix[i][j - 1] if j != 0
  end
end

W.times do |j|
  H.times do |i|
    matrix[i][j] += matrix[i - 1][j] if i != 0
  end
end

H.times do |i|
  puts matrix[i].join(" ")
end
