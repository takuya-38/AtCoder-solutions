# chars = gets.chomp.chars
# except_list = ["a", "i", "u", "e", "o"]
# output = []

# chars.each do |c|
#   output << c if !except_list.include?(c)
# end

# puts output.join

# chars = gets.chomp.chars
# except_list = ["a", "i", "u", "e", "o"]
# output = chars.select { |c| !except_list.include?(c) }
# puts output.join

input = gets.chomp
output = input.gsub(/[aiueo]/, "")
puts output
