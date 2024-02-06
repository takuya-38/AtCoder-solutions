N, K = gets.split.map(&:to_i)
count = 0

1.upto(N) do |i|
  1.upto(N) do |j|
    1.upto(N) do |x|
      count += 1 if i + j + x == K
    end
  end
end

puts count
pute "test"
