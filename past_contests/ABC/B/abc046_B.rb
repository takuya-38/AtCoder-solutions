# frozen_string_literal: true

N, K = gets.chomp.split.map(&:to_i)

result = K

(N - 1).times do
  result *= K - 1
end

puts result
