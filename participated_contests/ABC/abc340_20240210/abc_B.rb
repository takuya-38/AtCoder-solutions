Q = gets.to_i

output = []
Q.times do
  n, q = gets.split.map(&:to_i)

  if n == 1
    output << q
  else
    puts output[-q]
  end
end
