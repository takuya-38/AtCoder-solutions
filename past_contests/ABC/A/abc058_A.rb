# frozen_string_literal: true

array = gets.chomp.split.map(&:to_i)

puts (array[1] - array[0]) == (array[2] - array[1]) ? 'YES' : 'NO'
