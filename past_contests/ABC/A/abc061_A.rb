# frozen_string_literal: true

a, b, c = gets.chomp.split.map(&:to_i)

puts ((a <= c) && (c <= b)) ? "Yes" : "No"
