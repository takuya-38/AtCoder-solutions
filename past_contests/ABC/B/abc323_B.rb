N = gets.to_i
hash = {}

(1..N).each do |i|
  hash[i] = gets.chomp.scan(/o/).length
end

puts hash.sort { |(_, v1), (_, v2)| v2 <=> v1 }.to_h.keys.join(" ")
