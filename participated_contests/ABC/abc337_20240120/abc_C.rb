N = gets.to_i
array = gets.split.map(&:to_i)
hash = {}
anc = []

N.times do |i|
  hash[array[i]] = i + 1
end

anc << hash[-1]
(N - 1).times do
  anc << hash[anc.last]
end

puts anc.join(" ")



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
