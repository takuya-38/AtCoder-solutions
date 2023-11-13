# frozen_string_literal: true

n, l = gets.split.map(&:to_i)

array = 1.upto(n).map { gets.chomp }

puts array.sort.join
