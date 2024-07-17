n = gets.to_i
p_array = gets.split.map(&:to_i)
q = gets.to_i

q.times do
  a, b = gets.split.map(&:to_i)

  if p_array.index(a) < p_array.index(b)
    puts a
  else
    puts b
  end
end
