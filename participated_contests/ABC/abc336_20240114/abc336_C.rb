n = gets.to_i
max = 0
result = 0
count = 0

(1..n).each do |i|
  if n > 5**i
    next
  else
    max = i - 1
    break
  end
end

max.downto(0) do |i|
  (1..n).each do |j|
    if n - count > 5**i * j
      next
    else
      result += 2 * 10**i * (j - 1)
      count += 5**i * (j - 1)
      break
    end
  end
end

puts result
