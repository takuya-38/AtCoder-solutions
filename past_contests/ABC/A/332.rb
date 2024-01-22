n, s, k = gets.chomp.split.map(&:to_i)
total = 0

n.times do
  p, q = gets.chomp.split.map(&:to_i)
  total += p * q
end

total += k if s > total
puts total
