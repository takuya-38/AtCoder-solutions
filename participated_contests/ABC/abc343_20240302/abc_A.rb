a, b = gets.split.map(&:to_i)

0.upto(9) do |i|
  if a + b != i
    puts i
    break
  end
end
