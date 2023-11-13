# frozen_string_literal: true

N, Q = gets.chomp.split.map(&:to_i)
S = gets.chomp
s = S.chars
result = []

Q.times do
  count = 0
  i, j = gets.chomp.split.map(&:to_i)

  (i - 1).upto(j - 2) do |num|
    count += 1 if s[num] == s[num + 1]
  end
  result << count
end

puts result
