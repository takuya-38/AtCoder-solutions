# frozen_string_literal: true

A, M, L, R = gets.chomp.split.map(&:to_i)
L -= A
R -= A
puts R / M - (L - 1) / M
