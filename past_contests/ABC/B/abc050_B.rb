N = gets.to_i
points = gets.split.map(&:to_i)
M = gets.to_i
arr = Array.new(M) { gets.split.map(&:to_i) }

M.times do |i|
  c_points = points.dup
  c_points[arr[i][0] - 1] = arr[i][1]
  puts c_points.sum
end
