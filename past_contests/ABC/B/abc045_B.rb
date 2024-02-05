# frozen_string_literal: true

# a, b, c = 3.times.map { gets.chomp }

# turn = 'a'

# while true
#   case turn
#   when 'a'
#     break if a.empty?
#     turn = a[0]
#     a = a[1..-1]
#   when 'b'
#     break if b.empty?
#     turn = b[0]
#     b = b[1..-1]
#   when 'c'
#     break if c.empty?
#     turn = c[0]
#     c = c[1..-1]
#   end
# end

# puts turn.upcase

a, b, c = 3.times.map { gets.chomp.chars }

turn = "a"

while true
  case turn
  when "a"
    break if a.empty?
    turn = a.shift
  when "b"
    break if b.empty?
    turn = b.shift
  when "c"
    break if c.empty?
    turn = c.shift
  end
end

puts turn.upcase
