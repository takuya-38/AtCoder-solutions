H, W = gets.split.map(&:to_i)
matrix = Array.new(H) { gets.split.map(&:to_i) }
sum_matrix = matrix.reduce([Array.new(W + 1, 0)]) do |total_sum, row|
  total_sum << row.reduce([0]) do |sum, n|
    sum << sum.last + n
  end
end

cumulative_sum = []
sum_matrix.each_with_index do |row, i|
  if i == 0
    cumulative_sum << row
    next
  end

  tmp = []
  row.each_with_index do |n, j|
    tmp << cumulative_sum.last[j] + n
  end
  cumulative_sum << tmp
end

Q = gets.to_i
output = []

Q.times do
  A, B, C, D = gets.split.map(&:to_i)
  output << cumulative_sum[C][D] + cumulative_sum[A - 1][B - 1] - cumulative_sum[C][B - 1] - cumulative_sum[A - 1][D]
end

puts output
