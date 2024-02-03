n = gets.to_i
chars = gets.chomp.chars

n.times do |i|
  if chars[0..(i + 1)].uniq.length == 3
    puts i + 2
    break
  end
end
