A, B, D = gets.split.map(&:to_i)
output = []

i = 0
total = A
loop do
  total = A + D * i
  output << total
  break if total == B
  i += 1
end

puts output.join(" ")
