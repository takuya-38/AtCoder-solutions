# frozen_string_literal: true

N, L, R = gets.chomp.split.map(&:to_i)
list = gets.chomp.split.map(&:to_i)
result = []

list.each do |x|
  if x <= L
    result << L
    next
  elsif x >= R
    result << R
    next
  else
    result << x
  end
end

print result.join(' ')
