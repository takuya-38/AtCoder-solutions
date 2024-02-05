# frozen_string_literal: true

s = gets.chomp.chars
result = []

s.each do |c|
  case c
  when "0", "1"
    result << c
  when "B"
    next if result.length == 0
    result.pop
  end
end

puts result.join
