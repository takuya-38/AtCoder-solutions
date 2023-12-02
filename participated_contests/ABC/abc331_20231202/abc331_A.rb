# frozen_string_literal: true

M, D = gets.chomp.split.map(&:to_i)
y, m, d = gets.chomp.split.map(&:to_i)

if d + 1 <= D
  puts "#{y} #{m} #{d + 1}"
elsif m + 1 <= M
  puts "#{y} #{m + 1} 1"
else
  puts "#{y + 1} 1 1"
end
