# frozen_string_literal: true

N, X = gets.chomp.split.map(&:to_i)
array = gets.chomp.split.map(&:to_i)
result = 0

array.each do |n|
  result += n if n <= X
end

puts result
