n, m, p = gets.split.map(&:to_i)

if n - m < 0
  puts 0
else
  puts ((n - m) / p).floor(0) + 1
end
