matrix = [[1,2,3],[4,5,6],[7,8,9]]
a, b = gets.split.map(&:to_i)
flag = false

matrix.each do |array|
  if array.include?(a) && array.include?(b)
    flag = true
  end
end

puts flag ? "Yes" : "No"

a, b = gets.split.map(&:to_i)
puts (a - 1) / 3 == (b - 1) / 3 ? "Yes" : "No"
