# frozen_string_literal: true

x_end, y_end, N = gets.chomp.split.map(&:to_i)
x_start = 0
y_start = 0

array = []
N.times { array << gets.chomp.split.map(&:to_i) }

array.each do |x, y, a|
  case a
  when 1
    x_start = x if x_start < x
  when 2
    x_end = x if x_end > x
  when 3
    y_start = y if y_start < y
  when 4
    y_end = y if y_end > y
  end
end

if (x_end - x_start).positive? && (y_end - y_start).positive?
  puts (x_end - x_start) * (y_end - y_start)
else
  puts 0
end
