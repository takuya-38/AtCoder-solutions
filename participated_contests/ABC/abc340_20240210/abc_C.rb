n = gets.to_i
first_cost = n

i = 0
loop do
  break if n <= 3
  i += 1
  n = n / 2
end

puts first_cost * (i + 1) + (first_cost - 2 * 2**i) * 2
