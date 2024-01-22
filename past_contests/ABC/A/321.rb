i_chars = gets.chomp.chars.map(&:to_i)
flag = true
tmp = 10

i_chars.each do |n|
  flag = false if tmp <= n
  tmp = n
end

puts flag ? "Yes" : "No"
