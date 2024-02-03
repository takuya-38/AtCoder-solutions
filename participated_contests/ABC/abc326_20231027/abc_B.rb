chars = gets.chomp.chars
hash = Hash.new(0)

chars.each do |c|
  hash[c] += 1
end

output_hash = hash.sort.reverse
p output_hash
output_hash = output_hash.sort_by { |_, v| v }.to_h
p output_hash
if output_hash.values[-1] == 1
  puts output_hash.keys[-1]
else
  puts output_hash.keys[-1]
end
