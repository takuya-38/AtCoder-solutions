# frozen_string_literal: true

# D = gets.chomp.to_i
# list = []

# 1.upto(D) do |i|
#   if i**2 < D
#     list << i**2
#   else
#     break
#   end
# end

# print (list.min(2) { |a, b| (a + b) <=> D })

# list.each do |i|
#   list.each do |j|
#     (i + j - D).abs
#   end
# end

D = gets.to_i

def find_min_diff
  left = 0
  right = Math.sqrt(D).to_i
  min_diff = D  # D から 0^2 + 0^2 を引いた値で初期化

  while left <= right
    x = (left + right) / 2
    y = Math.sqrt(D - x * x).to_i
    diff = (x * x + y * y - D).abs

    min_diff = [min_diff, diff].min

    if x * x + y * y < D
      left = x + 1
    else
      right = x - 1
    end
  end

  min_diff
end

puts find_min_diff(D)
