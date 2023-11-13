# frozen_string_literal: true

A, B = gets.chomp.split.map(&:to_i)

if A == B
  puts 'Draw'
elsif (A > B && B != 1) || A == 1
  puts 'Alice'
else
  puts 'Bob'
end
