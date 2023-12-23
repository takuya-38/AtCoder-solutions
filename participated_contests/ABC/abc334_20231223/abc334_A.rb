# frozen_string_literal: true

B, G = gets.chomp.split.map(&:to_i)

puts B > G ?  'Bat' : 'Glove'
