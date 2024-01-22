N, M = gets.split.map(&:to_i)
ranking = *(1..N)

M.times do
  _, b = gets.split.map(&:to_i)
  ranking.delete(b)
end

puts ranking.length == 1 ? ranking[0] : -1
