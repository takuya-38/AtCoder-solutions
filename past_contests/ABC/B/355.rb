N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = (A + B).sort

flag = 0
C.each do |num|
  if A.include?(num)
    flag += 1
    break if flag == 2
  else
    flag = 0
  end
end

puts flag == 2 ? "Yes" : "No"
