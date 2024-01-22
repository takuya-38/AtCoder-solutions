_, h, x = gets.split.map(&:to_i)
p_list = gets.split.map(&:to_i)

p_list.each_with_index do |p, i|
  if x <= h + p
    puts i + 1
    break
  end
end
