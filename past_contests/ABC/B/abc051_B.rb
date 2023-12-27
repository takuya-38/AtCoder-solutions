k, s = gets.split.map(&:to_i)
count = 0
(0..k).each do |x|
  (0..k).each do |y|
    z = s - x - y
    if (z >= 0) && (z <= k)
      count += 1
    end
  end
end

puts count
