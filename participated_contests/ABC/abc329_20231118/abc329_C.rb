# frozen_string_literal: true

N = gets.chomp.to_i
S = gets.chomp

result = Hash.new(0)
count = 0

N.times do |i|
  if i == 0
    count = 1
    next
  end

  if S[i - 1] == S[i]
    count += 1
    next
  else
    result[S[i - 1]] = count if result[S[i - 1]] < count
    count = 1
  end
end

result[S[-1]] = count if result[S[-1]] < count
puts result.values.inject(:+)
