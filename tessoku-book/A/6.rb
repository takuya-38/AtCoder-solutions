N, Q = gets.split.map(&:to_i)

sum_count = 0
array = [0]
array.concat(gets.split.map { |a| sum_count += a.to_i })

list = []
Q.times do
  l, r = gets.split.map(&:to_i)
  list << array[r] - array[l - 1]
end

puts list

# 入力の受け取り
# N, Q = gets.split.map(&:to_i)

# # 累積和の計算
# input_array = [0] + gets.split.map(&:to_i)
# cumulative_sum = input_array.reduce([]) { |sums, n| sums << (sums.last || 0) + n }

# # クエリの処理
# Q.times do
#   l, r = gets.split.map(&:to_i)
#   puts cumulative_sum[r] - cumulative_sum[l - 1]
# end
