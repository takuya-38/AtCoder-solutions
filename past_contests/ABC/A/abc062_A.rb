array = [[1, 3, 5, 7, 8, 10, 12], [4, 6, 9, 11], [2]]
a, b = gets.chop.split.map(&:to_i)
flag = false

array.each do |x|
  flag = true if x.include?(a) && x.include?(b)
end

puts flag ? "Yes" : "No"
