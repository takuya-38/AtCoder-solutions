# frozen_string_literal: true

N = gets.chomp.to_i
array = gets.chomp.split
result = 0

1.upto(N) do |i|
  1.upto(array[i - 1].to_i) do |j|
    result += 1 if (i.to_s + j.to_s).chars.uniq.length == 1
  end
end

puts result
