N, X, Y, Z = gets.split.map(&:to_i)

puts ((X..Y).include?(Z) || (Y..X).include?(Z)) ? "Yes" : "No"
