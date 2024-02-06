N, K = gets.split.map(&:to_i)
count = 0

1.upto(N) do |i|
  1.upto(N) do |j|
    count += 1 if (K - (i + j)) <= N && (K - (i + j)) > 0
  end
end

puts count
