# frozen_string_literal: true

B = gets.chomp.to_i

1.upto(B) do |n|
  if n.pow(n) > B
    puts '-1'
    break
  elsif n.pow(n) == B
    puts n
    break
  end
end
