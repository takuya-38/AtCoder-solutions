# frozen_string_literal: true

n, K = gets.split.map(&:to_i)

disliked_numbers = gets.split.map(&:to_s)

while disliked_numbers.any? { |disliked| n.to_s.include?(disliked) }
  n += 1
end

puts n
