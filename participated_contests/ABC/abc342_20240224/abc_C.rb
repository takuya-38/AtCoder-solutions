n = gets.to_i
s = gets.chomp

q_count = gets.to_i

q_array = []

q_count.times do
  tmp = gets.split
  if tmp[0] != tmp[1]
    q_array << tmp
  end
end

az_array = ('a'..'z').to_a
replace_map = {}
az_array.each { |c| replace_map[c] = c }

q_array.each do |q|
  az_array.each do |c|
    replace_map[c] = q[1] if replace_map[c] == q[0]
  end
end

# ここで文字列 s に対して置換を実行します。
result = s.chars.map { |c| replace_map[c] }.join

puts result

# アルファベットの置き換え問題は、a-zの辞書を作るべし
