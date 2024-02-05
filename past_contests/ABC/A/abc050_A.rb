# frozen_string_literal: true

s = gets.chomp.split

if s[1] == "+"
  puts s[0].to_i + s[2].to_i
else
  puts s[0].to_i - s[2].to_i
end

# puts eval(gets)
