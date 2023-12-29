N, X = gets.split.map(&:to_i)
score_list = gets.split.map(&:to_i).sort

(0..100).each do |i|
  copy = score_list.dup
  copy[N - 1] = i
  score = copy.sum - copy.min - copy.max

  if score >= X
    puts i
    exit
  end
end

puts "-1"
