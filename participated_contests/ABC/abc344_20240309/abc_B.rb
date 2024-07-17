array = []

loop do
  array << gets.to_i
  if array[-1] == 0
    break
  end
end

puts array.reverse
