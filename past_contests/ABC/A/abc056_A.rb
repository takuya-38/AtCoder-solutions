# frozen_string_literal: true

a, b = gets.chomp.split

puts ((a == "H" && b == "H") || (a == "D" && b == "D")) ? "H" : "D"
