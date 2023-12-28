N, M = gets.split.map(&:to_i)
S = gets.chomp
T = gets.chomp

if T.match?(/^#{S}/o) && T.match?(/#{S}$/o)
  puts 0
elsif T.match?(/^#{S}/o)
  puts 1
elsif T.match?(/#{S}$/o)
  puts 2
else
  puts 3
end
