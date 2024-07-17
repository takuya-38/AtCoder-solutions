n = gets.to_i
a = gets.split.map(&:to_i)
count = 0

array = []

(n * 2).times do |i|
  array << a[i]
  array.shift if array.length == 4

  count += 1 if array[0] == array[2] && array[0] != array[1]
end

puts count
