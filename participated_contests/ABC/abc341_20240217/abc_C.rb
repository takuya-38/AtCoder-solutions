H, W, N = gets.split.map(&:to_i)
T = gets.chomp.chars
matrix = Array.new(H) { gets.chomp.chars }

count = 0
(1...H).each do |i|
  (1...W).each do |j|
    next if matrix[i][j] == "#"
    now = [i, j]
    T.each_with_index do |s, index|
      break if now[0] == 0 || now[1] == 0 || now[0] == (H - 1) || now[1] == (W - 1)
      case s
      when "L"
        break if matrix[now[0]][now[1] - 1] == "#"
        now = [i, j - 1]
      when "R"
        break if matrix[now[0]][now[1] + 1] == "#"
        now = [i, j + 1]
      when "U"
        break if matrix[now[0] - 1][now[1]] == "#"
        now = [i - 1, j]
      when "D"
        break if matrix[now[0] + 1][now[1]] == "#"
        now = [i + 1, j]
      end

      count += 1 if index == N - 1
      if index == N - 1
        p [i, j]
      end
    end
  end
end

puts count

# 未完です。
