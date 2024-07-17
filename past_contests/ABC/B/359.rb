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

# n = gets.chomp.to_i
# a = gets.chomp.split(" ").map { |a| a.to_i }
# count = 0
# for i in 0..(a.length - 3) do
#   if a[i] == a[i + 2]
#     count += 1
#   end
# end
# puts count.to_s
