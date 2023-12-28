N = gets.to_i
result = N

1.upto(N) do |i|
  if result % 2 == 0
    result = result / 2
  else
    break
  end
end

1.upto(N) do |i|
  if result % 3 == 0
    result = result / 3
  else
    break
  end
end

puts result == 1 ? "Yes" : "No"
