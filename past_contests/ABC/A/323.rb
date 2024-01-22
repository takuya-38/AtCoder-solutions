i_chars = gets.chomp.chars.map(&:to_i)
flag = true

i_chars.each_with_index do |n, i|
  if (i + 1).even?
    flag = false if n == 1
  end
end

puts flag ? "Yes" : "No"
