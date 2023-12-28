N, M = gets.split.map(&:to_i)
A = Array.new(N) { gets.chomp }
B = Array.new(M) { gets.chomp }
result = false

N.times do |i|
  M.times do |j|
    # break if i + j == N || not(A[i + j].match?(/#{B[j]}/))
    break if i + j == N || not(A[i + j].include?(B[j]))
    result = true if j == M - 1
  end
end

puts result ? "Yes" : "No"
