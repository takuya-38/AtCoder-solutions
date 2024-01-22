S = gets.chomp.chars
array_anc = ["A", "B", "C"]
tmp = ""
flag = true

S.each do |c|
  if c == tmp
    next
  else
    if array_anc.include?(c)
      array_anc = array_anc.slice((array_anc.find_index(c) + 1)..-1)
      tmp = c
    else
      flag = false
    end
  end
end

puts flag ? "Yes" : "No"


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
