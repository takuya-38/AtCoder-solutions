N = gets.to_i
result = []
list = []

(1..9).each do |i|
  list << i if N % i == 0
end

(0..12).each do |i|
  list.each do |j|
    if i % (N / j) == 0
      result << j
      break
    end
  end
  result << "-" if result.length != i + 1
end

puts result.join("")
