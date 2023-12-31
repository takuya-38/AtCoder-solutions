M = gets.to_i
m_list = gets.split.map(&:to_i)
center = (m_list.sum + 1) / 2
tmp = 0

m_list.each_with_index do |days, i|
  if tmp + days < center
    tmp += days
  else
    puts "#{i + 1} #{center - tmp}"
    break
  end
end
