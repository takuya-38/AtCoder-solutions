n = gets.to_i
anc = 0

i = 0
loop do
  anc += 2**i
  break if anc > n
  i += 1
end

puts i + 1
