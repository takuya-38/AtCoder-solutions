n = gets.to_i
array = gets.split.map(&:to_i)
total = 0

array.each do |i|
  if total + i < 0
    total = 0
  else
    total = total + i
  end
end

puts total
