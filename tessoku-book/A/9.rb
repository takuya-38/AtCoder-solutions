H, W, N = gets.split.map(&:to_i)
matrix = Array.new(H + 1) { Array.new(W + 1, 0) }

N.times do
  A, B, C, D = gets.split.map(&:to_i)
  matrix[A - 1][B - 1] += 1
  matrix[A - 1][D] -= 1

  matrix[C][B - 1] -= 1
  matrix[C][D] += 1
end

(H + 1).times do |i|
  (1...W).each do |j|
    matrix[i][j] += matrix[i][j - 1]
  end
end

(1...H).each do |i|
  (W + 1).times do |j|
    matrix[i][j] += matrix[i - 1][j]
  end
end

H.times do |i|
  puts matrix[i][0...W].join(" ")
end
