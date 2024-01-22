N = gets.to_i
count_a = 0
count_b = 0

N.times do
  a, b = gets.split.map(&:to_i)
  count_a += a
  count_b += b
end

if count_a > count_b
  puts "Takahashi"
elsif count_b > count_a
  puts "Aoki"
else
  puts "Draw"
end







# ----------------------------------------------------------
# p gets.chomp  # => "1"
# p gets.to_i   # => 1
# p gets.to_f   # => 1.0

# p gets.split              # => ["1", "2", "3"]
# p gets.split.map(&:to_i)  # => [1, 2, 3]

# p gets.scan(/./) # => ["R”, "u", "b", "y", "R", "u", "b", "y"]
# p gets.scan(/../) # => ["Ru", "by", "Ru", "by"]
# p gets.scan("R") # => ["R", "R"]
# p gets.scan(/Ru./) # => ["Rub", "Rub]

# H, W = gets.split.map(&:to_i)
# p Array.new(H) {gets.split.map(&:to_i)}
# # => [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]
