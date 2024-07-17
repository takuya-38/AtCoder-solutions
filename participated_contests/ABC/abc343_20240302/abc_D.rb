N, T = gets.split.map(&:to_i)
matrix = Array.new(T) { gets.split.map(&:to_i) }
count_list = Array.new(N, 0)
score_types = { 0 => N }

matrix.each do |a, b|
  old_score = count_list[a - 1]
  new_score = old_score + b
  count_list[a - 1] = new_score

  score_types[old_score] -= 1
  score_types.delete(old_score) if score_types[old_score] == 0

  score_types[new_score] = 0 unless score_types.key?(new_score)
  score_types[new_score] += 1

  puts score_types.length
  pp score_types
end
