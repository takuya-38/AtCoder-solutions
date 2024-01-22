sum = gets.split.map(&:to_i).sum
puts sum >= 10 ? "error" : sum
