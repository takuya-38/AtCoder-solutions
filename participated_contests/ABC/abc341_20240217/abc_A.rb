n = gets.to_i

output = []
(n * 2 + 1).times do |i|
  if i.odd?
    output << 0
  else
    output << 1
  end
end

puts output.join("")
