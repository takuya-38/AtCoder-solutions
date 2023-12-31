N = gets.to_i
list = []

N.times do
  a, b, c, d = gets.split.map(&:to_i)

  ((a + 1)..b).each do |i|
    ((c + 1)..d).each do |j|
      list << [i, j]
    end
  end
end

puts list.uniq.length
