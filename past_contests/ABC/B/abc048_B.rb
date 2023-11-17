# frozen_string_literal: true

a, b, x = gets.chomp.split.map(&:to_i)

if a % x == 0
  puts (b / x) - (a / x) + 1
else
  puts (b / x) - (a / x)
end
