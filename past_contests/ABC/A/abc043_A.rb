# frozen_string_literal: true

num = gets.to_i
total = 0

1.upto(num) do |n|
  total += n
end

puts total

# -----------------------------------------------

# num1 = gets.to_i
# array = 1.upto(num1).map { |n| n }
# puts array.sum

# -----------------------------------------------

# num2 = gets.to_i
# puts (1..num2).to_a.sum

# -----------------------------------------------

# a = gets.to_i
# x = (1..a).inject(&:+)
# puts x
