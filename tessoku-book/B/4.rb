i_chars = gets.chomp.chars.map(&:to_i)
output = 0

i_chars.length.times do |i|
  c = i_chars.pop
  output += 2**i if c == 1
end

puts output


# 別解
# i_chars = gets.chomp
# output = i_chars.to_i(2)

# puts output
