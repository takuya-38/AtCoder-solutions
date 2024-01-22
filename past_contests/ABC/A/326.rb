x, y = gets.split.map(&:to_i)
flag = true
(x - y).abs

if x < y
  flag = false if y - x > 2
else
  flag = false if x - y > 3
end

puts flag ? "Yes" : "No"
