n = gets.to_i

array = []
n.times do |i|
  array << gets.split
end

rate = array.map { |item| item[1].to_i }.sum
member = array.map { |item| item[0] }.sort

puts member[rate % n]

# n = gets.to_i

# array = Array.new(n) { gets.split }

# rate_sum = array.sum { |_, rate| rate.to_i }
# members = array.map(&:first).sort

# puts members[rate_sum % n]
