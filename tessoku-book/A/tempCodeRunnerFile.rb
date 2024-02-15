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
  # output << cumulative_sum[C][D] - cumulative_sum[A][B]
end

p cumulative_sum
puts output