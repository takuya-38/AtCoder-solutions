_, p, q = gets.split.map(&:to_i)
d_list = gets.split.map(&:to_i)

puts d_list.min + q > p ? p : d_list.min + q
