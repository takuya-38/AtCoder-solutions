N, X = gets.split.map(&:to_i)
a_list = gets.split.map(&:to_i)

puts a_list.include?(X) ? "Yes" : "No"
