# frozen_string_literal: true

N, L = gets.chomp.split.map(&:to_i)
point_list = gets.chomp.split.map(&:to_i)

result = 0
point_list.each do |point|
  result += 1 if point >= L
end

puts result
