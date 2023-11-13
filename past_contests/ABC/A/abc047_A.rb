# frozen_string_literal: true

candy_count = gets.chomp.split.map(&:to_i).sort

if candy_count[0] + candy_count[1] == candy_count[2]
  puts 'Yes'
else
  puts 'No'
end
