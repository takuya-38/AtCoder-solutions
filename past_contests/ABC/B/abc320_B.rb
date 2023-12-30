S = gets.chomp
str = S.dup
max_length = 1

S.length.times do |i|
  str = S[i..]
  while str.length > max_length
    if str == str.reverse
      max_length = str.length if max_length < str.length
    end
    str = str[0..-2]
  end
end

puts max_length
