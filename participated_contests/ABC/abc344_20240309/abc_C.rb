N = gets.to_i
a_list = gets.split.map(&:to_i)

M = gets.to_i
b_list = gets.split.map(&:to_i)

L = gets.to_i
c_list = gets.split.map(&:to_i)

Q = gets.to_i
x_list = gets.split.map(&:to_i)

ans = Hash.new([])
a_list.each do |a|
  b_list.each do |b|
    c_list.each do |c|
      ans[a + b + c] = 1
    end
  end
end

x_list.each do |x|
  if ans[x] == 1
    puts "Yes"
  else
    puts "No"
  end
end
