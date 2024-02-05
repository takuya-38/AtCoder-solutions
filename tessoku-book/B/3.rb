n = gets.to_i
cost_list = gets.split.map(&:to_i)

found = cost_list.any? { |a|
  cost_list.any? { |b|
    cost_list.any? { |c|
  a + b + c == 1000
} } }

puts found ? "Yes" : "No"
