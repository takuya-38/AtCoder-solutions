# frozen_string_litral: ture

A, B, C, D = gets.chomp.split.map(&:to_i)
puts A * B > C * D ? A * B : C * D
