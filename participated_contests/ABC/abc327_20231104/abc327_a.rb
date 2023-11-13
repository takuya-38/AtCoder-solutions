# frozen_string_literal: true

N, S = 2.times.map { gets.chomp }

result = S.include?('ab') || S.include?('ba')

puts result ? 'Yes' : 'No'
