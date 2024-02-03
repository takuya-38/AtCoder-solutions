n = gets.to_i
p_array = gets.split.map(&:to_i)

if 0 == p_array.index(p_array.max)
  if p_array.count(p_array.max) >= 2
    puts 1
  else
    puts 0
  end
else
  puts (p_array.max + 1 - p_array[0])
end
