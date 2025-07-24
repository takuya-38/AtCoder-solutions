N = gets.to_i
array = gets.split.map(&:to_i)
X = gets.to_i

puts array.include?(X) ? "Yes" : "No"
