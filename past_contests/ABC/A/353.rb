n = gets.to_i
array = gets.split.map(&:to_i)

first_high = array[0]
anc = nil
array.each_with_index do |num, i|
  next if i == 0
  if first_high < num
    anc = i
    break
  end
end

puts anc.nil? ? -1 : anc + 1
