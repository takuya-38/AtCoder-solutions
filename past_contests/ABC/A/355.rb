A, B = gets.split.map(&:to_i)
array = [1, 2, 3]

array.delete(A)
array.delete(B)

puts array.length == 1 ? array[0] : -1
