A, B = gets.split.map(&:to_i)
flag = false

A.upto(B) do |i|
  if 100 % i == 0
    flag = true
    break
  end
end

puts flag ? "Yes" : "No"
