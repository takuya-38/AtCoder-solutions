# frozen_string_literal: true

n, s, m, l = gets.chomp.split.map(&:to_i)

dp = Array.new(n + 12, Float::INFINITY)
dp[0] = 0

(0..n + 11).each do |i|
  dp[i + 6] = [dp[i + 6], dp[i] + s].min if i + 6 <= n + 11
  dp[i + 8] = [dp[i + 8], dp[i] + m].min if i + 8 <= n + 11
  dp[i + 12] = [dp[i + 12], dp[i] + l].min if i + 12 <= n + 11
end

puts dp[n..n + 11].min
