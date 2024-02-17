# n = gets.to_i
# array = gets.split.map(&:to_i)
# matrix = Array.new(n - 1) { gets.split.map(&:to_i) }

# i = n - 2
# loop do
#   break if i < 0

#   if array[i] >= matrix[i][0]
#     array[i + 1] += matrix[i][1]
#     array[i] -= matrix[i][0]
#     i = n - 2
#   else
#     i -= 1
#   end
# end

# puts array.last

n = gets.to_i
array = gets.split.map(&:to_i)
matrix = Array.new(n - 1) { gets.split.map(&:to_i) }

matrix.each_with_index do |cost_list, i|
  if array[i] >= cost_list[0]
    count = array[i] / cost_list[0]
    array[i + 1] += cost_list[1] * count
    array[i] -= cost_list[0] * count
  end
end

puts array.last

# 繰り返すのではなく、割ることで回数を求めてまとめて計算すべし
