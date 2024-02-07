D = gets.to_i
N = gets.to_i

participant = Array.new(D + 1, 0)
N.times do
  l, r = gets.split.map(&:to_i)
  participant[l - 1] += 1
  participant[r] -= 1
end

list = [0] + participant.inject([]) { |sum, i| sum << (sum.last || 0) + i }

puts list[1..D]
