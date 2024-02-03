# array = gets.split.map(&:to_i)
# flag = true

# if array.max <= 675 && array.min >= 100
#   array.each_cons(2) do |i|
#     flag = false if i[0] > i[1] || i[0] % 25 != 0 || i[1] % 25 != 0
#   end
# else
#   flag = false
# end

# puts flag ? "Yes" : "No"

S = gets.chomp.split.map(&:to_i)

puts S.each_cons(2).all?
