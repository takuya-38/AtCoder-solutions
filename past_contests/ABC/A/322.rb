_ = gets.to_i
s = gets.chomp

puts s.index("ABC") ? s.index("ABC") + 1 : -1
