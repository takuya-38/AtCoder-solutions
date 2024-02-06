n = gets.to_i
output = []

loop do
  output.unshift n % 2
  break if n == 1
  n = n / 2
end

while output.length < 10
  output.unshift 0
end

puts output.join

# n = gets.to_i

# binary_string = n.to_s(2).rjust(10, '0')
# puts binary_string
