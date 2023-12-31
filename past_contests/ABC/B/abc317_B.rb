N = gets.to_i
num_list = gets.split.map(&:to_i).sort

N.times do |i|
  next if i == 0
  if num_list[i] - num_list[i - 1] == 2
    puts num_list[i] - 1
    break
  end
end
