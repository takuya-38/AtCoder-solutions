# frozen_string_literal: true

stay_times = gets.to_i
change_price_time = gets.to_i
low_price = gets.to_i
high_price = gets.to_i

total_price = 0

1.upto(stay_times) do |count|
  if change_price_time >= count
    total_price += low_price
  else
    total_price += high_price
  end
end

puts total_price

#--------------------------------------------------
# n, k, x, y = 4.times.map{gets.to_i}
# p [n, k].min * x + [0, n - k].max * y
# #--------------------------------------------------
# n = gets.chomp.to_i
# k = gets.chomp.to_i
# x = gets.chomp.to_i
# y = gets.chomp.to_i
# if n <= k
#   puts n * x
# else
#   puts k * x + (n - k) * y
# end
