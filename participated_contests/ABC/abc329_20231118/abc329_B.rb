# frozen_string_literal: true

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).uniq.sort

puts A[-2]
