_ = gets.to_i
n_list = gets.split.map(&:to_i)

puts n_list.uniq.length == 1 ? "Yes" : "No"
